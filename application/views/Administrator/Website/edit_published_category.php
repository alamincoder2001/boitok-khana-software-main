

<?php 
	if(isset($_POST["update"])){
		$name = $_POST["publishid_category"];
		$id = $_POST["id"];
		$this->db->query("update published_categories set name = '$name' where id= $id");				
	}			
?>
<?php $res = $this->db->query("SELECT * FROM published_categories where id = $id")->row(); ?>
<div class="row">
<div class="col-xs-12">
	<!-- PAGE CONTENT BEGINS -->
	<div class="form-horizontal">
		<form action="#" method="POST">
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Update Published Category Name</label>
				<label class="col-sm-1 control-label no-padding-right">:</label>
				<div class="col-sm-8">
					<input type="text" name="publishid_category" placeholder="Name" value="<?php echo $res->name ?>" class="col-xs-10 col-sm-4" required/>
					<input type="hidden" name="id" value="<?php echo $res->id ?>">
				</div>
			</div>
			
			<div class="form-group" style="padding-top:5px">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1"></label>
				<label class="col-sm-1 control-label no-padding-right"></label>
				<div class="col-sm-8">
						<button type="submit" class="btn btn-sm btn-success" name="update">
							Update
							<i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
						</button>
				</div>
			</div>
		</form>
		
</div>
</div>
</div>


			
<div class="row">
	<div class="col-xs-12">

		<div class="clearfix">
			<div class="pull-right tableTools-container"></div>
		</div>
		<div class="table-header">
			Brand Information
		</div>

		<!-- div.table-responsive -->

		<!-- div.dataTables_borderWrap -->
		<div id="saveResult">
			<table id="dynamic-table" class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<th class="center" style="display:none;">
							<label class="pos-rel">
								<input type="checkbox" class="ace" />
								<span class="lbl"></span>
							</label>
						</th>
						<th>SL No</th>
						<th>Brand Name</th>
						<th class="hidden-480">Description</th>
						<th>Status</th>
						<th>Action</th>
					</tr>
				</thead>

				<tbody>
					<?php 
						if(isset($_POST["submit"])){

							$id = $_POST["id"];
							$status = $_POST["status"];

							if($status == 1){
								$this->db->query("update published_categories set status = 0 where id= $id");	
							}
							else{
								$this->db->query("update published_categories set status = 1 where id= $id");	
							}
						}							
					?>
					<?php 
					$query = $this->db->query("SELECT * FROM published_categories");
					$row = $query->result();
					//echo "<pre>";print_r($row);exit;
					 ?>
					<?php $i=1; foreach($row as $row){ ?>
					<tr>
						<td class="center" style="display:none;">
							<label class="pos-rel">
								<input type="checkbox" class="ace" />
								<span class="lbl"></span>
							</label>
						</td>
						<td><?php echo $i++; ?></td>
						<td><a href="#"><?php echo $row->name; ?></a></td>
						<td class="hidden-480"><?php echo $row->name; ?></td>
						<td>
							<form action="#" method="POST" onsubmit="return confirm('Are You Sure?')">
								<input type="hidden" name="status" id="status" value="<?php echo $row->status ?>">
								<input type="hidden" name="id" id="id" value="<?php echo $row->id ?>">
								<button type="submit" name="submit" class="button">
									<?php if($row->status == 1){?>
										Published
									<?php }?>
									<?php if($row->status == 0){?>
										UnPublished
									<?php }?>
								</button>
							</form>
						</td>
						<td>
						<div class="hidden-sm hidden-xs action-buttons">
								<a class="green" href="<?php echo base_url() ?>edit_published_category/<?php echo $row->id; ?>" title="Eidt" onclick="return confirm('Are you sure you want to Edit this item?');">
									<i class="ace-icon fa fa-pencil bigger-130"></i>
								</a>

								<a class="red" href="#" onclick="deleted(<?php echo $row->id; ?>)">
									<i class="ace-icon fa fa-trash-o bigger-130"></i>
								</a>
							</div>
						</td>
					</tr>				
					<?php } ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
					
<script type="text/javascript">
    function deleted(id){
        var deletedd= id;
        var inputdata = 'deleted='+deletedd;
        var confirmation = confirm("are you sure you want to delete this ?");
        var urldata = "<?php echo base_url() ?>published_category_delete";
		if(confirmation){
        $.ajax({
            type: "POST",
            url: urldata,
            data: inputdata,
            success:function(data){
                if(data == 'false'){
                    alert("Something went wrong!");
                }
                else{
                    alert("Delete Success");
                    window.location.href='<?php echo base_url(); ?>Administrator/Website/published_category';
                }
                
            }
        });
		};
    }
</script>