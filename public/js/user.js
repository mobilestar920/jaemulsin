
$(document).ready(function() {

    $('#dataTable').dataTable();
    
    $("#dataTable").on("click", '#edit_user', function( event ) {
        
        var userId = $(this).attr("data-userId");

        $('#user_edit_id').val(userId);
        $('#calendar_edit').modal('show');
    });

    $("#dataTable").on("click", '#block_user', function( event ) {
        
        var userId = $(this).attr("data-userId");

        $('#user_id').val(userId);
        $('#block_dialog').modal('show');
    });
})