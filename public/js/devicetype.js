

$(document).ready(function() {

    $('#dataTable').dataTable();

    $('#dataTable tbody tr').on('click', function( event ) {
        let type = this.children[0].textContent;

        window.location = '../resources/' + type;
    });

    $('#btn_new_type').click(e => {
        $('#new_type').modal('show');
    });
})