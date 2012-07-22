<html>
<head>
<link rel="stylesheet" href="/bootstrap/css/bootstrap.css">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>

<link rel="stylesheet" href="/bootstrap/css/bootstrap-responsive.css"> 
</head>
<body>

      <form class="form-horizontal">
        <fieldset>
          <legend>Instance Access Information</legend>

          <div class="control-group">
            <label class="control-label" for="ip">IP Address</label>
            <label class="control-label">{{ip}}</label>
          </div>

          <div class="control-group">
            <label class="control-label" for="user">User Name</label>
	    <label class="control-label">admin</label>
          </div>

          <div class="control-group">
            <label class="control-label" for="password">Password</label>
            <label class="control-label">password</label>
          </div>

          <div class="form-actions">
            <button type="submit" class="btn btn-primary">logout</button>
          </div>
        </fieldset>
   </form>


  </body>

</html>
