
$(document).ready(function() {

    $('#dataTable').dataTable();

    $("#dataTable").on("click", '#upload_file', function(event) {
        
        var userId = $(this).attr("data-resId");
        

        $('#resource_id').val(userId);
        $('#update_resource').modal('show');
    });

    $('#btn_new_resource').click(e => {
        
        $('#new_resource').modal('show');
    })

    $('#btn_mile_resource').click(e => {
        
        $('#mile_resource').modal('show');
    })

    $('#btn_chang_resource').click(e => {
        
        $('#changbao_resource').modal('show');
    })
})