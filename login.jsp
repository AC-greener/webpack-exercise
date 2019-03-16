<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>售后管理系统登录</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/layui.css">
	<jsp:include page="resource_path.jsp" flush="true"/>
</head>
<body class="login-bg">
    
    <div class="login layui-anim layui-anim-up">
        <div class="message">售后管理系统登录</div>
        <div id="darkbannerwrap"></div>
        
        <form method="post" class="layui-form" id="loginfrom" >
            <input name="username" placeholder="用户名"   type="text" lay-verify="required" class="layui-input" >
            <hr class="hr15">
            <input name="password" lay-verify="required" placeholder="密码"  type="password" class="layui-input">
            <hr class="hr15">
            <input value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit">
            <hr class="hr20" >
        </form>
    </div>
    <%--<script>--%>
        <%--$(function  () {--%>
            <%--layui.use('form', function(){--%>
              <%--var form = layui.form;--%>
              <%--// layer.msg('玩命卖萌中', function(){--%>
              <%--//   //关闭后的操作--%>
              <%--//   });--%>
              <%--//监听提交--%>
              <%--form.on('submit(login)', function(data){--%>
                <%--// alert(888)--%>
                <%--layer.msg(JSON.stringify(data.field),function(){--%>
                    <%--location.href='${pageContext.request.contextPath }/index.jsp'--%>
                <%--});--%>
                <%--return false;--%>
              <%--});--%>
            <%--});--%>
        <%--})--%>
    <%--</script>--%>
    <script src="${pageContext.request.contextPath }/assets/layui.js" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath }/assets/layui.all.js"></script>
    <script src="${pageContext.request.contextPath }/assets/js/jquery.min.js" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath }/assets/js/toastr.min.js" charset="utf-data8"></script>
<script>
    /**
     * 通用表单提交(AJAX方式)（新增）
     */
        //创建异步对象
    // var xhr = new XMLHttpRequest();
    // //设置请求的类型及url
    // //post请求一定要添加请求头才行不然会报错
    // xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    // xhr.open('post', '/User/login' );
    // //发送请求
    // xhr.send('"username": username,\n' +
    //     '                     "password":password},');
    // xhr.onreadystatechange = function () {
    //     // 这步为判断服务器是否正确响应
    //     if (xhr.readyState == 4 && xhr.status == 200) {
    //         console.log(xhr.responseText);
    //     }
    // };
    <%--form.on('submit(login)', function (data) {--%>
        <%--//$("#submit").attr("disabled",true);--%>
        <%--var username = document.getElementsByName("username");--%>
        <%--var password=document.getElementsByName("password");--%>
        <%--$.ajax({--%>
            <%--url : '${pageContext.request.contextPath }/User/register.do',--%>
            <%--data : {"username": username,--%>
                     <%--"password":password},--%>
            <%--type : "post",--%>
            <%--dataType : "json",--%>
        <%--}).done(--%>
            <%--function(res) {--%>
                <%--alert(0);--%>
                <%--alert( res.message);--%>
                <%--var list = res.split('_');--%>
                <%--if (parseInt(list[0]) > 0) {--%>
                    <%--setTimeout(function(){  //使用  setTimeout（）方法设定定时2000毫秒--%>
                        <%--//关闭模态框--%>
                        <%--// 父页面刷新--%>
                        <%--window.location.reload();--%>
                    <%--},2000);--%>
                <%--}--%>
            <%--}--%>
        <%--).fail(--%>
            <%--function(res) {--%>
                <%--alert(21);--%>
                <%--var data = res.responseText;--%>
                <%--var list = data.split('_');--%>
                <%--if(list[1].indexOf('add') != -1){--%>
                    <%--layer.close(1);--%>
                    <%--toastr.error('新增失败！');--%>
                <%--}--%>
                <%--if(list[1].indexOf('edit') != -1){--%>
                    <%--layer.close(1);--%>
                    <%--toastr.error('修改失败！');--%>
                <%--}--%>
            <%--}--%>
        <%--)--%>
        <%--return false;--%>
    <%--});--%>

    <%--toastr.options.positionClass = 'toast-top-center'; //提示框的位置设置为中上--%>
</script>


</body>
</html>