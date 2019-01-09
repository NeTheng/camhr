<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

  <h2>List Provinces</h2>
  <p>The .table-sm class makes the table smaller by cutting cell padding in half:</p>

  <div class="table-responsive-sm">
  <table class="table table-bordered table-striped table-hover">
    <thead>
      <tr>
        <th>ID <i class="fa fa-fw fa-sort"></i> </th>
        <th>Provice <i class="fa fa-fw fa-sort"></i> </th>
      </tr>
    </thead>
    <tbody>

<?php if( isset($arrProvince) && is_array($arrProvince) ):?>
<?php foreach($arrProvince as $key=>$pr): ?>
      <tr>
        <td class="col-md-1"><?php echo $key+1;?></td>
        <td><?php echo $pr['province'];?></td>
      </tr>
<?php  endforeach; ?>
<?php  endif; ?>

    </tbody>
  </table>
</div>