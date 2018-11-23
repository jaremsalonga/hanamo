@extends('layouts.app')

@section('content')
	<div class="container">
		<div class="row">
		    <div class="col-lg-12 margin-tb">					
		        <div class="pull-left">
		            <h2>Inventory</h2>
		        </div>
		    </div>
		</div>

		<table class="table table-bordered">
			<thead>
			    <tr>
				<th>Product ID:</th>
				<th>Stocks:</th>
				<th width="200px">Action</th>
			    </tr>
			</thead>
			<tbody class="inventories">
			</tbody>
		</table>

		<ul id="pagination" class="pagination-sm"></ul>
		<!-- Create Item Modal -->
		@include('inventory.create')
		<!-- Edit Item Modal -->
		@include('inventory.edit')
	</div>

	@endsection
	<script type="text/javascript">
		var url = "<?php echo route('inventories.index')?>";
	</script>
	