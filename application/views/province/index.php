<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>



  <div class="jumbotron">
      <h1>Bootstrap Tutorial</h1>      
      <p>Bootstrap is the most popular HTML, CSS, and JS framework for developing responsive, mobile-first projects on the web.</p>
    </div>      
  </div>


  <h2>List Provinces</h2>

  <hr>
<!--   <p>
    
    <ul class="breadcrumb">
      <li><a href="#">Home</a></li>
      <li><a href="#">Pictures</a></li>
      <li><a href="#">Summer 15</a></li>
      <li>Italy</li>
    </ul>

  </p> -->


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

