<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="A layout example that shows off a blog page with a list of posts.">
    <title>Blog &ndash; Love Life</title>
      <link rel="shortcut icon" type="icon/png" href="favicon.ico">

    <link rel="stylesheet" type="text/css" href="/{{ page_name }}/css/jquery-ui.css">
    <script src="/{{ page_name }}/js/jquery-1.10.2.js"></script>
    <script src="/{{ page_name }}/js/jquery-ui.js"></script>
      <script>
      $(function() {
        $( document ).tooltip();
      });
      </script>

    <link rel="stylesheet" href="/{{ page_name }}/css/pure-min.css">
    
    <!--[if lte IE 8]>
        <link rel="stylesheet" href="https://unpkg.com/purecss@0.6.2/build/grids-responsive-old-ie-min.css">
    <![endif]-->
    <!--[if gt IE 8]><!-->
        <link rel="stylesheet" href="/{{ page_name }}/css/grids-responsive-min.css">
    <!--<![endif]-->
    
    
        <!--[if lte IE 8]>
            <link rel="stylesheet" href="{{ page_name }}/css/layouts/blog-old-ie.css">
        <![endif]-->
        <!--[if gt IE 8]><!-->
            <link rel="stylesheet" href="/{{ page_name }}/css/layouts/blog.css">
        <!--<![endif]-->

    <style type="text/css">
        @media screen and (min-width: 500px){
            span#explain{
                float: right;
            }
        }
    </style>
</head>
<body>


<div id="layout" class="pure-g">
    <div class="sidebar pure-u-1 pure-u-md-1-4">
        <div class="header">
            <h1 class="brand-title">FOLLOWER 生活</h1>
            <h2 class="brand-tagline">Be the best Coder!</h2>

            <nav class="nav">
                <ul class="nav-list">
                    <li class="nav-item">
                        <a class="pure-button" href="login/">登录</a>
                    </li>
                    <li class="nav-item">
                        <a class="pure-button" title="该功能尚未实现，请等待后续更新" href="#">注册</a>  <!-- ToolTip -->
                    </li>
                </ul>
            </nav>
        </div>
    </div>

    <div class="content pure-u-1 pure-u-md-3-4">
        <div>
            <!-- A wrapper for all the blog posts -->
            <div class="posts">
                <h1 class="content-subhead">
                    <span>Pinned Post</span>
                    <span id="explain">
                        使用的模板文章均未翻译成中文，懒( ╯▽╰)
                    </span>
                </h1>

                <!-- A single blog post -->
                <section class="post">
                    <header class="post-header">
                        <img width="48" height="48" alt="Tilo Mitra&#x27;s avatar" class="post-avatar" src="/{{ page_name }}/img/common/tilo-avatar.png">

                        <h2 class="post-title">Introducing ****</h2>

                        <p class="post-meta">
                            By <a href="#" class="post-author">Tilo Mitra</a> under <a class="post-category post-category-design" href="#">CSS</a> <a class="post-category post-category-pure" href="#">****</a>
                        </p>
                    </header>

                    <div class="post-description">
                        <p>
                            Yesterday at CSSConf, we launched **** – a new CSS library. Phew! Here are the <a href="https://speakerdeck.com/tilomitra/pure-bliss">slides from the presentation</a>. Although it looks pretty minimalist, we’ve been working on **** for several months. After many iterations, we have released **** as a set of small, responsive, CSS modules that you can use in every web project.
                        </p>
                    </div>
                </section>
            </div>

            <div class="posts">
                <h1 class="content-subhead">Recent Posts</h1>

                <section class="post">
                    <header class="post-header">
                        <img width="48" height="48" alt="Eric Ferraiuolo&#x27;s avatar" class="post-avatar" src="/{{ page_name }}/img/common/ericf-avatar.png">

                        <h2 class="post-title">Everything You Need to Know About Grunt</h2>

                        <p class="post-meta">
                            By <a class="post-author" href="#">Eric Ferraiuolo</a> under <a class="post-category post-category-js" href="#">JavaScript</a>
                        </p>
                    </header>

                    <div class="post-description">
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                        </p>
                    </div>
                </section>

                <section class="post">
                    <header class="post-header">
                        <img width="48" height="48" alt="Reid Burke&#x27;s avatar" class="post-avatar" src="/{{ page_name }}/img/common/reid-avatar.png">

                        <h2 class="post-title">Photos from CSSConf and JSConf</h2>

                        <p class="post-meta">
                            By <a class="post-author" href="#">Reid Burke</a> under <a class="post-category" href="#">Uncategorized</a>
                        </p>
                    </header>

                    <div class="post-description">
                        <div class="post-images pure-g">
                            <div class="pure-u-1 pure-u-md-1-2">
                                <a href="http://www.flickr.com/photos/uberlife/8915936174/">
                                    <img alt="Photo of someone working poolside at a resort"
                                         class="pure-img-responsive"
                                         src="http://farm8.staticflickr.com/7448/8915936174_8d54ec76c6.jpg">
                                </a>

                                <div class="post-image-meta">
                                    <h3>CSSConf Photos</h3>
                                </div>
                            </div>

                            <div class="pure-u-1 pure-u-md-1-2">
                                <a href="http://www.flickr.com/photos/uberlife/8907351301/">
                                    <img alt="Photo of the sunset on the beach"
                                         class="pure-img-responsive"
                                         src="http://farm8.staticflickr.com/7382/8907351301_bd7460cffb.jpg">
                                </a>

                                <div class="post-image-meta">
                                    <h3>JSConf Photos</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="post">
                    <header class="post-header">
                        <img width="48" height="48" alt="Andrew Wooldridge&#x27;s avatar" class="post-avatar" src="/{{ page_name }}/img/common/andrew-avatar.png">

                        <h2 class="post-title">YUI 3.10.2 Released</h2>

                        <p class="post-meta">
                            By <a class="post-author" href="#">Andrew Wooldridge</a> under <a class="post-category post-category-yui" href="#">YUI</a>
                        </p>
                    </header>

                    <div class="post-description">
                        <p>
                            We are happy to announce the release of YUI 3.10.2! You can find it now on the Yahoo! CDN, download it directly, or pull it in via npm. We’ve also updated the YUI Library website with the latest documentation.
                        </p>
                    </div>
                </section>
            </div>

            <div class="footer">
                <div class="pure-menu pure-menu-horizontal">
                    <ul>
                        <li class="pure-menu-item"><a href="version/" class="pure-menu-link">版本信息</a></li>
                        <li class="pure-menu-item"><a href="http://twitter.com/yuilibrary/" class="pure-menu-link">Twitter</a></li>
                        <li class="pure-menu-item"><a href="https://github.com/JIMhackKING/myBlog/" class="pure-menu-link">GitHub</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>
