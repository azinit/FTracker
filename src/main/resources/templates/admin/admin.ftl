<#import '../includes/wrapper.ftl' as wrapper>

<@wrapper.page>
    <section class="jumbotron">
        <h1>Page: Admin</h1>
        <p>Congrats! You're admin =)</p>
    </section>

    <div class="container p-md-5">
        <h1>Available pages:</h1>
        <ul>
            <li><a href="/admin/view">User list</a></li>
            <li><a href="/admin/edit/1">Edit user with id = 1</a></li>
        </ul>
    </div>
</@wrapper.page>