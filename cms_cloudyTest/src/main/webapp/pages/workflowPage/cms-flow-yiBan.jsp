<%@ page language="java"   pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>宇航元器件选用平台</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
     <%@include file="/base.jsp" %>
     <link rel="stylesheet" href="css/cms-headerPublic.css" />
    <link rel="stylesheet" href="css/cms-flow-yiBan.css"/>
    <link rel="stylesheet" href="css/cms-flow-shenPi.css"/>
    <link rel="stylesheet" href="scripts/jquery-ui-1.11.4/jquery-ui.theme.css">
            <!-- ZTree样式引入 -->
	 <link rel="stylesheet" href="zTreeStyle/zTreeStylepart.css" type="text/css"/>
	 <link rel="stylesheet" href="zTreeStyle/newzTreeStyle.css" type="text/css"/>
	<!-- ZTree核心js引入 -->
	 <script type="text/javascript" src="js-tree/jquery.ztree.core.js"></script> 
</head>
<body>
<%@include file="/public.jsp" %>
	<div class="containerAll">
		<div class="containerAllPage">
		<div id="main">
		<%@include file="/header.jsp"%>
		<div class="page-message">
        <h3><span class="label label-default">Now</span><a  href="pages/loginpage/index.jsp"><fmt:message  key="homePage"/></a>><a class="active"><fmt:message  key="flow-do"/></a></h3>
    </div>
        <div class="table-responsive">
        <div class="flow-yiban">
             <div class="left" id="treeDiv">
                    <ul id="flowTree" class="ztree"></ul>
                </div>
        </div>
        <div class="flow-yiban-right">
<div class="flow-yiban-head">
          <div class="flow-yiban-head-input">
        <table class="yibanTable table">
            <tr>
                <td>
                    <span><fmt:message  key="rwmc"/>：</span><input id="taskName" type="text" class="form-control"/>
                </td>                
                <td class="chooseUser">
                    <a class="btn btn-xs btn-danger flow-daiban-chooseBtn" onclick="initOneUserList('','','processCreatePerson')"><fmt:message  key="selectBtn1"/></a>
                    <span><fmt:message  key="lcfqr"/>：</span><span id="processCreatePerson" style="display:none"></span><span id="processCreatePersonShow" class="chooseUserBox"></span>
                </td>
                <td rowspan="2" class="daibanBtns">
                         <a class="btn btn-danger flow-daiban-head-soso" onclick="initDaiBan('1');"><span class="glyphicon glyphicon-search view-soso"></span>  <fmt:message  key="serachBtn"/></a>
                         <a class="btn btn-danger flow-daiban-head-reset" onclick="resetDaiBanSearch();"><span class="glyphicon glyphicon-repeat view-soso"></span>  <fmt:message  key="ResetBotton"/></a>
                </td>
            </tr>
            <tr>
                <td>
                    <span><fmt:message  key="fqsj"/>：</span><input id="createTimeBegin" type="text" class="form-control" name="hiredate" readonly/>
                </td>
                <td>
                    <span><fmt:message  key="flow-createEnd"/>：</span><input id="createTimeFinish" type="text" class="form-control" name="hiredate" readonly/>
                </td>
            </tr>
        </table>
</div>
</div>
<div class="flow-yiban-table-box">
    <table class="table table-bordered table-hover yiBan-table">
        <thead class="table-title">
        <tr class="bg-gray">
        	<td><fmt:message  key="upload-seqno"/></td>
        	<td><fmt:message  key="bt"/></td>
        	<td><fmt:message  key="lcfqr"/></td>
        	<td><fmt:message  key="rwmc"/></td>
        	<td><fmt:message  key="fqsj"/></td>
        	<td><fmt:message  key="dblx"/></td>
        	<td><fmt:message  key="lcjdzt"/></td>
        	<td><fmt:message  key="operationBtn"/></td>
        </tr>
        </thead>
        <tbody id="processDaibanList">
        </tbody>
    </table>
    </div>
    </div>
    <div class="table-footers">
               <div id="daibanPagination" class="pagination"></div>
     </div>
</div>
<div class="shenPi-agree-box-chooseUser SPBox">
    <div class="shenPi-agree-box-chooseUser-header bg-gray">
        <a><span class="glyphicon glyphicon-tasks"></span>  <fmt:message  key="selectUser"/></a>
        <button type="button" class="close shenPi-agree-box-chooseUser-close" aria-label="Close"><span>&times;</span></button>
    </div>
    <div class="choose-header2">
        <input type="text" class="form-control" id="searchText" placeholder=<fmt:message  key="placeholder-loginname"/>></input>
        <a class="btn btn-danger" onclick="searchOneUser()"><span class="glyphicon glyphicon-search"></span>  <fmt:message  key="serachBtn"/></a>
    </div>
    <div class="shenPi-agree-box-chooseUser-body">
        <div class="nodeUser-choose-tree">
            <div id="ejstree1" class="demo jstree jstree-1 jstree-default" role="tree" aria-multiselectable="true" tabindex="0" aria-activedescendant="ej1_2" aria-busy="false">
                <ul id="userTree" class="ztree"></ul>
            </div>
        </div>
        <div class="choose-table-box">
            <table class="table table-striped table-hover table-bordered">
                <thead class="table-title">
                <tr>
                    <td class="choose-table-input"></td>
                    <td><fmt:message  key="name"/></td>
                    <td><fmt:message  key="user-accord"/></td>
                </tr>
                </thead>
                <tbody id="show-user">
                </tbody>
            </table>
        </div>
        <div class="table-footer">
           <div id="Pagination" class="pagination"></div>
        </div>
        <div class="choose-bottom">
            <a class="btn btn-gray" onclick="closeProcessSelectUsers()"><span class="glyphicon glyphicon-remove-circle"></span>  <fmt:message  key="resetBtn"/></a>
            <a class="btn btn-gray" onclick="processOneSelectUser()"><span class="glyphicon glyphicon-ok-circle"></span>  <fmt:message  key="determine"/></a>
        </div>
    </div>
</div>
<div class="flow-yiban-Window">
    <div class="flow-yiban-Window-header bg-gray">
        <a><span class="glyphicon glyphicon-tasks"></span>  <fmt:message  key="lcxxx"/></a>
        <button type="button" class="close flow-yiban-Window-close" aria-label="Close"><span>&times;</span></button>
    </div>
    <div class="flow-yiban-Window-body">
        <div class="flow-yiban-Window-box">
            <table class="table table-striped table-hover table-bordered">
                <tr>
                    <td><span>流程实例标题:</span></td>
                    <td id="detailtitle"></td>
                    <td><span>流程节点名称:</span></td>
                    <td id="detailprocessNodeTaskname"></td>
                </tr>
                <tr>
                    <td><span>流程任务状态:</span></td>
                    <td id="detailprocessTaskState"></td>
                    <td><span>流程发起人:</span></td>
                    <td id="detailprocessTaskPerson">83rhfh98347</td>
                </tr>
                <tr>
                    <td><span>任务开始时间:</span></td>
                    <td id="detailprocessTaskStarttime">328947859897</td>
                    <td><span>任务结束时间:</span></td>
                    <td id="detailprocessTaskExpirtime">83rhfh98347</td>
                </tr>
                <tr>
                    <td><span>审批意见:</span></td>
                    <td id="detailprocessAproveAdvice">dj5h</td>
                    <td><span>任务ID:</span></td>
                    <td id="detailcdefine1">测试管理员发起流程2</td>
                </tr>
                <tr>
                    <td><span>流程实例ID:</span></td>
                    <td id="detailcdefine2"></td>
                    <td><span>流程定义ID:</span></td>
                    <td id="detailcdefine3">测试管理员发起流程2</td>
                </tr>
                <tr>
                    <td><span>流程key:</span></td>
                    <td id="detailprocessKey">2017-08-10</td>
                    <td><span>流程名称:</span></td>
                    <td id="detailprocessName">2018-08-10</td>
                </tr>
            </table>
        </div>
    </div>
</div>
</div>
<%@include file="/footer.jsp"%>
</div>
	</div>
<script type="text/javascript" src="<%=path %>/scripts/javascript.js"></script>
<script type="text/javascript" src="<%=path %>/scripts/workFlowJavascript.js"></script>
<script type="text/javascript" src="scripts/laydate/laydate.js"></script>
<script>
$(function(){
  /*   $("[name='hiredate']").datepicker(
    	{dateFormat: "yy-mm-dd"}
    ); */
    laydate.render({
		  elem: '#createTimeBegin'
		});
  laydate.render({
		  elem: '#createTimeFinish'
		});
    $('.flow-yiban-Window,.shenPi-agree-box-chooseUser').draggable();
//     initYibanProcess();
    flowTree();
    initDaiBan("1");//已办数据初始化
    initOnegroupUserTree();//加载成员树
})
</script>
</body>
</html>