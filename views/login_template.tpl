
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

      <form class="form-horizontal" action="/login" method="post">
        <fieldset>
          <legend>Please Login first</legend>
          <div class="control-group">

            <label class="control-label" for="name">Student Name</label>
            <div class="controls">
              <input type="text" class="input-xlarge" id="name">

            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="password">Password</label>

            <div class="controls">
              <input type="password" class="input-xlarge" id="password">
            </div>
          </div>
          <div class="form-actions">
            <button type="submit" class="btn btn-primary">Login</button>
            <button class="btn">Cancel</button>

          </div>
        </fieldset>
   </form>

  </body>

</html>
