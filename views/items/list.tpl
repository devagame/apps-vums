<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>项目空间{{.Model.ItemName}}的项目列表 - Powered by MinDoc</title>
    <meta name="keywords" content="MinDoc,文档在线管理系统,WIKI,wiki,wiki在线,文档在线管理,接口文档在线管理,接口文档管理,{{.Model.ItemName}}">
    <meta name="description" content="MinDoc文档在线管理系统 {{.site_description}}">
    <!-- Bootstrap -->
    <link href="{{cdncss "/static/bootstrap/css/bootstrap.min.css"}}" rel="stylesheet">
    <link href="{{cdncss "/static/font-awesome/css/font-awesome.min.css"}}" rel="stylesheet">

    <link href="{{cdncss "/static/css/main.css" "version"}}" rel="stylesheet">
</head>
<body>
<div class="manual-reader manual-container manual-search-reader">
{{template "widgets/header.tpl" .}}
    <div class="container-fluid manual-body">
        <div class="apps-manual-list search-head">
            <strong class="search-title">显示项目空间为 "{{.Model.ItemName}}" 的项目</strong>
        </div>
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
                                <button type="button" class="btn btn-primary btn-sm">版本管理</button>
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
{{template "widgets/footer.tpl" .}}
</div>
<script src="{{cdnjs "/static/jquery/1.12.4/jquery.min.js"}}"></script>
<script src="{{cdnjs "/static/bootstrap/js/bootstrap.min.js"}}"></script>
{{.Scripts}}
</body>
</html>