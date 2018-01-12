<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html lang="zh-CN" class="ax-vertical-centered">
<head>
    <title>图书馆管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="<%=basePath%>static/plugins/bootstrap-3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=basePath%>static/plugins/bootstrap-3.3.5/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="<%=basePath%>static/plugins/bootstrap-3.3.5/css/bootstrap-admin-theme.css">
    <link rel="stylesheet" href="<%=basePath%>static/plugins/datatables-1.10.8/css/dataTables.bootstrap.css">
    <link rel="stylesheet" href="<%=basePath%>static/css/common.css">
    <script src="<%=basePath%>static/plugins/jquery-1.11.3/jquery.min.js"></script>
    <script src="<%=basePath%>static/plugins/bootstrap-3.3.5/js/bootstrap.min.js"></script>
    <script src="<%=basePath%>static/plugins/bootstrap-3.3.5/js/bootstrap-dropdown.min.js"></script>
    <script src="<%=basePath%>static/plugins/datatables-1.10.8/js/jquery.dataTables.zh_CN.js"></script>
    <script src="<%=basePath%>static/plugins/datatables-1.10.8/js/dataTables.bootstrap.js"></script>
    <script src="<%=basePath%>static/js/common.js"></script>
    <script src="<%=basePath%>static/js/student/book.js"></script>
</head>
<body class="bootstrap-admin-with-small-navbar">
    <nav class="navbar navbar-default navbar-fixed-top bootstrap-admin-navbar bootstrap-admin-navbar-under-small" role="navigation">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="collapse navbar-collapse main-navbar-collapse">
                        <a class="navbar-brand" href="#"><strong>欢迎使用图书馆管理系统</strong></a>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a href="#" role="button" class="dropdown-toggle" data-hover="dropdown"> <i class="glyphicon glyphicon-user"></i> 欢迎您，${username} <i class="caret"></i></a>
                                <ul class="dropdown-menu">
                                    <li><a href="<%=basePath%>student/student">修改</a></li>
                                    <li role="presentation" class="divider"></li>
                                    <li><a href="<%=basePath%>logout">退出</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <div class="container">
        <!-- left, vertical navbar & content -->
        <div class="row">
            <!-- left, vertical navbar -->
            <div class="col-md-2 bootstrap-admin-col-left">
                <ul class="nav navbar-collapse collapse bootstrap-admin-navbar-side">
                    <li class="active">
                        <a href="<%=basePath%>student/book"><i class="glyphicon glyphicon-chevron-right"></i> 图书查询</a>
                    </li>
                    <li>
                        <a href="<%=basePath%>student/borrowInfo"><i class="glyphicon glyphicon-chevron-right"></i> 借阅信息</a>
                    </li>
                    <%--<li>--%>
                        <%--<a href="#"><i class="glyphicon glyphicon-chevron-right"></i> 新书提醒</a>--%>
                    <%--</li>--%>
                        <%--<li>--%>
                    <%--<a href="#"><i class="glyphicon glyphicon-chevron-right"></i> 我的关注</a>--%>
                    <%--</li>--%>
                </ul>
            </div>
            <!-- content -->
            <div class="col-md-10">
                <%--<div class="row">--%>
                    <%--<div class="col-lg-12">--%>
                        <%--<div class="page-header">--%>
                            <%--<h1>图书管理</h1>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default bootstrap-admin-no-table-panel">
                            <div class="panel-heading">
                                <div class="text-muted bootstrap-admin-box-title">查询</div>
                            </div>
                            <div class="bootstrap-admin-no-table-panel-content bootstrap-admin-panel-content collapse in">
                                <form class="form-horizontal">
                                    <div class="col-lg-5 form-group">
                                        <label class="col-lg-4 control-label" for="query_bno">图书编号</label>
                                        <div class="col-lg-8">
                                            <input class="form-control" id="query_bno" type="text" value="">
                                            <label class="control-label" for="query_bno" style="display: none;"></label>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 form-group">
                                        <label class="col-lg-4 control-label" for="query_bname">图书名称</label>
                                        <div class="col-lg-8">
                                            <input class="form-control" id="query_bname" type="text" value="">
                                            <label class="control-label" for="query_bname" style="display: none;"></label>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 form-group">
                                        <button type="button" class="btn btn-primary" id="btn_query" onclick="query()">查询</button>
                                        <button type="button" class="btn btn-primary" id="btn_return" onclick="javascript:window.location.href='<%=basePath%>student'">返回</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <table id="data_list" class="table table-striped table-bordered" cellspacing="0" width="100%">
                            <thead>
                            <tr>
                                <th>图书编号</th>
                                <th>图书名称</th>
                                <th>分类</th>
                                <th>作者</th>
                                <th>价格</th>
                                <th>总数量</th>
                                <th>在馆数量</th>
                                <th>上架时间</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="modal_detail" tabindex="-1" role="dialog" aria-labelledby="addModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="detailModalLabel">查看</h4>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <form class="form-horizontal" id="form_detail">
                            <div class="row">
                                <div class="col-lg-12 form-group">
                                    <label class="col-lg-3 control-label" for="detail_bno">图书编号</label>
                                    <div class="col-lg-9">
                                        <input class="form-control" id="detail_bno" type="text" value="" disabled>
                                        <label class="control-label" for="detail_bno"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 form-group has">
                                    <label class="col-lg-3 control-label" for="detail_bname">图书名称</label>
                                    <div class="col-lg-9">
                                        <input class="form-control" id="detail_bname" type="text" value="" disabled>
                                        <label class="control-label" for="detail_bname"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 form-group">
                                    <label class="col-lg-3 control-label" for="detail_tid">图书分类</label>
                                    <div class="col-lg-9">
                                        <select class="form-control" id="detail_tid" disabled>
                                            <option value="">请选择</option>
                                            <c:forEach var="bookType" items="${bookTypes}">
                                                <option value="${bookType.id}">
                                                    <c:out value="${bookType.tname}" />
                                                </option>
                                            </c:forEach>
                                        </select>
                                        <label class="control-label" for="detail_tid"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 form-group">
                                    <label class="col-lg-3 control-label" for="detail_author">作者</label>
                                    <div class="col-lg-9">
                                        <input class="form-control" id="detail_author" type="text" value="" disabled>
                                        <label class="control-label" for="detail_author"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 form-group">
                                    <label class="col-lg-3 control-label" for="detail_price">价格</label>
                                    <div class="col-lg-9">
                                        <input class="form-control" id="detail_price" type="text" value="" disabled>
                                        <label class="control-label" for="detail_price"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 form-group">
                                    <label class="col-lg-3 control-label" for="detail_total">数量</label>
                                    <div class="col-lg-9">
                                        <input class="form-control" id="detail_total" type="text" value="" disabled>
                                        <label class="control-label" for="detail_total"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 form-group">
                                    <label class="col-lg-3 control-label" for="detail_remain">在馆数量</label>
                                    <div class="col-lg-9">
                                        <input class="form-control" id="detail_remain" type="text" value="" disabled>
                                        <label class="control-label" for="detail_remain"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 form-group">
                                    <label class="col-lg-3 control-label" for="detail_brief">简介</label>
                                    <div class="col-lg-9">
                                        <textarea class="form-control" rows="5" id="detail_brief" placeholder="500字以内" disabled></textarea>
                                        <label class="control-label" for="detail_brief"></label>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" id="btn_detail_close" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
    <div>
    	<input type="hidden" id="basePath" value="<%=basePath%>"/>
    </div>
</body>
</html>