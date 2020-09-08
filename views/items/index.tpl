<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>项目空间列表 - Powered by MinDoc</title>
    <meta name="keywords" content="MinDoc,文档在线管理系统,WIKI,wiki,wiki在线,文档在线管理,接口文档在线管理,接口文档管理">
    <meta name="description" content="MinDoc文档在线管理系统 {{.site_description}}">
    <meta name="author" content="Minho" />
    <meta name="site" content="https://www.iminho.me" />
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
            <strong class="search-title">项目空间列表</strong>
        </div>

        <div class="row">
            <div class="apps-manual-list">
            {{range $index,$item := .Lists}}
                <div class="col-sm-6 col-md-4">

                    <div class="panel panel-default">
                        <div class="panel-heading col-lg-12">
                            <div class="pull-left">
                                <a href="{{urlfor "ItemsetsController.List" ":key" $item.ItemKey}}" title="{{$item.ItemName}}">{{$item.ItemName}}</a>
                            </div>
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

                        <div class="panel-body">
                            项目数量:{{$item.BookNumber}}
                            创建人：{{$item.CreateName}}
                        </div>

                        <div class="panel-footer">
                            <div class="text-right">创建时间：{{$item.CreateTimeString}}</div>
                        </div>
                    </div>
                </div>
            {{else}}
                <div class="search-empty">
                    <span class="empty-text">没有项目空间</span>
                </div>
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
<script src="{{cdnjs "/static/jquery/1.12.4/jquery.min.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/bootstrap/js/bootstrap.min.js"}}" type="text/javascript"></script>
{{.Scripts}}
</body>
</html>