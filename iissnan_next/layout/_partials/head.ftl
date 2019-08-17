<#macro head title,keywords,desc,ogtype,url>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <#if settings.android_chrome_color??>
        <meta name="theme-color" content="${settings.android_chrome_color!}">
    </#if>

    <#if settings.pace!false>
        <script src="${static!}/source/lib/pace/pace.min.js?v=1.0.2"></script>
        <link href="${static!}/source/lib/pace/${settings.pace_theme!'pace-theme-minimal'}.min.css?v=1.0.2" rel="stylesheet">
    </#if>

    <#if settings.han!false>
        <link rel="stylesheet" media="all" href="${static!}/source/lib/Han/dist/han.min.css?v=3.3">
    </#if>


    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <@verification />

    <#if settings.fancybox!true>
        <link href="${static!}/source/lib/fancybox/source/jquery.fancybox.css?v=2.1.5" rel="stylesheet" type="text/css"/>
    </#if>

    <#include "head/external-fonts.ftl">

    <link href="${static!}/source/lib/font-awesome/css/font-awesome.min.css?v=4.6.2" rel="stylesheet" type="text/css"/>

    <#switch '${settings.scheme!"Muse"}'>
        <#case 'Muse'>
            <link href="${static!}/source/css/Muse/main.css?v=5.1.4" rel="stylesheet" type="text/css"/>
            <#break >
        <#case 'Mist'>
            <link href="${static!}/source/css/Mist/main.css?v=5.1.4" rel="stylesheet" type="text/css"/>
            <#break >
        <#case 'Pisces'>
            <link href="${static!}/source/css/Pisces/main.css?v=5.1.4" rel="stylesheet" type="text/css"/>
            <#break >
        <#case 'Gemini'>
            <link href="${static!}/source/css/Gemini/main.css?v=5.1.4" rel="stylesheet" type="text/css"/>
            <#break >
    </#switch>

    <#if post??>
        <link rel="stylesheet" type="text/css" href="${static!}/source/lib/prism/css/prism-${settings.highlight!'Default'}.css"/>
        <script type="text/javascript" src="${static!}/source/lib/prism/js/prism.js"></script>
    </#if>

    <#if (settings.apple_touch_icon!'${static!}/source/images/apple-touch-icon-next.png') !=''>
        <link rel="apple-touch-icon" sizes="180x180" href="${settings.apple_touch_icon!'${static!}/source/images/apple-touch-icon-next.png'}?v=5.1.4">
    </#if>
    <#if (settings.favicon_medium!'${static!}/source/images/favicon-32x32-next.png')!=''>
        <link rel="icon" type="image/png" sizes="32x32" href="${settings.favicon_medium!'${static!}/source/images/favicon-32x32-next.png'}?v=5.1.4">
    </#if>
    <#if (settings.favicon_small!'${static!}/source/images/favicon-16x16-next.png')!=''>
        <link rel="icon" type="image/png" sizes="16x16" href="${settings.favicon_small!'${static!}/source/images/favicon-16x16-next.png'}v=5.1.4">
    </#if>
    <#if (settings.safari_pinned_tab!'${static!}/source/images/logo.svg')!=''>
        <link rel="mask-icon" href="${settings.safari_pinned_tab!'${static!}/source/images/logo.svg'}?v=5.1.4" color="${settings.android_chrome_color!}">
    </#if>

    <meta name="keywords" content="${keywords!}"/>

    <link rel="alternate" href="${context!}/feed.xml" title="${options.blog_title!'Next'}" type="application/atom+xml"/>

    <meta name="description" content="${desc!}">
    <meta property="og:type" content="${ogtype!}">
    <meta property="og:title" content="${title!}">
    <meta property="og:url" content="${url!}">
    <meta property="og:site_name" content="${options.blog_title!'Next'}">
    <meta property="og:description" content="${desc!}">
    <meta property="og:locale" content="zh-Hans">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="${title!}">
    <meta name="twitter:description" content="${desc!}">

    <script type="text/javascript" id="hexo.configurations">
        var NexT = window.NexT || {};
        var CONFIG = {
            root: '/',
            scheme: '${settings.scheme!"Muse"}',
            version: '5.1.4',
            sidebar: {
                "position": "${settings.sidebar_position!'left'}",
                "display": "${settings.sidebar_display!'post'}",
                "offset":${settings.footer_offset!'12'},
                "offset_float": 0,
                "b2t":${(settings.sidebar_b2t!false)?c},
                "scrollpercent":${(settings.sidebar_scrollpercent!false)?c},
                "onmobile":${(settings.sidebar_onmobile!false)?c}
            },
            fancybox: ${(settings.fancybox!true)?c},
            tabs: true,
            motion: {
                "enable":${(settings.motion_enable!true)?c},
                "async":${(settings.motion_async!false)?c},
                "transition": {
                    "post_block": "${settings.motion_transition_post_block!'fadeIn'}",
                    "post_header": "${settings.motion_transition_post_header!'slideDownIn'}",
                    "post_body": "${settings.motion_transition_post_body!'slideDownIn'}",
                    "coll_header": "${settings.motion_transition_coll_header!'slideLeftIn'}",
                    "sidebar": "${settings.motion_transition_sidebar!'slideUpIn'}"
                }
            }
        };
    </script>

    <#if settings.canonical!true>
        <link rel="canonical" href="${context!}"/>
    </#if>
    <#include "head/custom-head.ftl">
</#macro>
