<html>
<head>
<meta name="Instance page" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/bootstrap/css/bootstrap.css">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>

<link rel="stylesheet" href="/bootstrap/css/bootstrap-responsive.css"> 

<script type="text/javascript">
function logout()
{
  var form1 = document.release_form;
  form1.action='/logout';
  form1.submit();
}
</script>

</head>
<body>

    <div class="leaderboard">
      <h1>Virtual Class Room</h1>
    </div>
    <div class="container" align="center">
      <form class="form-horizontal" action="/release" name="release_form" method="post"> 
        <fieldset>
          <legend>Instance Access Information for you:
            <input type="hidden" for="name" name="name" id="name" value="{{name}}"><b>{{name}}</b></input></legend>
 
         <div class="control-group" style="width:50%">
          <div class="control-group" style="padding-left:15%">
            <label class="control-label" for="instance_id">Instance ID</label>
            <label class="control-label" name="instance_id" id="instance_id">{{instance_id}}</label>
          </div>

          <div class="control-group" style="padding-left:15%">
            <label class="control-label" for="ip">IP Address</label>
            <label class="control-label">{{ip}}</label>
          </div>

          <div class="control-group" style="padding-left:15%">
            <label class="control-label" for="user">User Name</label>
	    <label class="control-label">admin</label>
          </div>

          <div class="control-group" style="padding-left:15%">
            <label class="control-label" for="password">Password</label>
            <label class="control-label">password</label>
          </div>
          
          <div class="control-group" style="padding-left:15%">
             <label class="control-label" for="link">Access Link</label>
             <a href="url">{{url}}</a>
          </div>
        </div>
        
         <div class="form-actions">
            <button type="submit" class="btn btn-primary">Release</button>
            <button type="button" class="btn" onclick="logout()">Logout</button>
          </div>
        </fieldset>
   </form>
  </div>
</body>

    <script src="/bootstrap/js/bootstrap.js"></script>
    <script src="/bootstrap/js/bootstrp.min.js"></script>

</html>
