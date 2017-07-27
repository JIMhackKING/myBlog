<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="A layout example with a side menu that hides on mobile, just like the Pure website.">
    <title>Responsive Side Menu &ndash; Layout Examples &ndash; Pure</title>
    
    <link rel="stylesheet" href="/{{ page_name }}/css/pure-min.css">
    
    
    
        <!--[if lte IE 8]>
            <link rel="stylesheet" href="css/layouts/side-menu-old-ie.css">
        <![endif]-->
        <!--[if gt IE 8]><!-->
            <link rel="stylesheet" href="/{{ page_name }}/css/layouts/side-menu.css">
        <!--<![endif]-->

<style type="text/css">
    .mainContent{
        /* 首行缩进 */
        text-indent: 2em;
    }
</style>

</head>
<body>


<div id="layout" style="padding-left: 0px;">
    <div id="main">
        <div class="header">
          <h1>版本信息</h1>
          <h2>各版本的更新内容阅览表</h2>
        </div>

        <div class="content">
            <h2 class="content-subhead">1.0.0</h2>
            <p class="mainContent">
            上线新项目，主页为博客首页，点击登录按钮可进入登录页面。博客主页的文章均为模板，未进行修改。项目包含一个后台管理系统，由数据库管理账号，登录时如果账号密码错误会进行提示。
            </p>
        <div class="pure-menu">
            <span>焦点：</span>

            <ul style="padding-left: 50px;">
                <li>好看的样式</li>
                <li>友好的登录方式及界面</li>
                <li>美丽的博客登录页面背景图</li>
                <li>体验良好的响应式布局</li>
                <li>定制化的404错误页面</li>
                <li>强大的后端管理逻辑</li>
            </ul>
        </div>
        <div class="pure-menu">
            <span>不足：</span>

            <ul style="padding-left: 50px;">
                <li>博客主页注册功能未实现</li>
                <li>登录页面“记住密码” 和 “帮助”功能未实现</li>
                <li>后台管理系统主页未完成</li>
                <li>没有高度模板化的后端映射</li>
                <li>博客页面没有登录响应</li>
                <li>后台管理系统不能创建新超级用户</li>
            </ul>
        </div>
        <hr>
        <h2 class="content-subhead">更新预告</h2>
            <p class="mainContent">
            打造强大的后台管理系统，实现网站一站式管理；博客主页实现注册功能，并显示登录信息，以及实现发布新博客，修改博客，浏览曾经发布的文章等功能；登录页面实现记住密码功能，增加帮助信息（ToolTip）；以模板形式处理博客主页以及后台管理系统，使网页能够通过后端传递的信息作出相应的变化，减少修改网页时过多的冗杂操作，以达到最简单的网站管理和网页自动化处理。后台管理系统增加创建超级用户功能，实现“多站长”模式
            </p>
            <hr>
      <div class="pure-g">
            <div class="pure-u-1-4"></div>
            <div class="pure-u-1-4"></div>
            <div class="pure-u-1-4"></div>
        <div class="pure-u-1-4"></div>
        </div>
        </div>
    </div>
</div>




<script src="/{{ page_name }}/js/ui.js"></script>

</body>
</html>
