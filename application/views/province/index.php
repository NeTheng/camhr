<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<style type="text/css">
  .ui-state-active{
        border: 1px solid #565656;
    background: #222222;
    font-weight: normal;
    color: #ffffff;
  }

  .ui-progressbar {
    position: relative;
  }
  .progress-label {
    position: absolute;
    left: 50%;
    top: 4px;
    font-weight: bold;
    text-shadow: 1px 1px 0 #fff;
  }
  
	.ui-widget-overlay
	{
	  opacity: .50 !important; /* Make sure to change both of these, as IE only sees the second one */
	  filter: Alpha(Opacity=50) !important;

	  background: rgb(50, 50, 50) !important; /* This will make it darker */
	}
  
</style>


  <h2>List Provinces</h2>
  <hr>
<div id="accordion" class="accordion">
  <h3>Search</h3>
<div class="container-fluid text-left">

  <div class="row content">
    <div class="col-sm-3">
      <div class="form-group">
        <label for="usr">Name:</label>
        <input type="text" class="form-control" id="usr">
      </div>
    </div>

    <div class="col-sm-2">
      <fieldset>
        <label for="speed">Select a speed</label>
        <select name="speed" id="speed">
          <option>Slower</option>
          <option>Slow</option>
          <option selected="selected">Medium</option>
          <option>Fast</option>
          <option>Faster</option>
        </select>
      </fieldset>
    </div>

  </div>


  <div class="row content">
    <div class="col-sm-3">
      <div class="form-group">
        <label for="usr">Name:</label>
        <input type="text" class="form-control" id="usr">
      </div>
    </div>

    <div class="col-sm-3">
      <div class="form-group">
        <div class="ui-widget">
          <label for="tags">Tags: </label>
          <input class="form-control" id="tags">
        </div>
      </div>
    </div>

  </div>
   <hr>
  <div class="row content">
    <div class="widget">
    <button id="_search_data" class="ui-button ui-widget ui-corner-all">Search</button>
    <button id="_export_excel" class="ui-button ui-widget ui-corner-all">Excel</button>

    <!-- <input class="ui-button ui-widget ui-corner-all" type="submit" value="Submit"> -->
    <!-- <a class="ui-button ui-widget ui-corner-all" href="#">Anchor</a> -->

    </div>

  </div>

</div>
   
</div>


<div style="display: none;" class="text-center" id="loading-data">
    <div><img src="<?=base_url('image/giphy.gif');?>" ></div>
</div>

<br>



  <div id="table" class="table-responsive-sm">
  <table id="table-data" class="table table-bordered table-striped table-hover">
    <thead>
      <tr>
        <th>ID <i class="fa fa-fw fa-sort"></i> </th>
        <th>Provice <i class="fa fa-fw fa-sort"></i> </th>
        <th>Child <i class="fa fa-fw fa-sort"></i> </th>
        <th>Status <i class="fa fa-fw fa-sort"></i> </th>
        <th>Action <i class="fa fa-fw fa-sort"></i> </th>
      </tr>
    </thead>
    <tbody>

    </tbody>
  </table>
</div>

<div id="pagination">


</div>


<div id="dialog-district" title="List District" style="display:none;">

</div>





<!-- Script Content -->
<script>
  $( function() {
    $( "#accordion" ).accordion({
      collapsible: true
    });
  } );
</script>

<script>
  $( function() {
    $( "#speed" ).selectmenu();
 
    $( "#files" ).selectmenu();
 
    $( "#number" )
      .selectmenu()
      .selectmenu( "menuWidget" )
        .addClass( "overflow" );
 
    $( "#salutation" ).selectmenu();
  } );
</script>

<script>
  $( function() {
    var availableTags = [
      "ActionScript",
      "AppleScript",
      "Asp",
      "BASIC",
      "C",
      "C++",
      "Clojure",
      "COBOL",
      "ColdFusion",
      "Erlang",
      "Fortran",
      "Groovy",
      "Haskell",
      "Java",
      "JavaScript",
      "Lisp",
      "Perl",
      "PHP",
      "Python",
      "Ruby",
      "Scala",
      "Scheme"
    ];
    $( "#tags" ).autocomplete({
      source: availableTags
    });
  } );
  </script>
<!-- End Script -->

<!-- AJAX -->

<script type="text/javascript">

$(document).ready(function(){
  $("#_search_data").click(function(){
    $.ajax({
    url: "<?=site_url('province/list_view');?>", 
    success: function(response){
			
		  
    },
    dataType: "json",
    data:{},
    async: true,
    global:true,
    type:"get",
    /* timeout:60, */
    cache:false,
    beforeSend(xhr){
      $("#loading-data").show();
    },
    complete(xhr,status){
      $("#tab_manage > #table-data").remove();
      $("#loading-data").hide();
    },
    error: function(xhr){
      alert("An error occured: " + xhr.status + " " + xhr.statusText);
    }
    });
  });
  
  
  /* View Child */
  $("#table").on("click", "._view_district", function(){
	var id_province = $(this).val();
    $.ajax({
    url: "<?=site_url('province/list_district');?>",
    success: function(response){
	var data = response.table_rows;
	var rows = '';
		for(row in data){
			rows += parseInt(row)+1;
			rows += data[row].district;	
		}
				$( "#dialog-district" ).dialog({
				width: 'auto',
				maxWidth: 600,
				height: 'auto',
				modal: true,
				fluid: true,
				resizable: false,		
				modal: true,
				buttons: {
				Ok: function() {
						$( this ).dialog( "close" );
					}
				}
			}).html(rows);
    },
    dataType: "json",
    data:{"id_province":id_province},
    async: true,
    global:true,
    type:"get",
    /* timeout:60, */
    cache:false,
    beforeSend(xhr){
      $("#loading-data").show();
    },
    complete(xhr,status){
      $("#tab_manage > #table-data").remove();
      $("#loading-data").hide();
    },
    error: function(xhr){
      alert("An error occured: " + xhr.status + " " + xhr.statusText);
    }
    });
	
  });
  /* End View Child */
  
});



<!-- Load data index -->
function load_data(data) {
	$('#table tbody').empty();
      var rows = '';
		for(row in data){
			var rows = "<tr>";
			rows += "<td class='col-md-1'>"+ (parseInt(row)+1) +"</td>";
			/* rows += "<td>"+ data[row].id +"</td>"; */
			rows += "<td>"+ data[row].province +"</td>";
			rows +='<td class="col-md-1"><button class="ui-button ui-widget ui-corner-all _view_district" type="submit" value="'+data[row].id+'">View</button></td>';
			rows +='<td class="col-md-1">'+'status'+'</td>';
			
			rows +='<td class="col-md-1">';
                  rows +='<div class="dropdown">';
                  rows +='<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Action <span class="fa fa-chevron-circle-down"></span></button>';
                    rows +='<ul class="dropdown-menu dropdown-menu-right">';

                      rows +='<li><a href="#">';
                      rows +='<?=anchor("news/local/123", "View", "title=View list child");?>';
                      rows +=' </li>';                    

                    rows +='</ul>';
            rows +='</div>';			
			
			rows += "</tr>";
			$('#table tbody').append(rows);
		}
		
			
}


<!-- Pagination -->

	$(function() {
		$( "div" ).on( "click", ".pagination a", function(e) {
			e.preventDefault(); 
			var pageNum = $(this).attr('data-ci-pagination-page');	   
			createPagination(pageNum);
		   return false;
		});
	});

	function createPagination(pageNum){
		$.ajax({
			url: '<?=base_url()?>index.php/province/get_data_row/'+pageNum,
			dataType: "json",
			data:{},
			async: true,
			global:true,
			type:"get",
			/* timeout:60, */
			cache:false,
			beforeSend(xhr){
			  $("#loading-data").show();
			},
			complete(xhr,status){
			  $("#tab_manage > #table-data").remove();
			  $("#loading-data").hide();
			},
			error: function(xhr){
			  alert("An error occured: " + xhr.status + " " + xhr.statusText);
			},			
			success: function(responseData){
				$('#pagination').html(responseData.pagin);
				load_data(responseData.table_rows);
			}
		});
	}
	
createPagination(0);
</script>
<!--END AJAX -->