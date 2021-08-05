<?php



?>
<?php 
$records = getBookingRecords();
$utype = '';

?>

<div class="col-md-12">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Detalle de actividades</h3>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
      <table class="table table-bordered">
        <tr>
          <th style="width: 10px">#</th>
        
          <th>Fecha de entrenamiento</th>
          <th style="width: 140px">Tarea</th>
          <th style="width: 100px">Status</th>
       
		  <th >Action</th>
	
        </tr>
        <?php
	  $idx = 1;
	  foreach($records as $rec) {
	  	extract($rec);
		$stat = '';
		if($status == "PENDING") {$stat = 'warning';}
		else if ($status == "APPROVED") {$stat = 'success';}
		else if($status == "DENIED") {$stat = 'danger';}
		?>
        <tr>
          <td><?php echo $idx++; ?></td>
        
          <td><?php echo $res_date; ?></td>
          <td><?php echo $comments; ?></td>
          <td><span class="label label-<?php echo $stat; ?>"><?php echo $status; ?></span></td>
         
		  <td><?php if($status == "PENDING") {?>
            <a href="javascript:approve('<?php echo $user_id ?>','<?php echo $res_date ?>');">Approve</a>&nbsp;
	
		
            <?php } else { ?>

			<?php }//else ?>
          </td>
		  <?php } ?>
        </tr>
      
      </table>
    </div>
    <!-- /.box-body -->
    <div class="box-footer clearfix">
      <!--
	<ul class="pagination pagination-sm no-margin pull-right">
      <li><a href="#">&laquo;</a></li>
      <li><a href="#">1</a></li>
      <li><a href="#">2</a></li>
      <li><a href="#">3</a></li>
      <li><a href="#">&raquo;</a></li>
    </ul>
	-->
      <?php echo generatePagination(); ?> </div>
  </div>
  <!-- /.box -->
</div>

<script language="javascript">
function approve(userId, rdate) {
	if(confirm('Estás seguro que quieres aprobar la actividad?')) {
		window.location.href = '<?php echo WEB_ROOT; ?>api/process.php?cmd=regConfirm&action=approve&userId='+userId+'&rdate='+rdate;
	}
}
function decline(userId) {
	if(confirm('Are you sure you wants to Decline the Booking ?')) {
		window.location.href = '<?php echo WEB_ROOT; ?>api/process.php?cmd=regConfirm&action=denide&userId='+userId;
	}
}
function deleteUser(userId) {
	if(confirm('Deleting user will also delete it\'s booking from calendar.\n\nAre you sure you want to priceed ?')) {
		window.location.href = '<?php echo WEB_ROOT; ?>api/process.php?cmd=delete&userId='+userId;
	}
}

</script>
