<?php

  require_once 'mail-class.php';

  // print_r(new _email);
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="custom.css">

    <title>Send Bulk Mail</title>
  </head>
  <body class="bg-light">
    <h1 class="text-center text-uppercase">Send Bulk Mails</h1>
    <div class="row min-vh-50">
      <div class="col-md-6 offset-3">
        <div id="ShowMsg"></div>
        <div class="card" id="AddBulkMail">
          <div class="card-body">
            <form id="UploadCsv" method="post" enctype="multipart/form-data">
              <div class="form-group">
                <label for="File">File</label>
                <input type="file" name="CsvFile" id="CsvFile" class="form-control" aria-describedby="help">
                <small id="help" class="form-text text-muted">Enter your CSV file</small>
              </div>
              <div class="form-group" id="buttons">
                <button type="submit" name="Submit" id="Submit" class="btn btn-info">Add</button>
                <button type="button" name="SendEmails" id="SendEmails" class="btn btn-info d-none">Send Emails</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <script src="jquery.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="custom.js"></script>
  </body>
</html>