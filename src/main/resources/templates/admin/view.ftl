<#import '../includes/wrapper.ftl' as wrapper>

<@wrapper.page>
    <section class="jumbotron">
        <h1>Page: Admin</h1>
        <p>Manage, control...</p>
    </section>

    <div class="container p-md-5">
        <h1>List of users</h1>
        <table>
            <thead>
            <tr>
                <th>Name</th>
                <th>Role</th>
            </tr>
            </thead>
            <tbody>
            <#list users as user>
                <tr>
                    <td>${user.username}</td>
                    <td><#list user.roles as role>${role}<#sep>, </#list></td>
                    <td><a href="/admin/edit/${user.id}">Edit</a></td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>
</@wrapper.page>