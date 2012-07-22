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
       <form class="form-horizontal" action="/reserve" method="post">
        <fieldset>
          <legend>Reserve your Instance</legend>

          <div class="control-group">
            <label class="control-label" for="image">Image Type</label>
            <div class="controls">
              <select id="image" name="image">
                <option value="matlab">matlab</option>
                <option value="hadoop">hadoop</option>
              </select>
            </div>
          </div>

          <div class="control-group">
            <label class="control-label" for="quota">Available Quota:</label>
            <div class="controls">
              <select id="quota_selector" name="quota">
                 <option value="tiny" onclick="quotaRefresh()">Tiny Instance</option>
                 <option value="small" onclick="quotaRefresh()">Small Instance</option>
                 <option value="medium" onclick="quotaRefresh()">Medium Instance</option>
                 <option value="large" onclick="quotaRefresh()">Large Instance</option>
             </select>
            </div>
          </div>

          <div class="control-group">
            <label class="control-label" for="time_span">Time Span:</label>
            <div class="controls">
              <select id="time_span" name="time_span">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
              </select>
            </div>
              <!--<span class="label help-info">hour</span>-->
          </div>  
 
          <div class="form-actions">
            <button type="submit" class="btn btn-primary">Reserve</button>
            <button class="btn">Cancel</button>
          </div>

        </fieldset>
   </form>
</body>
</html>
