<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2016/3/9
  Time: 23:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%@ page import="app.sys.UploadData.service.MetaTxtfiled2TfieldTxtService" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  List<Object> chinese = (List<Object>) session.getAttribute("IdenChineseName");
  ArrayList<List<Object>> identifies = (ArrayList<List<Object>>) session.getAttribute("Identifies");
%>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link href="/css/bootstrap/bootstrap.css" rel="stylesheet"/>
  <script src="/js/jquery-1.8.3.min.js"></script>
  <script src="/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
<p>生成的错误信息在D盘errorInfo.txt中</p>
<table>
  <thead>
  <th>中文名</th>
  <th>浙江省规范表</th>
  </thead>
  <%for (int i = 0; i < chinese.size(); i++) { %>
  <tr name="listGroup">
    <td class="one" value="<%=i%>"><%=chinese.get(i).toString()%>
    </td>
    <td class="two">
      <select>
        <% for (int j = 0; j < identifies.get(i).size(); j++) {%>
        <option value="<%=identifies.get(i).get(j).toString()%>"><%=identifies.get(i).get(j).toString()%>
        </option>
        <%}%>
      </select>
    </td>
  </tr>
  <%}%>
</table>
<button id="subbb" type="submit">提交</button>

<script>
  $("#subbb").click(function () {

    var b = [];
    $("[name=listGroup]").each(function () {
      var a = [];
      a.push($(this).children(".one").attr("value"));
      a.push($(this).children(".two").children("select").val());
      b.push(a);

    });
    var param = {
      "data": JSON.stringify(b)
    };
    var res = $.post("/GenerateSQL",
            param,
            function (data) //回调函数
            {
              alert(data);
            }, "json"
    )
  });
</script>
</body>
</html>
