<?php
	
	require_once 'mail-class.php';
	$MailClass = new _email;
	set_time_limit ( 0 );

	try{
		if(!isset($_GET['type']) && empty($_GET['type'])){
			throw new Exception("Type is not set");
		}

		$Type = $_GET['type'];

		switch ($Type) {
			case 'SaveEmails':
				// $Data = $MailClass->Test();
				if(!empty($_FILES['FileName']['name'])){
					$FileData = fopen($_FILES['FileName']['tmp_name'], 'r');
					$TotalRow = count(file($_FILES['FileName']['tmp_name'], FILE_SKIP_EMPTY_LINES));
					$InsertedEmailIds = 0;
					for($i = 0; $i < $TotalRow; $i = $i+10){
						for ($j=$i; $j < $i+10; $j++) {
							$Row = fgetcsv($FileData);
							if(empty($Row[0]) || $Row[0] == '') continue;
							$RowData[] = $Row[0] ;
						}
						$InsertedEmailIds += $MailClass->InsertEmail10($RowData);
						unset($RowData);
					}
					$Data = array(
						'Res'	  => 1,
						'Msg'	  => 'Successfully Added to Database',
						'TotalDataAdded' => $InsertedEmailIds
					);
				} else {
					$Data = array('Res'=>0,'Msg'=>'Something gone wrong');
				}
				break;
			case 'SendEmails':
				// $Data = $MailClass->Test();
				$EmailData = $MailClass->NotEmailsData();
				if(!empty($EmailData)){
					$Count = 0;
					foreach ($EmailData as $key => $Email) {
						$MailClass->SendMail($Email['email'],'Jap Nam '.$key,'subject - '.$key);
						$CollectIds[] = $Email['id'];
						$Count++;
					}
					$MailClass->UpdateEmailsStatus($CollectIds,1);
					$Data = array(
						'Res'	  => 1,
						'Msg'	  => 'Success',
						'EmailData' => $Count
					);
				} else {
					$Data = array(
						'Res'	  => 0,
						'Msg'	  => 'No Data Found',
						'EmailData' => 0
					);
				}
				break;
			
			default:
				$Data = array('Res'=>1,'Msg'=>'Default Switch');
				break;
		}
	} catch (Exception $e){
		$Data = array('Res'=>0,'Msg'=>$e->getMssage());
	} finally {
		echo json_encode($Data);
	}

?>