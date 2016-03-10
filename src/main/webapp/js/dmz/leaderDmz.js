function deleteOne(){
	var el=$("li.selected");
	el.remove();
}
function addOne(){
	var name=$("#name").val();
	var el=$("li.selected");
	var liclass;
	var ulclass;
	var ul;
	var spanclass="sub-"+el.children("a").children("span").attr("class");
	if(el.length<1){
		el=$("#leftcontent");
		liclass="has-sub";
		ul=el;
	}else{
		liclass=el.attr("class").split(" ")[0]+"-sub";
		ul=el.children("ul");
	}

	ulclass=liclass.substring(4);
	if(ul.length>0){
		var str="<li class='"+liclass+
		"'><a href='' class=''><i class='fa fa-th-large fa-fw'></i><span class='"+spanclass+"'>"+name+
		"</span></li>";
		ul.append(str);
	}else{
		var str="<ul><li class='"+liclass+
		"'><a href='' class=''><i class='fa fa-th-large fa-fw'></i><span class='"+spanclass+"'>"+name+
		"</span></li></ul>";
		el.append(str);
	}
	
	
}
function upOne(){
	var el=$("li.selected");
	var prev=el.prev();
	el.after(prev);
	
}
function downOne(){
	var el=$("li.selected");
	var next=el.next();
	next.after(el);
}
function editOne(){


}
function save(){
	
}
