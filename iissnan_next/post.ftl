<#include "layout/_layout.ftl">
<#include "layout/_macro/post.ftl">
<#include "layout/_macro/sidebar.ftl">

<@html title="${post.title} | ${options.blog_title!'Next'}" keywords="${tagWords!}" desc="${post.summary!}" ogtype="article" url="${context!}/archives/${post.url!}"></@html>
<@main>
<div id="content" class="content">
    <div id="posts" class="posts-expand">
        <@post_template post></@post_template>
        <div class="post-spread">
            <#if settings.jiathis_uid??>
            <#include "layout/_partials/share/jiathis.ftl">
            <#elseif settings.baidu_share_type!=''>
            <#include "layout/_partials/share/baidushare.ftl">
            <#elseif settings.add_this_id??>
            <#include "layout/_partials/share/add-this.ftl">
            </#if>
        </div>
    </div>
    <#include "layout/_partials/comments.ftl">
    <@comment post,'post'/>
</div>
<script type="text/x-mathjax-config">
MathJax.Hub.Config({
    showProcessingMessages: false,
    messageStyle: "none",
    extensions: ["tex2jax.js"],
    jax: ["input/TeX", "output/HTML-CSS"],
    tex2jax: {
        inlineMath: [ ['$','$'], ["\\(","\\)"] ],
        displayMath: [ ['$$','$$'], ["\\[","\\]"] ],
        skipTags: ['script', 'noscript', 'style', 'textarea', 'pre','code','a'],
        ignoreClass:"comment-content"
    },
    "HTML-CSS": {
        availableFonts: ["STIX","TeX"],
        showMathMenu: false
    }
});
MathJax.Hub.Queue(["Typeset",MathJax.Hub]);
</script>
<script src="//cdnjs.loli.net/ajax/libs/mathjax/2.7.0/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
</@main>

<@sidebar>
<@sidebar_template is_post=true></@sidebar_template>
</@sidebar>

<@footer>

</@footer>

<@button>
<#include "layout/_scripts/pages/post-details.ftl">
</@button>
