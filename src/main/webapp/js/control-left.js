/**
 * �����������
 * ��ർ���������ݣ�{level�� ��priId:  ,name: ;action:    ;description:   ;upPriId:   ;}
 */

function addLeftItem(){
    var levelList=$("input[name='level']");
    var priIdList=$("input[name='priId']");
    var nameList=$("input[name='name']");
    var actionList=$("input[name='action']");
    var descriptionList=$("input[name='description']");
    var upPriIdList=$("input[name='upPriId']");
    var totalLevel=1;
    var levelContent=new Map();
    levelContent.put("leftcontent","");
    addFirstItem(levelList,priIdList,nameList,actionList
        ,descriptionList,upPriIdList,levelContent,totalLevel);
}
function addFirstItem(levelList,priIdList,nameList,actionList,
                      descriptionList,upPriIdList,levelContent,totalLevel){
    var size=priIdList.length;
    var removeList=new Array();
    if(size==0){
        appendStr(levelContent);
        configClass(totalLevel);
        return ;
    }

    for(var i=0;i<size;i++){
        var level=levelList[i].value;
        if(level==totalLevel){
            var key="priId"+priIdList[i].value;

            //���ݲ��������ʽ��
            var levelClass="has";
            for(var m=0;m<totalLevel;m++){
                levelClass+="-sub";
            }
            //��levelcontent���������
            if(totalLevel==1){

                ///�������㴦��Ĳ�ͬ���������ߵ���ʽͼ�갴ť
                var str="<li id='priId"+priIdList[i].value+"' class='"+levelClass+"'><a href='#' class='' onclick=setIframe('/index.jsp')>"+
                    "<i class='fa fa-th-large fa-fw'></i><span class='menu-text'>"+nameList[i].value+"</span></a></li>";
                var content=levelContent.get("leftcontent");
                levelContent.put("leftcontent",content+str);
            }else{
                var str="<li id='priId"+priIdList[i].value+"' class='"+levelClass+"'><a href='#'>"+
                    "<span class='menu-text'>"+nameList[i].value+"</span></a></li>";
                var content=levelContent.get("priId"+upPriIdList[i].value);
                levelContent.put("priId"+upPriIdList[i].value,content+str);
            }
            levelContent.put(key,"<ul>");
            removeList.push(i);
        }
    }
    for(var j=0;j<removeList.length;j++){
        var remove=removeList[j];
        levelList.splice(remove,1);
        priIdList.splice(remove,1);
        nameList.splice(remove,1);
        actionList.splice(remove,1);
        descriptionList.splice(remove,1);
        upPriIdList.splice(remove,1);
    }
    totalLevel=1+totalLevel*1;
    addFirstItem(levelList,priIdList,nameList,actionList,descriptionList,upPriIdList,levelContent,totalLevel)
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
/**
 *
 * ������jsʵ�ֵ�map����
 * @returns {Map}
 */
function Map(){
    var struct = function(key, value) {
        this.key = key;
        this.value = value;
    };
    // ���map��ֵ��
    var put = function(key, value){
        for (var i = 0; i < this.arr.length; i++) {
            if ( this.arr[i].key === key ) {
                this.arr[i].value = value;
                return;
            }
        };
        this.arr[this.arr.length] = new struct(key, value);
    };
    // ����key��ȡvalue
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
    // ����keyɾ��
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
    // ��ȡmap��ֵ�Ը���
    var size = function() {
        return this.arr.length;
    };
    // �ж�map�Ƿ�Ϊ��
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
