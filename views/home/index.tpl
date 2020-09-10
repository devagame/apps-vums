<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>{{.SITE_NAME}}</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta name="author" content="" />
    <meta name="site" content="" />
    <meta name="keywords" content="">
    <meta name="description" content="{{.site_description}}">
    <!-- Bootstrap -->
    <link href="{{cdncss "/static/bootstrap/css/bootstrap.min.css"}}" rel="stylesheet">
    <link href="{{cdncss "/static/bootstrap-table/bootstrap-table.css"}}" rel="stylesheet">
    <link href="{{cdncss "/static/font-awesome/css/font-awesome.min.css"}}" rel="stylesheet">
    <link href="{{cdncss "/static/css/main.css" "version"}}" rel="stylesheet">
</head>

<body>
<div class="manual-reader manual-container">
    {{template "widgets/header.tpl" .}}
    <div class="container-fluid manual-body">
        <div class="row">
            <div class="apps-manual-list">
                {{range $index,$item := .Lists}}
                <div class="col-sm-6 col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-heading col-lg-12">
                            <div class="pull-left">{{$item.BookName}}</div>
                            <div class="pull-right">
                                <div class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-cog"></span> 操作 <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">服务器状态</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="#">设置</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!--
                        <div class="panel-body">
                            <div class="apps-manual-desc">
                                {{$item.Description}}
                            </div>
                        </div>
                        -->

                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th class="text-center"> Android </th>
                                    <th class="text-center"> IOS </th>
                                    <th class="text-center"> Windows64 </th>
                                    <th class="text-center"> MacOS </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center"><span class="label label-primary">v0.1.0.862</span></td>
                                    <td class="text-center"><span class="label label-warning">v0.1.0.662</span></td>
                                    <td class="text-center"><span class="label label-primary">v0.1.0.662</span></td>
                                    <td class="text-center"><span class="label label-primary">v0.1.0.662</span></td>
                                </tr>
                                <tr>
                                    <td class="text-center"><span class="label label-default">v0.1.0.862</span></td>
                                    <td class="text-center"><span class="label label-primary">v0.1.0.662</span></td>
                                    <td class="text-center"><span class="label label-default"></span></td>
                                    <td class="text-center"><span class="label label-default">v0.1.0.662</span></td>
                                </tr>
                                <tr>
                                    <td class="text-center"><span class="label label-default">v0.1.0.862</span></td>
                                    <td class="text-center"><span class="label label-default">v0.1.0.662</span></td>
                                    <td class="text-center"><span class="label label-default"></span></td>
                                    <td class="text-center"><span class="label label-default">v0.1.0.662</span></td>
                                </tr>
                                <tr>
                                    <td class="text-center"><span class="label label-default">v0.1.0.862</span></td>
                                    <td class="text-center"><span class="label label-default">v0.1.0.662</span></td>
                                    <td class="text-center"><span class="label label-default"></span></td>
                                    <td class="text-center"><span class="label label-default">v0.1.0.662</span></td>
                                </tr>
                                <tr>
                                    <td class="text-right small" colspan="4">
                                        <em> 负责人: {{if eq $item.RealName "" }} {{$item.CreateName}} {{else}} {{$item.RealName}} {{end}} </em>
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                        <div class="panel-footer">
                            <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#addFieldsDialogModal">版本管理</button>
                            <button type="button" class="btn btn-success btn-sm">补丁管理</button>
                            <button type="button" class="btn btn-danger btn-sm">查看API</button>
                        </div>
                    </div>
                </div>
                {{else}}
                    <div class="text-center" style="height: 200px;margin: 100px;font-size: 28px;">暂无项目</div>
                {{end}}
            </div>
        </div>

        <div class="row">
            <nav class="pagination-container">
                {{.PageHtml}}
                <div class="clearfix"></div>
            </nav>
        </div>
    </div>
    {{template "template/fields-modal.tpl" .}}
    {{template "widgets/footer.tpl" .}}
</div>
<script src="{{cdnjs "/static/jquery/1.12.4/jquery.min.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/bootstrap/js/bootstrap.min.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/bootstrap-table/bootstrap-table.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/bootstrap-table/locale/bootstrap-table-zh-CN.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/js/bootstrap.extend.js"}}" type="text/javascript"></script>
{{.Scripts}}
<script>
    var $table;
    //初始化bootstrap-table的内容
    function InitMainTable () {
        //记录页面bootstrap-table全局变量$table，方便应用
        var queryUrl = '/TestUser/FindWithPager?rnd=' + Math.random()
        $table = $('#table').bootstrapTable({
            //url: queryUrl,                      //请求后台的URL（*）
            //method: 'GET',                      //请求方式（*）
            //toolbar: '#toolbar',              //工具按钮用哪个容器
            striped: true,                      //是否显示行间隔色
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: true,                   //是否显示分页（*）
            sortable: true,                     //是否启用排序
            sortOrder: "asc",                   //排序方式
            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
            pageSize: rows,                     //每页的记录行数（*）
            pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
            search: false,                      //是否显示表格搜索
            strictSearch: true,
            showColumns: true,                  //是否显示所有的列（选择显示的列）
            showRefresh: true,                  //是否显示刷新按钮
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
            //height: 500,                      //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
            showToggle: true,                   //是否显示详细视图和列表视图的切换按钮
            cardView: false,                    //是否显示详细视图
            detailView: false,                  //是否显示父子表
            //得到查询的参数
            queryParams : function (params) {
                //这里的键的名字和控制器的变量名必须一致，这边改动，控制器也需要改成一样的
                var temp = {
                    rows: params.limit,                         //页面大小
                    page: (params.offset / params.limit) + 1,   //页码
                    sort: params.sort,      //排序列名
                    sortOrder: params.order //排位命令（desc，asc）
                };
                return temp;
            },
            columns: [{
                checkbox: true,
                visible: true                  //是否显示复选框
            }, {
                field: 'Name',
                title: '姓名',
                sortable: true
            }, {
                field: 'Mobile',
                title: '手机',
                sortable: true
            }, {
                field: 'Email',
                title: '邮箱',
                sortable: true,
                formatter: emailFormatter
            }, {
                field: 'Homepage',
                title: '主页',
                formatter: linkFormatter
            }, {
                field: 'Hobby',
                title: '兴趣爱好'
            }, {
                field: 'Gender',
                title: '性别',
                sortable: true
            }, {
                field: 'Age',
                title: '年龄'
            }, {
                field: 'BirthDate',
                title: '出生日期',
                formatter: dateFormatter
            }, {
                field: 'Height',
                title: '身高'
            }, {
                field: 'Note',
                title: '备注'
            }, {
                field:'ID',
                title: '操作',
                width: 120,
                align: 'center',
                valign: 'middle',
                formatter: actionFormatter
            }, ],
            onLoadSuccess: function () {
            },
            onLoadError: function () {
                showTips("数据加载失败！");
            },
            onDblClickRow: function (row, $element) {
                var id = row.ID;
                EditViewById(id, 'view');
            },
        });
    };
</script>
</body>
</html>