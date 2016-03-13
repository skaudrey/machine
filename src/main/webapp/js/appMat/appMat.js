/**
 * Created by Skaudrey on 2016/3/11.
 */

//定义常数
    /*新建的类型*/
var ADD_TYPE={
    MATERIAL_TYPE:"newMatType",//材料名控件id
    BUSINESS_TYPE:"newWorkType"//业务名控件Id
};
/*页面控件ID的list*/
var CONTROL_ID={
    DEPTID:"depart",
    APPID:"work",
    NEW_MAT_TYPE_NAME:"newMatType",
    NEW_BUSINESS_TYPE_NAME:"newWorkType",
}
var URL_REQUEST={
    GET_APP_BY_DEPT:"/material/getAppByDept",//根据部门获取业务
    GET_MAT_BY_APPID:"/material/getMats",//根据业务类型ID获取材料
    ADD_NEW_MATERIAL_TYPE:"/material/addMatType",
    ADD_NEW_BUSINESS_TYPE:"/material/addWorkType",
    ADD_MAT_TO_BUSINESS:"/material/addMaterial",//对于特定业务添加所需材料
};


//点击增加显示隐藏div
$(document).ready(function () {
    $("#mat_typeId").bind("change",function(){
        if($(this).val()==-1){
            //alert("选中");
            $('#newMatTypeDiv').css("display","block");
        }
        else{
            $('#newMatTypeDiv').css("display","none");
        }
    });
    /*$("#app_type").bind("change",function(){
        if($(this).val()==-1){
            //alert("选中");
            $('#newWorkTypeDiv').css("display","block");
        }
        else{
            $('#newWorkTypeDiv').css("display","none");
        }
    });*/

    //根据部门id获取对应的业务名称类型
    $("#depart").bind("change",function(){
        $("#work").empty();
        $("#work").append("<option value='-1'>--请选择--</option>");
        var params={
            deptId:$(this).val()
        };
        $.ajax({
            type: "POST",
            url: URL_REQUEST.GET_APP_BY_DEPT,
            data: params,
            dataType: "json",
            success:function(result){
                $.each(result,function(commentIndex,comment){
                    $("#work").append("<option value='"+comment[0]+"'>"+comment[1]+"</option>");
                });
            }
        });
    });

    //根据业务id获取对应的业务材料信息
    $("#work").bind("change",function(){
        //清空列表信息
        $("#materialList").empty();
        var params={
            appId:$(this).val()
        };
        $.ajax({
            type: "POST",
            url: URL_REQUEST.GET_MAT_BY_APPID,
            data: params,
            dataType: "json",
            success:function(result){
                $.each(result,function(commentIndex,comment){
                    var addString="<td><select name='matId-"+comment[0]+"'><option value='0'>否</option><option value='1'>是</option></select>";

                    if(comment[2]=='1')
                        addString="<td><select name='matId-"+comment[0]+"'><option value='1'>是</option><option value='0'>否</option></select>";

                    $("#materialList").append("<tr>" +
                        "<td><input type='checkbox' class='pull-left' value='"+comment[0]+"' name=\"matId\"</td>" +
                        "<td>"+comment[1]+"</td>"+addString+"<td><input type='text' name='matId' value='"+comment[3]+"'/></td></tr>");
                });
            }
        });
    });

    /*材料表中查找哪行被选中，删除*/
    $("#deleteMat").click(function(){
        //获取选中的复选框，然后循环遍历删除
        var ckbs=$("input[name=matId]:checked");
        if(ckbs.size()==0){
            alert("none");
            return;
        }
        ckbs.each(function(){
            $(this).parent().parent().remove();
        });
    })
});

//将输入的类型增加到select选项中
function resetType(objID,selectID,value){

    //隐藏div
    var inputValue=$('#'+objID).val();
    $('#'+selectID).prepend("<option value='"+value+"'>"+inputValue+"</option>");
    $('#'+objID+'Div').css("display","none");
}

//添加新的类型——材料或业务类型
function addNewType(objID,selectID){
    //设置请求服务的地址
    //alert($('#'+CONTROL_ID.DEPTID).val());
    var requestUrl=URL_REQUEST.ADD_NEW_BUSINESS_TYPE;
    var param={
        deptId:$('#'+CONTROL_ID.DEPTID).val(),
        btName:$('#'+CONTROL_ID.NEW_BUSINESS_TYPE_NAME).val()
    };
    if(objID==ADD_TYPE.MATERIAL_TYPE){
        requestUrl=URL_REQUEST.ADD_NEW_MATERIAL_TYPE;
        param={
            matName:$('#'+CONTROL_ID.NEW_MAT_TYPE_NAME).val(),
        }
    }
    //alert(JSON.stringify(param));
    $.ajax({
        type: "POST",
        url: requestUrl,
        data: param,
        dataType: "json",
        success:function(result){
            $.each(result,function(commentIndex,comment){
                if(comment==-1){
                    alert("新建失败");
                }
                else{
                    alert(comment);
                    if(objID==ADD_TYPE.MATERIAL_TYPE){
                        resetType(objID,selectID,comment);
                    }
                    alert("更新完成");
                }
            });
        }
    });

}

function refreshMatTable(objId,selectId,changeObjId){
    addNewType(objId,selectId);
    trigAppSelect(changeObjId);
}

//添加新业务类型后手动触发select
function trigAppSelect(objId){
    $("#"+objId).trigger("change");
}

function saveMats(){
    /*保存材料至数据库*/

    var param={
        matId:$('#mat_typeId').val(),
        appId:$('#work').val(),
        amount:$('#mat_amount').val(),
        isCopy:$('#mat_isCopy').val()
    }

    $.ajax({
        type: "POST",
        url: URL_REQUEST.ADD_MAT_TO_BUSINESS,
        data: param,
        dataType: "json",
        success:function(result){
            $.each(result,function(commentIndex,comment){
                if(comment==-1){
                    alert("新建失败");
                }
                else{
                    alert("添加完成");
                    //更新界面
                    $("#work").trigger("change");
                }
            });
        }
    });
}