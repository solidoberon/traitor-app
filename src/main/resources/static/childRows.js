/* Formatting function for row details - modify as you need */
function format ( d ) {
    // `d` is the original data object for the row
    return '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'+
        '<tr>'+
            '<td>IBAN:</td>'+
            '<td>'+d.iban+'</td>'+
        '</tr>'+
    '</table>';
}
 
$(document).ready(function() {
    var table = $('#dtResults').DataTable( {
        "columns": [
            {
                "className":      'details-control',
                "data":           null,
				"orderable":      false,
				"defaultContent": ''                
            },
            { "data": "id" },
            { "data": "firstname" },
            { "data": "lastname" },
            { "data": "street" },
			{ "data": "university" },
			{ 
				"data": "iban",
				"visible": false 
			},
        ]
    } );
     
    // Add event listener for opening and closing details
    $('#dtResults tbody').on('click', 'td.details-control', function () {
        var tr = $(this).closest('tr');
        var row = table.row( tr );
 
        if ( row.child.isShown() ) {
            // This row is already open - close it
            row.child.hide();
            tr.removeClass('shown');
        }
        else {
            // Open this row
            row.child( format(row.data()) ).show();
            tr.addClass('shown');
        }
    } );
} );