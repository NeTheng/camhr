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
    <button class="ui-button ui-widget ui-corner-all">Search</button>
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



  <div id="tab_manage" class="table-responsive-sm">
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

<?php if( isset($arrProvince) && is_array($arrProvince) ):?>
<?php foreach($arrProvince as $key=>$pr): ?>
      <tr>
        <td class="col-md-1"><?php echo $key+1;?></td>
        <td><?php echo $pr['province'];?></td>
        <td class="col-md-1"><?=anchor('news/local/123', '<i class="fa fa-link" aria-hidden="true"> View</i>', array("title"=>"View list child", "target"=>"_blank"));?></td>
        <td class="col-md-1">Status</td>
        <td class="col-md-1">
          
          <div class="dropdown">
            <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Action <span class="fa fa-chevron-circle-down"></span></button>
            <ul class="dropdown-menu dropdown-menu-right">
              <li><a href="#"> 
              <?=anchor('news/local/123', '<i class="fa fa-eye" aria-hidden="true"> View</i>
              ', 'title="View list child"');?>

              </li>
              <li>

                  
                  <?=anchor('news/local/123', '<i class="fa fa-pencil-square-o" aria-hidden="true"> Edit</i>
                  ', 'title="View list child"');?> </i>


              </li>
              <li>
                  
                  <?=anchor('news/local/123', '<i class="fa fa-trash-o" aria-hidden="true"> Delete</i>
                  ', 'title="View list child"');?> </i>


              </li>
            </ul>
          </div>

        </td>
      </tr>
<?php  endforeach; ?>
<?php  endif; ?>

    </tbody>
  </table>
</div>

<div id="pagin_load"></div>

<?php echo $this->pagination->create_links();?>
<!-- Script -->

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
  $("#_export_excel").click(function(){
    $.ajax({
    url: "<?=site_url('province/list_view');?>", 
    success: function(response){
      console.log(response);
      var table = '';
          table +='<table class="table table-bordered table-striped table-hover">'
            table +='<thead>';
              table +='<tr>';
                table +='<th>ID <i class="fa fa-fw fa-sort"></i></th>';
                table +='<th>Provice <i class="fa fa-fw fa-sort"></i></th>';
                table +='<th>Child <i class="fa fa-fw fa-sort"></i></th>';
                table +='<th>Status <i class="fa fa-fw fa-sort"></i></th>';
                table +='<th>Action <i class="fa fa-fw fa-sort"></i></th>';
              table +=' </tr>';
            table +='</thead>';

            table +='<tbody>';
            $.each(response, function( index, value ) {
              table +='<tr>';
                table +='<td class="col-md-1">'+value['id']+'</td>';
                table +='<td>'+value['province']+'</td>';
                table +='<td class="col-md-1"><input class="ui-button ui-widget ui-corner-all" type="submit" value="View"></td>';
                table +='<td class="col-md-1">'+'status'+'</td>';
                table +='<td class="col-md-1">';
                  table +='<div class="dropdown">';
                  table +='<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Action <span class="fa fa-chevron-circle-down"></span></button>';
                    table +='<ul class="dropdown-menu dropdown-menu-right">';

                      table +='<li><a href="#">';
                      table +='<?=anchor("news/local/123", "View", "title=View list child");?>';
                      table +=' </li>';                    

                    table +='</ul>';
                  table +='</div>';

                table +='</td>';
              table +='</tr>';              
            });

            table +='</tbody>';

          table +='</table>';

      $( "#tab_manage" ).replaceWith( table );
    },
    dataType: "json",
    data:{},
    async: true,
    global:true,
    type:"get",
    // timeout:60,
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
});


function load_data() {
  $.ajax({
    async: true,
    global:false,
    type:"get",
    cache:false,
    dataType: "json",
    url: "<?=site_url('province/get_data_row');?>",
    data: {},
    success: function(response){
      console.log(response);
      var table = '';
          table +='<table class="table table-bordered table-striped table-hover">'
            table +='<thead>';
              table +='<tr>';
                table +='<th>ID <i class="fa fa-fw fa-sort"></i></th>';
                table +='<th>Provice <i class="fa fa-fw fa-sort"></i></th>';
                table +='<th>Child <i class="fa fa-fw fa-sort"></i></th>';
                table +='<th>Status <i class="fa fa-fw fa-sort"></i></th>';
                table +='<th>Action <i class="fa fa-fw fa-sort"></i></th>';
              table +=' </tr>';
            table +='</thead>';

            table +='<tbody>';
            $.each(response, function( index, value ) {
              table +='<tr>';
                table +='<td class="col-md-1">'+value['id']+'</td>';
                table +='<td>'+value['province']+'</td>';
                table +='<td class="col-md-1"><input class="ui-button ui-widget ui-corner-all" type="submit" value="View"></td>';
                table +='<td class="col-md-1">'+'status'+'</td>';
                table +='<td class="col-md-1">';
                  table +='<div class="dropdown">';
                  table +='<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Action <span class="fa fa-chevron-circle-down"></span></button>';
                    table +='<ul class="dropdown-menu dropdown-menu-right">';

                      table +='<li><a href="#">';
                      table +='<?=anchor("news/local/123", "View", "title=View list child");?>';
                      table +=' </li>';                    

                    table +='</ul>';
                  table +='</div>';

                table +='</td>';
              table +='</tr>';              
            });

            table +='</tbody>';

          table +='</table>';
      $( "#tab_manage" ).replaceWith(table);
    },
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
  });
}


$(function() {

$( ".pagination" ).on( "click", "a", function() {
   alert(3);
   return false;
});


});

load_data();
</script>
<!--END AJAX -->