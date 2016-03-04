/**
 * 添加左侧的内容
 * 左侧导航栏的内容：{level： ，priId:  ,name: ;action:    ;description:   ;upPriId:   ;}
 */

function addLeftItem(){
    var levelList=$("input[name='level']");
    var tidList=$("input[name='tid']");
    var nameList=$("input[name='name']");
    var upIdList=$("input[name='upId']");
    var totalLevel=1;
    var levelContent=new Map();
    var removeList=new Array();
    levelContent.put("leftcontent","");
    addFirstItem(levelList,tidList,nameList,upIdList,removeList,levelContent,totalLevel);
}
function addFirstItem(levelList,tidList,nameList,upIdList,removeList,levelContent,totalLevel) {
    var size = tidList.length;
    //var removeList1 = new Array();
    //var removeList2 = new Array();
    //var removeList3 = new Array();
    //var removeList4 = new Array();

    if (size == removeList.length) {
        appendStr(levelContent);
        configClass(totalLevel);
        return;
    }

    for(var i=0;i<size;i++) {
        var level = levelList[i].value;
        if (level == totalLevel) {
            var key = "id" + tidList[i].value;
            //根据层次设置样式：
            var levelClass = "has";
            for (var m = 0; m < totalLevel; m++) {
                levelClass += "-sub";
            }
            //在levelcontent里添加内容
            if (upIdList[i].value == "-1") {

                ///和其他层处理的不同：添加了左边的样式图标按钮
                var str = "<li id='id" + tidList[i].value + "' class='" + levelClass + "'><a href='#' class='' >" +
                    "<i class='fa fa-th-large fa-fw'></i><span class='menu-text'>" + nameList[i].value + "</span></a></li>";
                var content = levelContent.get("leftcontent");
                levelContent.put("leftcontent", content + str);
            } else {
                var str = "<li id='id" + tidList[i].value + "' class='" + levelClass + "'><a href='#'>" +
                    "<span class='menu-text'>" + nameList[i].value + "</span></a></li>";
                var content = levelContent.get("id" + upIdList[i].value);
                levelContent.put("id" + upIdList[i].value, content + str);
            }
            levelContent.put(key, "<ul>");
            removeList.push(tidList[i].value);
            //removeList1.push(levelList[i].value);
            //removeList2.push(tidList[i].value);
            //removeList3.push(nameList[i].value);
            //removeList4.push(upIdList[i].value);

        }
    }
    //for(var j=0;j<removeList1.length;j++){
    //        var remove1=removeList1[j];
    //    var remove2=removeList2[j];
    //    var remove3=removeList3[j];
    //    var remove4=removeList4[j];
    //        levelList.remove(remove1);
    //        tidList.remove(remove2);
    //        nameList.remove(remove3);
    //        upIdList.remove(remove4);
    //}
    totalLevel=1+totalLevel*1;
    addFirstItem(levelList,tidList,nameList,upIdList,removeList,levelContent,totalLevel)
}

function configClass(totalLevel){
    var str="has";
    var sub="sub";
    for(var i=0;i<totalLevel;i++){
        str+="-sub";
        if(i!=0){
            sub+="-sub";
        }
        if($("."+str).children("ul").children("li").length>0){
            if(i==totalLevel*1-1){
                $("."+str).children("ul").addClass(sub);
            }else{
                $("."+str).children("a").append("<i  class='fa fa-caret-left arrow'></i>");
                $("."+str).children("ul").addClass(sub);
            }

        }

    }

}
function appendStr(levelContent){
    var size=levelContent.size();
    for( var i=0;i<size;i++ ) {
        var value = levelContent.getValueByIndex(i);
        var key = levelContent.getKeyByIndex(i);
        if (value != "") {
            if (key == "leftcontent") {
                $("#" + key).append(value);
            } else {
                var sttt = value + "</ul>";
                $("#" + key).append(sttt);
            }
        }
    }
}

function resetIframe(e){
    if(e.attr("src"))
    {
        var bodyHeight=$("body").height();
        e.contents().find("body").css("min-height",bodyHeight-$("#header").outerHeight());
        var height=e.contents().find("html").height();
        e.css("height",height);
    }
    else
    {e.css("height",0);}
}

function setIframe(src){
    $("#iframe").attr("src",src);
    resetIframe($("#iframe"));
}
Array.prototype.indexOf = function(val) {
        for (var i = 0; i < this.length; i++) {
              if (this[i].value == val) return i;
           }
       return -1;
   };
Array.prototype.remove = function(val) {
       var index = this.indexOf(val);
       if (index > -1) {
               this.splice(index, 1);
             }
     };

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
