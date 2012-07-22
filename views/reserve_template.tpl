<html>

<meta http-equiv="Content-type" content="text/html; charset=utf-8">

  <body>
  	<h1>Reserve your Instances</h1>
    <form id="data_form" action="/reserve" method="post" align="left">

      <table align="left">

        <tr>
          <td><label for="image">Image Type:</label></td>
	 <td><select id="image" name="image">	
		<option value="matlab">matlab</option>
		<option value="hadoop">hadoop</option>
	    </select>
         </td></tr>

        <tr>
          <td><label for="quota">Available Quota:</label></td>
          <td><span id="quota"/> 4 </td>
          <td><select id="quota_selector">
             <option value="tiny" onclick="quotaRefresh()">Tiny Instance</option>
             <option value="small" onclick="quotaRefresh()">Small Instance</option>
             <option value="medium" onclick="quotaRefresh()">Medium Instance</option>
             <option value="large" onclick="quotaRefresh()">Large Instance</option>
	  </select></td>
        </tr>

    	<tr>
          <td><label for="time_span">Time Span:</label></td>
          <td><select id="time_span" name="time_span">
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
	  </select></td>
	  <td><span>hour</span></td>
	</tr>	

        <tr>
          <td class="button"><input id="submit" type="submit" value="reserve" /></td>
        </tr>

      <table/>

    </form>

<script type="text/javascript">

function quotaRefresh(){
  alert("test");
  //var reserve_form = document.getElementById("data_form");
  //document.getElementById("quota_selector").onchange = function(){
  //alert('testing')
 // myDiv.style.display = (this.selectedIndex == 0) ? "block" : "none";
}


</script>




  </body>

</html>
