var options = { 
	//sortable: true 
};
//var options = {
//	//allowBatchSelection:true,// 	Sections have checkboxes which when checked, check everything within them
//  //collapsible:true,//Adds collapsibility to sections
//  //freeze:false,//Disables selection/deselection of options; aka display-only
//  //hideSidePanel:false,// 	Hide the right panel showing all the selected items
// // sortable:true//,// 	Selected options can be sorted by dragging (requires jQuery UI)
//  //sectionDelimiter 	/ 	Separator between sections in the select option data-section attribute
//  //showSectionOnSelected:true,// 	Show section name on the selected items
//  //startCollapsed:false,// 	Activated only if collapsible is true; sections are collapsed initially
//};
$("select#treeview").treeMultiselect(options);