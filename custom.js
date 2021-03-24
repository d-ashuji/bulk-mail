function ajaxcall(){
	this.Send = function(Data, Url, Success, BeforeSend, Method, Type){
		Method = Method || 'post';
		Type = Type || 'json';
		var SuccRes = function(Data){
			Success(Data);
		};
		var ErrorRes = function (jqXHR, exception) {
	        var ErrMsg = '';
	        if (jqXHR.status === 0) {
	            ErrMsg = 'Not connect.\n Verify Network.';
	        } else if (jqXHR.status == 404) {
	            ErrMsg = 'Requested page not found. [404]';
	        } else if (jqXHR.status == 500) {
	            ErrMsg = 'Internal Server Error [500].';
	        } else if (exception === 'parsererror') {
	            ErrMsg = 'Requested JSON parse failed.';
	        } else if (exception === 'timeout') {
	            ErrMsg = 'Time out error.';
	        } else if (exception === 'abort') {
	            ErrMsg = 'Ajax request aborted.';
	        } else {
	            ErrMsg = 'Uncaught Error.\n' + jqXHR.responseText;
	        }
	        console.log(ErrMsg);
	    };
	    var BeforeSendRes = function(){
	    	BeforeSend();
	    	// console.log('BeforeSend Message');	    	
	    };
		$.ajax({
			url:Url,
			type:Method,
			data:Data,
			contentType:false,
			cache:false,
			processData:false,
			beforeSend:BeforeSendRes,
			success:SuccRes,
			error:ErrorRes,
			dataType:Type,
			timeout:0
		});
	}
}

function ShowMsg(Type, Msg){
	var AlertType = '';
	if(Type == 's'){
		AlertType = 'success'
	} else if(Type == 'f') {
		AlertType = 'danger'
	}
	$("#ShowMsg").html('<p class="alert alert-'+AlertType+'">'+Msg+'</p>');
}

function EmailFunc(){
	var RootUrl = 'Controller';
	var Call = new ajaxcall();

	this.SaveEmails = function(){
		var Url = RootUrl + '?type=SaveEmails';
	    let files = new FormData();
	    files.append("FileName", $("#"+"CsvFile")[0].files[0]);
	    if($("#"+"CsvFile").val() != ''){
			var Data = new FormData();
			Call.Send(
				files,
				Url,
				function(Data){
					if(Data.Res == 1){
						ShowMsg('s', 'Total email added '+Data.TotalDataAdded);
						$("#Submit").attr({'type' : 'button'}).html('<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check2-all" fill="currentColor" xmlns="http://www.w3.org/2000/svg"> <path fill-rule="evenodd" d="M12.354 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/> <path d="M6.25 8.043l-.896-.897a.5.5 0 1 0-.708.708l.897.896.707-.707zm1 2.414l.896.897a.5.5 0 0 0 .708 0l7-7a.5.5 0 0 0-.708-.708L8.5 10.293l-.543-.543-.707.707z"/> </svg> ' + Data.Msg).removeClass('btn-warning').addClass('btn-success');
						$('#SendEmails').removeClass('d-none');
					} else if(Data.Res == 0) {
						console.log('Failed');
						$("#Submit").attr('disabled',false).html('<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check2-all" fill="currentColor" xmlns="http://www.w3.org/2000/svg"> <path fill-rule="evenodd" d="M12.354 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/> <path d="M6.25 8.043l-.896-.897a.5.5 0 1 0-.708.708l.897.896.707-.707zm1 2.414l.896.897a.5.5 0 0 0 .708 0l7-7a.5.5 0 0 0-.708-.708L8.5 10.293l-.543-.543-.707.707z"/> </svg> ' + Data.Msg).removeClass('btn-warning').addClass('btn-danger');
					} else {
						console.log(Data);
					}
					$('form').trigger('reset');
				},
				function(){
					$("#Submit").attr('disabled',true).text('Adding Email to Database').removeClass('btn-info').addClass('btn-warning');
				}
			)			
		} else {
			ShowMsg('f', 'Please select file');
		}
	}

	this.SendEmails = function(){
		var Url = RootUrl + '?type=SendEmails';
		var Data = '';
		Call.Send(
			Data,
			Url,
			function(Data){
				console.log(Data);
				$("#SendEmails").attr({'type' : 'button'}).html('<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check2-all" fill="currentColor" xmlns="http://www.w3.org/2000/svg"> <path fill-rule="evenodd" d="M12.354 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/> <path d="M6.25 8.043l-.896-.897a.5.5 0 1 0-.708.708l.897.896.707-.707zm1 2.414l.896.897a.5.5 0 0 0 .708 0l7-7a.5.5 0 0 0-.708-.708L8.5 10.293l-.543-.543-.707.707z"/> </svg> Successfully Send All Emails').removeClass('btn-warning').addClass('btn-success');
			},
			function(){
				$("#SendEmails").attr('disabled',true).text('Email Sending').removeClass('btn-info').addClass('btn-warning');
			}
		)
	}
}

$(function(){
	$('#UploadCsv').on('submit', function(e){
		e.preventDefault();
		var EmailHandler = new EmailFunc();
		EmailHandler.SaveEmails();
	})
	$('#SendEmails').on('click', function(e){
		e.preventDefault();
		var EmailHandler = new EmailFunc();
		EmailHandler.SendEmails();
	})
})