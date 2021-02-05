
$(document).ready(function() {

    $('#dataTable').dataTable();

    $('#phone_type').on('change', function() {
        if (this.value == 0) {
            $('#new_type').prop('disabled', false);
        } else {
            $('#new_type').prop('disabled', true);
        }
    });
})