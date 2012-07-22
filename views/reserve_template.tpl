<html>
<head>
<meta name="login page" content="width=device-width, initial-scale=1.0">
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
  var form1 = document.reserve_form;
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
       <form class="form-horizontal" action="/reserve" method="post" name="reserve_form">
        <fieldset>
          <legend>Reserve your Instance:
            <input type="hidden" for="name" name="name" id="name" value="{{name}}"><b>{{name}}</b></input>
          </legend>

        <div class="control-group" style="width: 30%">
          <div class="control-group">
            <label class="control-label" for="image">Image Type</label>
            <div class="controls">
              <select id="image" name="image">
                <option value="matlab">matlab</option>
                <option value="hadoop">hadoop</option>
              </select>
             <!-- <span class="help-inline">Operating System with the selected software</span> -->
            </div>
          </div>
         <!--
          <div class="control-group">
            <label class="control-label" for="quota">Available Quota</label>
            <div class="controls">
              <select id="quota_selector" name="quota">
                 <option value="tiny" onclick="quotaRefresh()">Tiny Instance</option>
                 <option value="small" onclick="quotaRefresh()">Small Instance</option>
                 <option value="medium" onclick="quotaRefresh()">Medium Instance</option>
                 <option value="large" onclick="quotaRefresh()">Large Instance</option>
             </select>
            </div>
          </div>
         -->
          <div class="control-group">
            <label class="control-label" for="time_span">Time Span (hour)</label>
            <div class="controls">
              <select id="time_span" name="time_span">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
              </select>
            </div>
          </div>  
        </div>
 
          <div class="form-actions">
            <button type="submit" class="btn btn-primary" data-toggle="button">Reserve</button>
            <button type="button" class="btn" onclick="logout()">Logout</button>
          </div>

        </fieldset>
    </form>
  </div>
</body>
</html>
