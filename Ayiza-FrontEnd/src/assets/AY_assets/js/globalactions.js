// JavaScript Document

function ToggleQuickActions() {
    var btn = document.getElementById("quickactions");
    var icon = document.getElementById("quick-action-icon");
    var dropdownlist = document.getElementById("quick-action-dropdown");
    if (icon.classList.contains("fa-chevron-down")) {
        btn.setAttribute("style", "background-color: #B22222; color: #ffffff;");
        icon.className = "fa fa-chevron-up action-button__icon";
        dropdownlist.setAttribute("style", "display: flex;");
    } else {
        btn.setAttribute("style", "color: #B22222; background-color: #ffffff;");
        icon.className = "fa fa-chevron-down action-button__icon";
        dropdownlist.setAttribute("style", "display: none;");
    }
	
}