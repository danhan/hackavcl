<html>
<head>
<title>Login</title>
<meta name="login page" content="width=device-width, initial-scale=1.0">
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

      <form class="form-horizontal" action="/login" method="post">
        <fieldset>
          <legend>Please Login first</legend>
          <div class="control-group">

            <label class="control-label" for="name">Student Name</label>
            <div class="controls">
              <input type="text" class="input-xlarge" id="name" name="name">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="password">Password</label>

            <div class="controls">
              <input type="password" class="input-xlarge" id="password" name="password">
            </div>
          </div>
          <div class="form-actions">
            <button type="submit" class="btn btn-primary" data-toggle="button">Login</button>
            <button type="reset" class="btn">Reset</button>

          </div>
        </fieldset>
   </form>

  </body>

</html>
