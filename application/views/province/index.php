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
</style>

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
    <input class="ui-button ui-widget ui-corner-all" type="submit" value="Reset">
    <a class="ui-button ui-widget ui-corner-all" href="#">Excel</a>
    <a class="ui-button ui-widget ui-corner-all" href="#">PDF</a>

    </div>

  </div>

</div>
   
</div>


  <h2>List Provinces</h2>

  <hr>

  <div class="table-responsive-sm">
  <table class="table table-bordered table-striped table-hover">
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

