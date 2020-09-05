<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>{{.SITE_NAME}} - Powered by MinDoc</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta name="author" content="Minho" />
    <meta name="site" content="https://www.iminho.me" />
    <meta name="keywords" content="MinDoc,文档在线管理系统,WIKI,wiki,wiki在线,文档在线管理,接口文档在线管理,接口文档管理">
    <meta name="description" content="MinDoc文档在线管理系统 {{.site_description}}">
    <!-- Bootstrap -->
    <link href="{{cdncss "/static/bootstrap/css/bootstrap.min.css"}}" rel="stylesheet">
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
                        <!-- Default panel contents -->
                        <div class="panel-heading">
                            {{$item.BookName}}
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
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center"><span class="label label-default">v0.1.0.862</span></td>
                                    <td class="text-center"><span class="label label-default">v0.1.0.662</span></td>
                                    <td class="text-center"><span class="label label-default">v0.1.0.662</span></td>
                                </tr>
                                <tr>
                                    <td class="text-right" colspan="3">
                                        <em>负责人: {{if eq $item.RealName "" }}{{$item.CreateName}}{{else}}{{$item.RealName}}{{end}}</em>
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
                {{if gt .TotalPages 1}}
                {{.PageHtml}}
                {{end}}
                <div class="clearfix"></div>
            </nav>
        </div>
    </div>

    {{template "widgets/footer.tpl" .}}

</div>
<script src="{{cdnjs "/static/jquery/1.12.4/jquery.min.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/bootstrap/js/bootstrap.min.js"}}" type="text/javascript"></script>
{{.Scripts}}
</body>
</html>