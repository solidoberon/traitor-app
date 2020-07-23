/* Formatting function for row details - modify as you need */
function format ( d ) {
    // `d` is the original data object for the row
    return '<table id="tree-table'+d.id+'" cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'+
		'<script src="jqueryTreeTable/jquery.treetable.js"></script>'+
		'<link rel="stylesheet" href="jqueryTreeTable/css/jquery.treetable.css"></script>'+
        '<tr data-tt-id="'+d.id+'">'+
            '<td>IBAN:</td>'+
            '<td>'+d.iban+'</td>'+
        '</tr>'+
		'<tr data-tt-id="2" data-tt-parent-id="'+d.id+'">'+
            '<td>Child Node:</td>'+
            '<td>This is Child Node text.</td>'+
        '</tr>'+
    '</table>'+
	'<script>'+
	'$("#tree-table'+d.id+'").treetable({ expandable: true });'+
	'</script>';
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
				"visible": false,
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