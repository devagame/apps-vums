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
<link href="{{cdncss "/static/bootstrap-toastr/toastr.css"}}" rel="stylesheet">
<link href="{{cdncss "/static/font-awesome/css/font-awesome.min.css"}}" rel="stylesheet">
<link href="{{cdncss "/static/css/main.css" "version"}}" rel="stylesheet">
</head>

<body>

<div class="manual-reader manual-container">
    {{template "widgets/header.tpl" .}}
    <div class="container-fluid manual-body">


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
<script src="{{cdnjs "/static/bootstrap-toastr/toastr.min.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/js/bootstrap.extend.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/js/clipboard.min.js"}}" type="text/javascript"></script>

<script src="{{cdnjs "/static/ace/ace.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/ace/ext-language_tools.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/ace/theme-monokai.js"}}" type="text/javascript"></script>
{{.Scripts}}

</body>
</html>