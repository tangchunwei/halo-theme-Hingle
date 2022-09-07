<#macro comment post,type>
    <#if !post.disallowComment!false>
        <script src="//lf3-cdn-tos.bytecdntp.com/cdn/expire-1-M/vue/2.6.10/vue.min.js"></script>
        <script src="${options.comment_internal_plugin_js!'//unpkg.com/halo-comment-normal@latest/dist/halo-comment.min.js'}"></script>
        <halo-comment id="${post.id?c}" type="${type}"/>
    </#if>
</#macro>