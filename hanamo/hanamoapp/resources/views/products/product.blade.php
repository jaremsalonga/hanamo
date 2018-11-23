@extends('layouts.app')

@section('content')
	<div class="container">
		<div class="row">
		    <div class="col-lg-12 margin-tb">					
		        <div class="pull-left">
		            <h2>Product CRUD Example</h2>
				</div>
				@can('isAdmin')
		        <div class="pull-right">
				<button type="button" class="btn btn-success" data-toggle="modal" data-target="#create-item">Create Product</button>
				</div>
				@endcan
		    </div>
		</div>
		<table class="table table-bordered">
			<thead>
			    <tr>
				<th>Product Group ID:</th>
				<th>Name</th>
				@can('isAdmin')
				<th width="200px">Action</th>
                @endcan
				
			    </tr>
			</thead>
			<tbody class="products">
			</tbody>
		</table>

		<ul id="pagination-product" class="pagination-sm"></ul>
		<!-- Create Item Modal -->
		@include('products.create')
		<!-- Edit Item Modal -->
		@include('products.edit')
	</div>


	@endsection
	<script type="text/javascript">
		var url = "<?php echo route('products.index')?>";
	</script>
