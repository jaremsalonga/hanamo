<div class="modal fade" id="create-item" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">

    <div class="modal-dialog" role="document">
  
      <div class="modal-content">
  
        <div class="modal-header">
  
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
  
          <h4 class="modal-title" id="myModalLabel">Create Product</h4>
  
        </div>
  
        <div class="modal-body">
  
  
  
                <form data-toggle="validator" action="{{ route('products.store') }}" method="POST">
  
                    <div class="form-group">
  
                      <label class="control-label" for="title">Product Group ID:</label>
                    

                      <select class="form-control">
                        @foreach ($product_groups as $data)                                       
                        <option value="{{ $data->id }}"  >{{ $data->id }}</option>                                                      
                        @endforeach
                      </select>
  
                      <div class="help-block with-errors"></div>
  
                  </div>
  
                  <div class="form-group">
  
                      <label class="control-label" for="title">Product Name:</label>
  
                      <textarea name="details" class="form-control" data-error="Please enter details." required></textarea>
  
                      <div class="help-block with-errors"></div>
  
                  </div>
  
                  <div class="form-group">
  
                      <button type="submit" class="btn crud-submit btn-success">Submit</button>
  
                  </div>
  
                </form>
  
        </div>
  
      </div>
  
    </div>
  
  </div>