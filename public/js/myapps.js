$(document).ready(function() {

    $('#dataTable').dataTable();

    $("#dataTable").on("click", '#edit_app', function(event) {
        
        // var appId = $(this).attr("data-id");
        // var version = $(this).attr("data-version");
        // var package_name = $(this).attr("data-package");
        // var name = $(this).attr("data-name");
        
        // $('#app_id').val(appId);
        // $('#app_name').val(name);
        // $('#package_name').val(package_name);
        // $('#app_version').val(version);
        // $('#update_app').modal('show');
    });

    $("#dataTable").on("click", '#delete_app', function(event) {
        // var appId = $(this).attr("data-id");

        // $('#delete_id').val(appId);

        // $('#delete_dialog').modal('show');
    });

    $('#btn_new_version').click(e => {
    
        $('#dlg_new_version').modal('show');
    })
})