<header class="header">
    <div class="header-wrapper">
        <!-- Header Copyright -->
        <div class="header-copyright">
            <div class="header-blog">
                ©&nbsp;
                <script type="text/javascript">
                    var fd = new Date();
                    document.write(fd.getFullYear());
                </script>
                &nbsp;${options.blog_title!}
            </div>

            <div>
                Powered by <a href="https://github.com/halo-dev/halo.git" target="_blank" class="footer-develop-a">Halo</a>
                <br>
                Theme - <a href="https://github.com/kaisayi/blog-themes" target="_blank" class="footer-develop-a">Material</a>
            </div>
        </div>

        <!-- Header Title -->
        <span class="header-title header-item">
            <a href="${context!}/" title="${options.blog_title!}">
                ${options.blog_title!}
            </a>
        </span>

        <p class="header-slogan header-item">
            ${options.uiux_slogan!'Hi,nice to meet you'}
        </p>

        <!-- Header Nav -->
        <nav class="header-nav header-item">
            <span class="header-nav-item">
                <a href="${context!}/" title="Home">
                    <span>主页</span>
                </a>
            </span>

            <!-- Pages  -->

            <span class="header-nav-item">
                <a href="${context!}/tags" title="标签">
                    <span>标签</span>
                </a>
            </span>

            <span class="header-nav-item">
                <a href="${context!}/gallery" title="图库">
                    <span>图库</span>
                </a>
            </span>

            <span class="header-nav-item">
                <a href="${context!}/links" title="友链">
                    <span>友链</span>
                </a>
            </span>

            <span class="header-nav-item">
                <a href="${context!}/about" title="关于">
                    <span>关于</span>
                </a>
            </span>
        </nav>

        <!-- Header SNS -->
        <#include "isolate-sns_list.ftl">
    </div>
</header>
