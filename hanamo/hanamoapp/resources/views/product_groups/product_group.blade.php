@extends('layouts.app')

@section('content')
	<div class="container">
		<div class="row">
		    <div class="col-lg-12 margin-tb">					
		        <div class="pull-left">
		            <h2>Product Group CRUD</h2>
		        </div>
		        <div class="pull-right">
				<button type="button" class="btn btn-success" data-toggle="modal" data-target="#create-item">Create Product Group</button>
		        </div>
		    </div>
		</div>

		<table class="table table-bordered">
			<thead>
			    <tr>
				<th>Product Group ID:</th>
				<th>Product Group Name</th>
				<th width="200px">Action</th>
			    </tr>
			</thead>
			<tbody class="product-group">
			</tbody>
		</table>

		<ul id="pagination-product-group" class="pagination-sm"></ul>
		<!-- Create Item Modal -->
		@include('product_groups.create')
		<!-- Edit Item Modal -->
		@include('product_groups.edit')
	</div>

	@endsection
	<script type="text/javascript">
		var url = "<?php echo route('product_groups.index')?>";
	</script>
	