@extends('layouts.app')

@section('content')
	<div class="container">
		<div class="row">
		    <div class="col-lg-12 margin-tb">					
		        <div class="pull-left">
		            <h2>Users</h2>
		        </div>
		    </div>
		</div>

		<table class="table table-bordered">
			<thead>
			    <tr>
				<th>Email Address:</th>
				<th>Role ID:</th>
				<th width="200px">Action</th>
			    </tr>
			</thead>
			<tbody class="users">
			</tbody>
		</table>

		<ul id="pagination-users" class="pagination-sm"></ul>
		<!-- Edit Item Modal -->
		@include('user.edit')
	</div>

	@endsection
	<script type="text/javascript">
		var url = "<?php echo route('users.index')?>";
	</script>
	