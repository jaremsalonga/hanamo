var page = 1;

var current_page = 1;

var total_page = 0;

var is_ajax_fire = 0;




manageDataProductGroup();




/* manage data list */

function manageDataProductGroup() {



    $.ajax({

        dataType: 'json',

        url: url,

        data: {page:page}

    }).done(function(data){



    	total_page = data.last_page;

    	current_page = data.current_page;



    	$('#pagination-product-group').twbsPagination({

	        totalPages: total_page,

	        visiblePages: current_page,

	        onPageClick: function (event, pageL) {

	        	page = pageL;

                if(is_ajax_fire != 0){

	        	  getPageDataProductGroup();

                }

	        }

	    });



    	manageRowProductGroup(data.data);

        is_ajax_fire = 1;

    });

}




$.ajaxSetup({

    headers: {

            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')

        }

});




/* Get Page Data*/

function getPageDataProductGroup() {

	$.ajax({

    	dataType: 'json',

    	url: url,

    	data: {page:page}

	}).done(function(data){

		manageRowProductGroup(data.data);

	});

}




/* Add new Post table row */

function manageRowProductGroup(data) {

    console.log(data);
	var	rows = '';

	$.each( data, function( key, value ) {

	  	rows = rows + '<tr>';

	  	rows = rows + '<td>'+value.id+'</td>';

	  	rows = rows + '<td>'+value.name+'</td>';

	  	rows = rows + '<td data-id="'+value.id+'">';

        rows = rows + '<button data-toggle="modal" data-target="#edit-item" class="btn btn-primary edit-item">Edit</button> ';

        rows = rows + '<button class="btn btn-danger remove-item">Delete</button>';

        rows = rows + '</td>';

	  	rows = rows + '</tr>';

	});

	$("tbody.product-group").html(rows);

}




/* Create new Post */

$("#product-group-create").click(function(e){
    e.preventDefault();
    var form_action = $("#create-item").find("form").attr("action");
    var details = $('#product-group-desc').val()
    $.ajax({
        dataType: 'json',
        type:'POST',
        url: form_action,
        data:{name:details}
    }).done(function(data){
        console.log('done')
        getPageDataProductGroup();
        $(".modal").modal('hide');
        toastr.success('Post Created Successfully.', 'Success Alert', {timeOut: 5000});
        $('.modal-backdrop').remove();
    });

});




/* Remove Post */

$("body").on("click",".remove-item",function(){

    var id = $(this).parent("td").data('id');

    var c_obj = $(this).parents("tr");



    $.ajax({

        dataType: 'json',

        type:'delete',

        url: url + '/' + id,

    }).done(function(data){



        c_obj.remove();
        $('.modal-backdrop').remove();
        toastr.success('Post Deleted Successfully.', 'Success Alert', {timeOut: 5000});

        getPageDataProductGroup();



    });

});




/* Edit Post */

$("body").on("click",".edit-item",function(){

    var id = $(this).parent("td").data('id');

    var title = $(this).parent("td").prev("td").prev("td").text();

    var details = $(this).parent("td").prev("td").text();



    $("#edit-item").find("input[name='title']").val(title);

    $("#edit-item").find("textarea[name='details']").val(details);

    $("#edit-item").find("form").attr("action",url + '/' + id);

});




/* Updated new Post */

$("#product-group-edit").click(function(e){
    e.preventDefault();
    var form_action = $("#edit-item").find("form").attr("action");
    var details = $("#edit-item").find("textarea[name='details']:visible").val();
    $.ajax({
        dataType: 'json',
        type:'PUT',
        url: form_action,
        data:{name:details}
    }).done(function(data){
        getPageDataProductGroup();
        $(".modal").modal('hide');
        $('.modal-backdrop').remove();
        toastr.success('Post Updated Successfully.', 'Success Alert', {timeOut: 5000});

    });

});