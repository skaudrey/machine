/**
 * 添加左侧的内容
 * 左侧导航栏的内容：{level： ，priId:  ,name: ;action:    ;description:   ;upPriId:   ;}
 */

var timer;
$(document).ready(function(){
    var param={};
    $.post("/catalogOrder!getCatalogOrder", param,
        function(data){
            addLeftItem(data);
        }, "json");

    handleSidebar2();


});
function addLeftItem(data){
    var totalLevel=1;
    var levelContent=new Map();
    var removeList=new Array();
    levelContent.put("leftcontent",new Array());

    var upList=new Array();
    addFirstItem(data,levelContent,totalLevel,removeList,upList);
}
function addFirstItem(data,levelContent,totalLevel,removeList,upList){
    //var size=priIdList.length;
    var size=data.length;
    if(size==removeList.length){
        appendStr(levelContent);
        configClass();
        return ;
    }
    var next=new Array();
    for(var i=0;i<size;i++){
        var datai=data[i];
        var up=datai.upcId;

        //根据层次设置样式：
        var levelClass="has";
        for(var m=0;m<totalLevel;m++){
            levelClass+="-sub";
        }
        if(totalLevel==1){
            if(up=="0"){//第一层
                if(datai.action!="-1"){
                    var str="<li id='cId"+datai.cId+"' class='"+levelClass+"'><a href='javascript:void(0)' class='' onclick=setIframe('exampleContent.jsp')>"+
                        "<i class='fa fa-th-large fa-fw'></i><span class='menu-text'>"+datai.name+"</span></a></li>";
                }else{
                    var str="<li id='cId"+datai.cId+"' class='"+levelClass+"'><a href='#' class='' >"+
                        "<i class='fa fa-th-large fa-fw'></i><span class='menu-text'>"+datai.name+"</span></a></li>";
                }
                var content=levelContent.get("leftcontent");
                content[datai.mcorder]=str;
                levelContent.put("leftcontent",content);
                next.push(datai.cId);
                levelContent.put("cId"+datai.cId,"");
                removeList.push(datai.cId);
            }
        }else{
            if(up!="0"){
                var upListLength=upList.length;
                for(var j=0;j<upListLength;j++){
                   if(up==upList[j]){
                       var str="<li id='cId"+datai.cId+"' class='"+levelClass+"'><a href='javascript:void(0)' class='' onclick=setIframe('exampleContent.jsp')>"+
                           "<span class='menu-text'>"+datai.name+"</span></a></li>";

                       var content=levelContent.get("cId"+datai.upcId);
                       content[datai.mcorder]=str;
                       levelContent.put("cId"+datai.upcId,content);
                       next.push(datai.cId);
                       levelContent.put("cId"+datai.cId,new Array());
                       removeList.push(datai.cId);
                   }
                }

            }
        }

    }

    totalLevel=1+totalLevel*1;
    addFirstItem(data,levelContent,totalLevel,removeList,next);
}

function configClass(){
    $("li[class^='has-sub']").each(function(){
        if($(this).children("ul").length>0){
            $(this).children("a").append("<i  class='fa fa-caret-left arrow'></i>");
            var subclass=$(this).attr("class").substring(4);
            $(this).children("ul").addClass(subclass);
        }

    });


}
function appendStr(levelContent){
    var size=levelContent.size();
    for( var i=0;i<size;i++ ) {
        var value = levelContent.getValueByIndex(i);
        var key = levelContent.getKeyByIndex(i);
        var valueLength=value.length;
        if(valueLength>0){
            if (key == "leftcontent") {

                for(var j=0;j<valueLength;j++){
                    $("#" + key).append(value[j]);
                }

            } else {
                $("#" + key).append("<ul>");
                for(var j=0;j<valueLength;j++){
                    $("#" + key).append(value[j]);
                }
                $("#" + key).append("</ul>");
            }
        }
    }
}
function handleSidebar2(){
    //解决一级菜单
    $(document).on('click',"ul .has-sub a",function() {
        var thisElement=$(this);
        var slideOffest=-200;
        var slideSpeed=200;

        var sub=jQuery(this).next();
        if(sub.is(":visible")){//如果可见：则折叠
            jQuery(".arrow",jQuery(this)).removeClass("open");
            jQuery(".arrow",jQuery(this)).removeClass("fa-caret-down");
            jQuery(".arrow",jQuery(this)).addClass("fa-caret-left");
            jQuery(this).parent().removeClass("open");
            sub.slideUp(slideSpeed);

        }else{
            jQuery(".arrow",jQuery(this)).addClass("open");
            jQuery(".arrow",jQuery(this)).removeClass("fa-caret-left");
            jQuery(".arrow",jQuery(this)).addClass("fa-caret-down");
            jQuery("this").parent().addClass("open");
            sub.slideDown(slideSpeed);
        }
    });
    $(document).on('click',"li[class^='has-sub-sub']>a",function() {
        var sub=jQuery(this).next();
        if(sub.is(":visible")){
            jQuery(".arrow",jQuery(this)).removeClass("open");
            jQuery(".arrow",jQuery(this)).removeClass("fa-caret-down");
            jQuery(".arrow",jQuery(this)).addClass("fa-caret-left");
            jQuery(this).parent().removeClass("open");
            sub.slideUp(200);
        }else{
            jQuery(".arrow",jQuery(this)).addClass("open");
            jQuery(".arrow",jQuery(this)).removeClass("fa-caret-left");
            jQuery(".arrow",jQuery(this)).addClass("fa-caret-down");
            jQuery(this).parent().addClass("open");
            sub.slideDown(200);
        }
    });
}
function resetIframe(e){
    if(e.attr("src"))
    {
        var bodyHeight=$("body").height();
        // e.contents().find("body").css("max-height",bodyHeight-$("#header").height());
        var height=e.contents().find("body").height();
        //alert(height)
        //alert(e.css("height"));
        //if(e.css("height")==height+"px"){
        //    clearInterval(timer);
        //}
        e.css("height",height);
        //alert(e.css("height"));
    }
    else
    {e.css("height",0);}
}

function setIframe(src){
    $("#iframe").attr("src",src);
    $("#iframe").css("height","0");
    timer=setInterval("resetIframe($('#iframe'))",500);



    //resetIframe($("#iframe"));
}
/**
 *
 * 描述：js实现的map方法
 * @returns {Map}
 */
function Map(){
    var struct = function(key, value) {
        this.key = key;
        this.value = value;
    };
    // 添加map键值对
    var put = function(key, value){
        for (var i = 0; i < this.arr.length; i++) {
            if ( this.arr[i].key === key ) {
                this.arr[i].value = value;
                return;
            }
        };
        this.arr[this.arr.length] = new struct(key, value);
    };
    // 根据key获取value
    var get = function(key) {
        for (var i = 0; i < this.arr.length; i++) {
            if ( this.arr[i].key === key ) {
                return this.arr[i].value;
            }
        }
        return null;
    };
    var getValueByIndex = function (index) {
        return this.arr[index].value;
    };
    var getKeyByIndex=function(index){
        return this.arr[index].key;
    };
    // 根据key删除
    var remove = function(key) {
        var v;
        for (var i = 0; i < this.arr.length; i++) {
            v = this.arr.pop();
            if ( v.key === key ) {
                continue;
            }
            this.arr.unshift(v);
        }
    };
    // 获取map键值对个数
    var size = function() {
        return this.arr.length;
    };
    // 判断map是否为空
    var isEmpty = function() {
        return this.arr.length <= 0;
    };
    this.arr = new Array();
    this.get = get;
    this.put = put;
    this.remove = remove;
    this.size = size;
    this.isEmpty = isEmpty;
    this.getValueByIndex=getValueByIndex;
    this.getKeyByIndex=getKeyByIndex;
}
