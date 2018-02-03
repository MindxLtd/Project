// JavaScript Document

function quickImageDel(elem) {
    var btn = '<input type="button" value="Delete" class="global-popup__delete" onclick="DeleteSingle('+elem+')"><input type="button" value="Cancel" class="global-popup__cancel" onclick="closePopupBox()">';
    var id = elem;
    var t = 'Are you sure you would like to permanently delete this receipt?';
    var h = 'Delete Image no '+elem+' ?';
    showPopupBox(h,t,btn);
}
