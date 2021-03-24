<?php

	use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\SMTP;
	use PHPMailer\PHPMailer\Exception;

	require_once 'Classes.php';

	/**
	 * Handle the all email method
	 */
	class _email extends db
	{
		
		function __construct()
		{
			parent::__construct();
		}

		public function Test() : array{
			return array('Res'=>1, 'Msg'=>"Test Message");
		}

		public function InsertEmail10(array $Data) : int{
			$_a = '';
			for ($i=0; $i < count($Data); $i++) { 
				$_a .= '(?)';
				if(!($i == count($Data)-1)){
					$_a .= ',';
				}
			}
			// echo "INSERT INTO `emails`(`email`, `status`) VALUES $_a ";
			$Res = $this->query("INSERT INTO `emails`(`email`) VALUES $_a ",$Data);
			return $Res->affectedRows();
		}

		public function NotEmailsData() : array {
			return $this->query("SELECT DISTINCT email, id FROM emails WHERE status = 0")->fetchAll();
		}

		public function UpdateEmailsStatus(array $Id, int $SValue) {
			$ID = implode(',', $Id);
			return $this->query("UPDATE emails SET status = $SValue WHERE id IN ($ID)");
		}

		public function SendMail($Email,$Msg,$Sub) {
			require_once 'vendor/autoload.php';
			$mail = new PHPMailer(true);

		    try {
		        //Server settings
		        $mail->SMTPDebug = 0;                      // Enable verbose debug output
		        $mail->isSMTP();                                            // Send using SMTP
		        $mail->Host       = 'mail.ashuji.com';                    // Set the SMTP server to send through
		        $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
		        $mail->Username   = 'info@ashuji.com';                     // SMTP username
		        $mail->Password   = '%0FCfap{1AS!';                               // SMTP password
		        $mail->SMTPSecure = 'tls';         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
		        $mail->Port       = 587;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

		        //Recipients
		        $mail->setFrom('info@ashuji.com', 'ashuji');
		        $mail->addAddress($Email);     // Add a recipient
		        // $mail->addAddress('ellen@example.com');               // Name is optional
		        // $mail->addReplyTo('info@example.com', 'Information');
		        // $mail->addCC('cc@example.com');
		        // $mail->addBCC('bcc@example.com');

		        // Attachments
		        // $mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
		        // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name

		        // Content

		        $mail->isHTML(true);                                  // Set email format to HTML
		        $Body = $Msg;
		        $mail->Subject = $Sub;
		        $mail->Body    = $Body;
		        $mail->AltBody = strip_tags($Body);

		        $mail->send();
		        return 1;
		    } catch (Exception $e) {
		        return 0;
		    }
		}
	}

	// $a = new _email;
	// print_r($a->InsertEmail10(array(1,5,4,7,8,9,1,4,4)));
	// print_r($a->EMailsData());

?>