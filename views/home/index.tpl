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
                            <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#addFieldsDialogModal" onclick="{{$item.BookName}}">版本管理</button>
                            <button type="button" class="btn btn-success btn-sm">补丁管理</button>
                            <button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#showApiDialogModal" onclick="showApiModal(this, {{$item.BookName}})">查看API</button>
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
    {{template "template/api-modal.tpl" .}}
    {{template "template/fields-modal.tpl" .}}
    {{template "widgets/footer.tpl" .}}
</div>
<script src="{{cdnjs "/static/jquery/jquery.min.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/bootstrap/js/bootstrap.min.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/bootstrap-table/bootstrap-table.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/bootstrap-table/locale/bootstrap-table-zh-CN.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/js/bootstrap.extend.js"}}" type="text/javascript"></script>

<script src="{{cdnjs "/static/ace/ace.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/ace/ext-language_tools.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/ace/theme-monokai.js"}}" type="text/javascript"></script>
{{.Scripts}}
<script>

    // 查看API
    function showApiModal(obj, name) {
        $("#showApiLabel").html(name);
    }


    $('#editor').height(350);

    ace.require("ace/ext/language_tools");
    var editor = ace.edit("editor");
    editor.$blockScrolling = Infinity;
    editor.setFontSize(15);
    editor.session.setMode("ace/mode/json");
    editor.setOptions({
        enableBasicAutocompletion: true,
        enableSnippets: true,
        enableLiveAutocompletion: true
    });
    editor.setTheme("ace/theme/monokai");
    editor.setShowPrintMargin(false);
    editor.setReadOnly(false);
</script>
</body>
</html>