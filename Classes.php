<?php
declare(strict_types = 1);
//https://codeshack.io/super-fast-php-mysql-database-class/

class db {
	
	// 	How To Use

	// Connect to MySQL database:
	// include 'db.php';

	// $dbhost = 'localhost';
	// $dbuser = 'root';
	// $dbpass = '';
	// $dbname = 'example';

	// $db = new db($dbhost, $dbuser, $dbpass, $dbname);

	// Fetch a record from a database:
	// $account = $db->query('SELECT * FROM accounts WHERE username = ? AND password = ?', 'test', 'test')->fetchArray();
	// echo $account['name'];
	// Or you could do:

	// $account = $db->query('SELECT * FROM accounts WHERE username = ? AND password = ?', array('test', 'test'))->fetchArray();
	// echo $account['name'];

	// Fetch multiple records from a database:
	// $accounts = $db->query('SELECT * FROM accounts')->fetchAll();

	// foreach ($accounts as $account) {
	// 	echo $account['name'] . '<br>';
	// }
	// You can specify a callback if you do not want the results being stored in an array (useful for large amounts of data):

	// $db->query('SELECT * FROM accounts')->fetchAll(function($account) {
	//     echo $account['name'];
	// });
	// If you need to break the loop you can add:

	// return 'break'; 
	// Get the number of rows:
	// $accounts = $db->query('SELECT * FROM accounts');
	// echo $accounts->numRows();

	// Get the affected number of rows:
	// $insert = $db->query('INSERT INTO accounts (username,password,email,name) VALUES (?,?,?,?)', 'test', 'test', 'test@gmail.com', 'Test');
	// echo $insert->affectedRows();

	// Get the total number of queries:
	// echo $db->query_count;

	// Get the last insert ID:
	// echo $db->lastInsertID();

	// Close the database:
	// $db->close();

    protected $connection;
	protected $query;
    protected $show_errors = TRUE;
    protected $query_closed = TRUE;
	public $query_count = 0;
	private $dbhost = 'localhost';
	private $dbuser = 'root';
	private $dbpass = '';
	private $dbname = 'bulk_mail';
	private $charset = 'utf8';

	public function __construct() {
		$this->connection = new mysqli($this->dbhost, $this->dbuser, $this->dbpass, $this->dbname);
		if ($this->connection->connect_error) {
			$this->error('Failed to connect to MySQL - ' . $this->connection->connect_error);
		}
		$this->connection->set_charset($this->charset);
	}

    public function query($query) {
        if (!$this->query_closed) {
            $this->query->close();
        }
		if ($this->query = $this->connection->prepare($query)) {
            if (func_num_args() > 1) {
                $x = func_get_args();
                $args = array_slice($x, 1);
				$types = '';
                $args_ref = array();
                foreach ($args as $k => &$arg) {
					if (is_array($args[$k])) {
						foreach ($args[$k] as $j => &$a) {
							$types .= $this->_gettype($args[$k][$j]);
							$args_ref[] = &$a;
						}
					} else {
	                	$types .= $this->_gettype($args[$k]);
	                    $args_ref[] = &$arg;
					}
                }
				array_unshift($args_ref, $types);
                call_user_func_array(array($this->query, 'bind_param'), $args_ref);
            }
            $this->query->execute();
           	if ($this->query->errno) {
				$this->error('Unable to process MySQL query (check your params) - ' . $this->query->error);
           	}
            $this->query_closed = FALSE;
			$this->query_count++;
        } else {
            $this->error('Unable to prepare MySQL statement (check your syntax) - ' . $this->connection->error);
        }
		return $this;
    }


	public function fetchAll($callback = null) {
	    $params = array();
        $row = array();
	    $meta = $this->query->result_metadata();
	    while ($field = $meta->fetch_field()) {
	        $params[] = &$row[$field->name];
	    }
	    call_user_func_array(array($this->query, 'bind_result'), $params);
        $result = array();
        while ($this->query->fetch()) {
            $r = array();
            foreach ($row as $key => $val) {
                $r[$key] = $val;
            }
            if ($callback != null && is_callable($callback)) {
                $value = call_user_func($callback, $r);
                if ($value == 'break') break;
            } else {
                $result[] = $r;
            }
        }
        $this->query->close();
        $this->query_closed = TRUE;
		return $result;
	}

	public function fetchArray() {
	    $params = array();
        $row = array();
	    $meta = $this->query->result_metadata();
	    while ($field = $meta->fetch_field()) {
	        $params[] = &$row[$field->name];
	    }
	    call_user_func_array(array($this->query, 'bind_result'), $params);
        $result = array();
		while ($this->query->fetch()) {
			foreach ($row as $key => $val) {
				$result[$key] = $val;
			}
		}
        $this->query->close();
        $this->query_closed = TRUE;
		return $result;
	}

	public function close() {
		return $this->connection->close();
	}

    public function numRows() {
		$this->query->store_result();
		return $this->query->num_rows;
	}

	public function affectedRows() {
		return $this->query->affected_rows;
	}

    public function lastInsertID() {
    	return $this->connection->insert_id;
    }

    public function error($error) {
        if ($this->show_errors) {
            exit($error);
        }
    }

	private function _gettype($var) {
	    if (is_string($var)) return 's';
	    if (is_float($var)) return 'd';
	    if (is_int($var)) return 'i';
	    return 'b';
	}

	public function IsExist($TableName, $ColumnName, $Var) :int {
		$Result = $this->query("SELECT COUNT($ColumnName) AS total FROM $TableName WHERE $ColumnName = ?",$Var)->fetchArray();
		return $Result['total'];
	}

}

class _server{

	public function BaseUrl() :string {
		return sprintf(
		  "%s://%s",
		  isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off' ? 'https' : 'http',
		  $_SERVER['SERVER_NAME'] == 'localhost' ? $_SERVER['SERVER_NAME'].'/send-bulk-mail' : $_SERVER['SERVER_NAME']
		);
	}

	public function Url(){
		return sprintf(
		  "%s://%s%s",
		  isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off' ? 'https' : 'http',
		  $_SERVER['SERVER_NAME'],
		  $_SERVER['REQUEST_URI']
		);
	}

	public function IsLocalhost(){
		return ($_SERVER['SERVER_NAME'] == 'localhost') ? true : false;
	}

}

class _string {

	public function cleanString(int $string) :string {
	   $string = str_replace(' ', '-', $string);
	   $string = preg_replace('/[^A-Za-z0-9\-]/', '', $string);
	   return preg_replace('/-+/', '-', $string);
	}

}

class _seo extends _server {

	public function GenrateBreadCrum(array $Data, string $Sep = '›') :string {

		$Output = '
			<div class="breadcrum mb-4" vocab="https://schema.org/" typeof="BreadcrumbList">
		        <span class="badge bg-primary text-white shadow-sm" property="itemListElement" typeof="ListItem">
		          <meta property="position" content="1">
		          <a href="'.$this->BaseUrl().'" property="item" typeof="WebPage" class="text-reset">
		          <span property="name">Home</span>
		          </a>
		        </span> ';
		        $Cnt = 2;
		        foreach ($Data as $key => $value) {
		        	if(!next($Data)){
		        		$Output .= ' '.$Sep.' <span class="badge bg-primary text-white shadow-sm" property="itemListElement" typeof="ListItem">
				          <span property="name" class="text-wrap">'.$value.'</span>
				          <meta property="position" content="'.$Cnt.'">
				        </span>';
		        	} else{
		        		$Output .= ' '.$Sep.' <span class="badge bg-primary text-white shadow-sm" property="itemListElement" typeof="ListItem">
				          <a href="'.$key.'" property="item" typeof="WebPage" class="text-reset">
				          <span property="name">'.$value.'</span>
				          </a>
				          <meta property="position" content="'.$Cnt.'">
				        </span>';
		        	}
		        	$Cnt++;
		        }
			$Output .= '</div>';
	    return $Output;
	}

}

class _mixed extends _server {

	public function TableOfContents(int $depth, string $content) :string {
	 
		//get the headings down to the specified depth
		$pattern = '/<h[2-'.$depth.']*[^>]*>.*?<\/h[2-'.$depth.']>/';
		$whocares = preg_match_all($pattern,$content,$winners);
	 
		//reformat the results to be more usable
		$heads = implode("\n",$winners[0]);
		$heads = str_replace('<a id="','<a href="'.$this->Url().'#',$heads);
		$heads = str_replace('</a>','',$heads);
		$heads = preg_replace('/<h([1-'.$depth.'])>/','<li class="toc$1">',$heads);
		$heads = preg_replace('/<\/h[1-'.$depth.']>/','</a></li>',$heads);
	 
		//plug the results into appropriate HTML tags
		$contents = '<div id="toc"> 
		<p id="toc-header">Table of Contents</p>
		<ul>
		'.$heads.'
		</ul>
		</div>';
		return $contents;
	}

}

?>