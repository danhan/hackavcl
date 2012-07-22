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
    <div class="leaderboard">
      <h1>Virtual Class Room</h1>
    </div>

    <div class="container" width="50%" align="center">
      <form class="form-horizontal" action="/login" method="post" align="center">
        <fieldset>
          <legend>Login</legend>
          <div class="control-group" style="padding-left:30%">
           <div class="control-group" style="width:30%">
            <label class="control-label" for="name">Student Name</label>
            <div class="controls">
              <input type="text" class="input-xlarge" id="name" name="name" style="height: 25px">
            </div>
          </div>
          <div class="control-group" style="width:30%">
            <label class="control-label" for="password">Password</label>

            <div class="controls">
              <input type="password" class="input-xlarge" id="password" name="password" style="height: 25px">
            </div>
          </div>
         </div>
          <div class="form-actions">
            <button type="submit" class="btn btn-primary" data-toggle="button">Login</button>
            <button type="reset" class="btn">Reset</button>

          </div>
        </fieldset>
   </form>
  </div>
</body>

</html>
