var retval;
var EditableTable = function () {



    return {



        //main function to initiate the module

        init: function () {

            function restoreRow(oTable, nRow) {

                var aData = oTable.fnGetData(nRow);

                var jqTds = $('>td', nRow);



                for (var i = 0, iLen = jqTds.length; i < iLen; i++) {

                    oTable.fnUpdate(aData[i], nRow, i, false);

                }



                oTable.fnDraw();

            }



            function editRow(oTable, nRow) {

                var aData = oTable.fnGetData(nRow);

                var jqTds = $('>td', nRow);

                jqTds[0].innerHTML = '<input type="checkbox"  name="cb[]" class=" " value="">';
                jqTds[1].innerHTML = '<select class="form-control small"><option>1</option><option>1</option><option>1</option></select>';
                jqTds[2].innerHTML = '<input type="text" class="form-control small" value="' + aData[2] + '">';
                jqTds[3].innerHTML = '<input type="text" class="form-control small" value="' + aData[3] + '">';
		jqTds[4].innerHTML = '<input type="text" class="form-control small" value="' + aData[4] + '">';
		jqTds[5].innerHTML = '<input type="text" class="form-control small" value="' + aData[5] + '">';
		jqTds[6].innerHTML = '<select class="form-control small"><option>1</option><option>1</option><option>1</option></select>';

                jqTds[7].innerHTML = '<a class="edit" href="">Save</a>';

                jqTds[8].innerHTML = '<a class="delete" href="">Cancel</a>';

            }



            function saveRow(oTable, nRow) {

                var jqInputs = $('input', nRow);

                oTable.fnUpdate('<input type="checkbox"  name="cb[]" class="" value="">', nRow, 0, false);

                oTable.fnUpdate(jqInputs[1].value, nRow, 1, false);

                oTable.fnUpdate(jqInputs[2].value, nRow, 2, false);

                oTable.fnUpdate(jqInputs[3].value, nRow, 3, false);
				
				oTable.fnUpdate(jqInputs[3].value, nRow, 4, false);
				
				oTable.fnUpdate(jqInputs[3].value, nRow, 5, false);
				
				oTable.fnUpdate(jqInputs[3].value, nRow, 6, false);

                oTable.fnUpdate('<a class="edit" href="javascript:;"><button class="btn btn-primary btn-xs"><i class="icon-pencil"></i></button></a>', nRow, 7, false);

                oTable.fnUpdate('<a class="delete" href="javascript:;"><button class="btn btn-danger btn-xs" style="min-width:0px;"><i class="icon-trash "></i></button></a>', nRow, 8, false);

                oTable.fnDraw();

            }



            function cancelEditRow(oTable, nRow) {

                var jqInputs = $('input', nRow);

                oTable.fnUpdate(jqInputs[0].value, nRow, 0, false);

                oTable.fnUpdate(jqInputs[1].value, nRow, 1, false);

                oTable.fnUpdate(jqInputs[2].value, nRow, 2, false);

                oTable.fnUpdate(jqInputs[3].value, nRow, 3, false);
				
				 oTable.fnUpdate(jqInputs[3].value, nRow, 4, false);
				  oTable.fnUpdate(jqInputs[3].value, nRow, 5, false);
				   oTable.fnUpdate(jqInputs[3].value, nRow, 6, false);

                oTable.fnUpdate('<a class="edit" href="">Edit</a>', nRow, 7, false);
              oTable.fnUpdate('<a class="delete" href="">Cancel</a>', nRow, 8, false);
                oTable.fnDraw();
            }



            var oTable = $('#editable-sample').dataTable({

                "aLengthMenu": [

                    [5, 15, 20, -1],

                    [5, 15, 20, "All"] // change per page values here

                ],

                // set the initial value

                "iDisplayLength": 5,

                "sDom": "<'row'<'col-lg-6'l><'col-lg-6'f>r>t<'row'<'col-lg-6'i><'col-lg-6'p>>",

                "sPaginationType": "bootstrap",

                "oLanguage": {

                    "sLengthMenu": "_MENU_ Show",

                    "oPaginate": {

                        "sPrevious": "Prev",

                        "sNext": "Next"

                    }

                },

                "aoColumnDefs": [{

                        'bSortable': false,

                        'aTargets': [0]

                    }

                ]

            });


              var table = $('#sample_3');

        // begin: third table
        var t = table.dataTable({

            // Internationalisation. For more info refer to http://datatables.net/manual/i18n
            "language": {
                "aria": {
                    "sortAscending": ": activate to sort column ascending",
                    "sortDescending": ": activate to sort column descending"
                },
                "emptyTable": "No data available in table",
                "info": "Showing _START_ to _END_ of _TOTAL_ records",
                "infoEmpty": "No records found",
                "infoFiltered": "(filtered1 from _MAX_ total records)",
                "lengthMenu": "Show _MENU_",
                "search": "Search:",
                "zeroRecords": "No matching records found",
                "paginate": {
                    "previous":"Prev",
                    "next": "Next",
                    "last": "Last",
                    "first": "First"
                }
            },
            
            // Uncomment below line("dom" parameter) to fix the dropdown overflow issue in the datatable cells. The default datatable layout
            // setup uses scrollable div(table-scrollable) with overflow:auto to enable vertical scroll(see: assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js). 
            // So when dropdowns used the scrollable div should be removed. 
            //"dom": "<'row'<'col-md-6 col-sm-12'l><'col-md-6 col-sm-12'f>r>t<'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>",
           buttons: [{
						extend: "print",
						className: "btn dark btn-outline"
					}, {
						extend: "copy",
						className: "btn red btn-outline"
					}, {
						extend: "pdf",
						className: "btn green btn-outline"
					}, {
						extend: "excel",
						className: "btn yellow btn-outline "
					}, {
						extend: "csv",
						className: "btn purple btn-outline "
					}, {
						extend: "colvis",
						className: "btn dark btn-outline",
						text: "Columns"
					}],

            "bStateSave": true, // save datatable state(pagination, sort, etc) in cookie.
            
            "lengthMenu": [
                [6, 15, 20, -1],
                [6, 15, 20, "All"] // change per page values here
            ],
            // set the initial value
            pageLength: 6,
			
			 
			
            "columnDefs": [{  // set default column settings
                'orderable': false,
                'targets': [0]
            }, {
                "searchable": false,
                "targets": [0]
            }],
            "order": [
                [1, "asc"]
            ] // set first column as a default sort by asc
        });

        var tableWrapper = jQuery('#sample_3_wrapper');

        table.find('.group-checkable').change(function () {
            var set = jQuery(this).attr("data-set");
            var checked = jQuery(this).is(":checked");
            jQuery(set).each(function () {
                if (checked) {
                    $(this).prop("checked", true);
                } else {
                    $(this).prop("checked", false);
                }
            });
        });
		$("#sample_3_tools > li > a.tool-action").on("click", function () {
				var e = $(this).attr("data-action");
				t.DataTable().button(e).trigger();
			});
           

            jQuery('#editable-sample_wrapper .dataTables_filter input').addClass("form-control medium"); // modify table search input

            jQuery('#editable-sample_wrapper .dataTables_length select').addClass("form-control xsmall"); // modify table per page dropdown



            var nEditing = null;



            $('#editable-sample_new').click(function (e) {

                e.preventDefault();

                var aiNew = oTable.fnAddData(['', '', '', '','', '','',

                        '<a class="edit" href="">Edit</a>', '<a class="cancel" data-mode="new" href="">Cancel</a>'

                ]);

                var nRow = oTable.fnGetNodes(aiNew[0]);

                editRow(oTable, nRow);

                nEditing = nRow;

            });



            $('#editable-sample').on('click',' a.delete', function (e) {
                
                e.preventDefault();
                var nRow = $(this).parents('tr')[0];
                console.log(nRow);
                jConfirm('Are you sure you want to delete?', 'Confirm Delete', function(r) { 
                 if(r == false){
                  return false;
                 }
                 
               
               oTable.fnDeleteRow(nRow);
                jAlert("Deleted Successfully.");return false;

               });
		

                

            });

             $('#sample_3').on('click','a#delete', function (e) {
                
                e.preventDefault();
                var nRow = $(this).parents('tr')[0];
                console.log(nRow);
                jConfirm('Are you sure you want to delete?', 'Confirm Delete', function(r) { 
                 if(r == false){
                  return false;
                 }
                 
               
               t.fnDeleteRow(nRow);
                jAlert("Deleted Successfully.");return false;

               });
		

                

            });




           function checkthisvalue(e){
               
               
           }


            $('#editable-sample').on('click','a.cancel', function (e){

                e.preventDefault();

                if ($(this).attr("data-mode") == "new") {

                    var nRow = $(this).parents('tr')[0];

                    oTable.fnDeleteRow(nRow);

                } else {

                    restoreRow(oTable, nEditing);

                    nEditing = null;

                }

            });



            $('#editable-sample').on('click','a.edit', function (e){

                e.preventDefault();



                /* Get the row as a parent of the link that was clicked on */

                var nRow = $(this).parents('tr')[0];



                if (nEditing !== null && nEditing != nRow) {

                    /* Currently editing - but not this row - restore the old before continuing to edit mode */

                    restoreRow(oTable, nEditing);

                    editRow(oTable, nRow);

                    nEditing = nRow;

                } else if (nEditing == nRow && this.innerHTML == "Save") {

                    /* Editing this row and want to save it */

                    saveRow(oTable, nEditing);

                    nEditing = null;

                    alert("Updated! Do not forget to do some ajax to sync with backend :)");

                } else {

                    /* No edit in progress - let's start one */

                    editRow(oTable, nRow);

                    nEditing = nRow;

                }

            });

        }



    };



}();