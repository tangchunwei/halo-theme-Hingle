<section class="home-posts">
    <#--  <% page.posts.each((post, i) => { %>  -->
    <div class="post-item">
        <h2>
            <#list posts.content as post>
                <a href="${post.fullPath!}">${post.title!}</a>
            </#list>
        </h2>
    <% if (post.excerpt) { %>
        <p><%= strip_html(post.excerpt) %></p>
    <% } else { %>
        <p><%= truncate(strip_html(post.content), { length: 100 }) %></p>
    <% } %>
        
         <div class="post-meta">
            <time class="date"><%= date(post.date, "YYYY.MM.DD") %></time>
            <% if (post.categories && post.categories.length){ %>
                <span class="category"><%- list_categories(post.categories, {
                    show_count: false,
                    class: "",
                    style: "none",
                    separator: "，"
                  }) %></span>
            <% } %>
            <% if (post.tags && post.tags.length){ %>
                <span class="tags"><%- list_tags(post.tags, {
                    show_count: false,
                    class: "",
                    style: "none",
                    separator: "，"
                  }) %></span>
            <% } %>
        </div>
    </div>
    <#--  <% }) %>  -->
</section>
