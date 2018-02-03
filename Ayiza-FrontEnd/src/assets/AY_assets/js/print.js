// JavaScript Document

function QuickPrintTable() {
    ToggleQuickActions();
    var tabledata = document.getElementById('global-table');
    var printwindow = window.open('', 'print div', 'height=400, width=600');
    printwindow.document.write('<html><head><title></title>');
    printwindow.document.write('<link rel="stylesheet" href="../../../AY_assets/css/global_print_table.css" type="text/css" />');
    printwindow.document.write('</head><body>');
    printwindow.document.write(tabledata.outerHTML);
    printwindow.document.write('</body></html>');
    var is_chrome = Boolean(printwindow.chrome);
    if (is_chrome) {
     setTimeout(function() { 
        printwindow.document.close();
        printwindow.focus();
        printwindow.print();
        printwindow.close();
     }, 250);
   } else {
        printwindow.document.close();
        printwindow.focus();
        printwindow.print();
        printwindow.close();
   }
}
