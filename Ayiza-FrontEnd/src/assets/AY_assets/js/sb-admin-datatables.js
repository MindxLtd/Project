// Call the dataTables jQuery plugin
$(document).ready(function() {
  $('#dataTable').DataTable({
        dom: 'Blfrtip',
        buttons: [
            {
                text: 'Add <i class="fa fa-plus" aria-hidden="true"></i>',
				className:'btn-blue',
                action: function ( e, dt, node, config ) {
                     window.location.href = 'currencies_add.html';
    				return false;
                }
            },
			{
                text: 'Delete <i class="fa fa-trash" aria-hidden="true"></i>',
				className:'btn-orange',
                action: function ( e, dt, node, config ) {
                    alert( 'Button activated' );
                }
            }
			
        ],
		language : {
        sLengthMenu: "Show _MENU_"
    }
		
    });
	
	
});
