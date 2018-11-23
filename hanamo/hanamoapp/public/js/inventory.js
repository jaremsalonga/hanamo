$(function(){
    manageDataInventory();
});

var page = 1;

var current_page = 1;

var total_page = 0;

var is_ajax_fire = 0;


/* manage data list */

function manageDataInventory() {



    $.ajax({

        dataType: 'json',

        url: url,

        data: {page:page}

    }).done(function(data){

        total_page = data.last_page;
        
        current_page = data.current_page;
        
    	$('#pagination').twbsPagination({

	        totalPages: total_page,

	        visiblePages: current_page,

	        onPageClick: function (event, pageL) {

	        	page = pageL;

                if(is_ajax_fire != 0){

	        	  getPageData();

                }

	        }

	    });



    	manageRowInventory(data.data);

        is_ajax_fire = 1;

    });

}




$.ajaxSetup({

    headers: {

            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')

        }

});




/* Get Page Data*/

function getPageDataInventory() {

	$.ajax({

    	dataType: 'json',

    	url: url,

    	data: {page:page}

	}).done(function(data){

		manageRowInventory(data.data);

	});

}




/* Add new Post table row */

function manageRowInventory(data) {
	var	rows = '';
	$.each( data, function( key, value ) {
	  	rows = rows + '<tr>';
	  	rows = rows + '<td>'+value.product_id+'</td>';
	  	rows = rows + '<td>'+value.in_stock+'</td>';
        if($('#navbarDropdown').text().trim() == 'Administrator'){
            rows = rows + '<td data-id="'+value.id+'">';
            rows = rows + '<button data-toggle="modal" data-target="#edit-item" class="btn btn-primary edit-item">Edit</button> ';
            rows = rows + '</td>';
        }
	  	rows = rows + '</tr>';
	});
	$("tbody.inventories").html(rows);
}
/* Edit Post */

$("body").on("click",".edit-item",function(){
    var id = $(this).parent("td").data('id');
    var title = $(this).parent("td").prev("td").prev("td").text();
    var details = $(this).parent("td").prev("td").text();
    $("#edit-item").find("input[name='title']").val(title);
    $("#edit-item").find("input[name='details']").val(details);
    $("#edit-item").find("form").attr("action",url + '/' + id);

});




/* Updated new Post */
$("#inventory-edit").click(function(e){
    e.preventDefault();
    var form_action = $("#edit-item").find("form").attr("action");
    var details = $("#edit-item").find("input[name='details']").val();
    $.ajax({
        dataType: 'json',
        type:'PUT',
        url: form_action,
        data:{in_stock:details}
    }).done(function(data){
        getPageDataInventory();
        $(".modal").modal('hide');
        toastr.success('Post Updated Successfully.', 'Success Alert', {timeOut: 5000});
        $('.modal-backdrop').remove();
    });

});