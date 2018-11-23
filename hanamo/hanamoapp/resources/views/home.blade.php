@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    @can('isAdmin')
                    Welcome Admin!
                    <div class="list-group">
                        <a href="/product" class="list-group-item">Product</a>
                        <a href="/product_group" class="list-group-item">Product Group</a>
                        <a href="/users" class="list-group-item">User</a>
                        <a href="/importexcel" class="list-group-item">Import/Export Excel</a>
                    </div>
                    @else
                    <div class="list-group">
                        <a href="/product" class="list-group-item">Product</a>
                        <a href="/inventory" class="list-group-item">Inventory</a>
                    </div>
                    @endcan
                   
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
