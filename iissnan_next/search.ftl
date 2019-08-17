<#include "layout/_layout.ftl">
<#include "layout/_macro/post.ftl">
<#include "layout/_macro/sidebar.ftl">

<@html title="搜索：${keyword} | ${options.blog_title!'NexT'}" keywords="${options.seo_keywords!'Next'}" desc="${options.seo_description!'Next'}" ogtype="website" url="${context!}"></@html>

<@main>
<div id="content" class="content">
    <section id="posts" class="posts-expand">
        <#if posts??>
            <#list posts.content as post>
                <@post_template post></@post_template>
            </#list>
        </#if>
    </section>
    <#if posts.totalPages gt 1>
    <nav class="pagination">
        <#if posts.hasPrevious()>
            <#if posts.number == 1>
                <a class="extend prev" rel="prev" href="${context!}/search?keyword=${keyword}">
                    <i class="fa fa-angle-left" aria-label="Previous page"></i>
                </a>
            <#else>
                <a class="extend prev" rel="prev" href="${context!}/search/page/${posts.number}?keyword=${keyword}">
                    <i class="fa fa-angle-left" aria-label="Previous page"></i>
                </a>
            </#if>
        </#if>
        <#list rainbow as r>
            <#if r == posts.number+1>
                <span class="page-number current">${posts.number+1}</span>
            <#else>
                <a class="page-number" href="${context!}/search/page/${r}?keyword=${keyword}">${r}</a>
            </#if>
        </#list>
        <#if posts.hasNext()>
            <a class="extend next" rel="next" href="${context!}/search/page/${posts.number+2}?keyword=${keyword}">
                <i class="fa fa-angle-right" aria-label="Next page"></i>
            </a>
        </#if>
    </nav>
    </#if>
</div>
</@main>

<@sidebar>
<@sidebar_template is_post=false></@sidebar_template>
</@sidebar>

<@footer>

</@footer>

<@button>

</@button>
