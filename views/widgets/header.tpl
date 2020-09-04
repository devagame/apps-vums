
<div class="row">
    <div class="col-md-12">
        <div class="apps-navbar-title">
            <span class="apps-navbar-text"> <!-- 主标题，如需修改请替换后方标签内的文字 -->
                <em>
                    迪哇版本更新管理系统 <small><span class="apps-navbar-gray">KIFT</span></small>
                </em>
            </span>
        </div>
        <hr>
    </div>
</div>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Brand</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li {{if eq .ControllerName "HomeController"}}class="active"{{end}}>
                    <a href="{{urlfor "HomeController.Index" }}" title="首页">首页</a>
                </li>
                <li {{if eq .ControllerName "BlogController"}}{{if eq  .ActionName "List" "Index"}}class="active"{{end}}{{end}}>
                    <a href="{{urlfor "BlogController.List" }}" title="文章">文章</a>
                </li>
                <li {{if eq .ControllerName "ItemsetsController"}}class="active"{{end}}>
                    <a href="{{urlfor "ItemsetsController.Index" }}" title="项目">项目</a>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">运维 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>

            </ul>

            <ul class="nav navbar-nav navbar-right">
                {{if gt .Member.MemberId 0}}
                    <li>
                        <div class="img user-info" data-toggle="dropdown">
                            <img src="{{cdnimg .Member.Avatar}}" onerror="this.src='{{cdnimg "/static/images/headimgurl.jpg"}}';" class="img-circle userbar-avatar" alt="{{.Member.Account}}">
                            <div class="userbar-content">
                                <span>{{.Member.Account}}</span>
                                <div>{{.Member.RoleName}}</div>
                            </div>
                            <i class="fa fa-chevron-down" aria-hidden="true"></i>
                        </div>
                        <ul class="dropdown-menu user-info-dropdown" role="menu">
                            <li>
                                <a href="{{urlfor "SettingController.Index"}}" title="个人中心">个人中心</a>
                            </li>
                            <li>
                                <a href="{{urlfor "BookController.Index"}}" title="我的项目">我的项目</a>
                            </li>
                            <li>
                                <a href="{{urlfor "BlogController.ManageList"}}" title="我的文章">我的文章</a>
                            </li>
                            {{if eq .Member.Role 0  1}}
                                <li>
                                    <a href="{{urlfor "ManagerController.Index"}}" title="管理后台">管理后台</a>
                                </li>
                            {{end}}
                            <li role="separator" class="divider"></li>
                            <li>
                                <a href="{{urlfor "AccountController.Logout"}}" title="退出登录">退出登录</a>
                            </li>
                        </ul>
                    </li>
                {{else}}
                    <li><a href="{{urlfor "AccountController.Login"}}" title="用户登录">登录</a></li>
                {{end}}
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<ol class="breadcrumb">
    <li><a href="#">Home</a></li>
    <li><a href="#">Library</a></li>
    <li class="active">Data</li>
</ol>
