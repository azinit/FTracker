<#import '../includes/wrapper.ftl' as wrapper>

<@wrapper.page>
    <section class="jumbotron">
        <h1>Page: Profile editor</h1>
        <p>User: "${user.username}"</p>
    </section>

    <div class="container">
        <form action="/user" method="post">
            <input class="form-control" type="text" name="username" value="${user.username}">
            <#list roles as role>
                <div class="form-group">
                    <label>
                        <input class="form-control" type="checkbox" name="${role}"
                                ${user.roles?seq_contains(role)?string("checked", "")}>
                        ${role}
                    </label>
                </div>
            </#list>
            <input type="hidden" name="userId" value="${user.id}">
            <input type="hidden" value="${_csrf.token}" name="_csrf">
            <button class="btn btn-primary" type="submit">Save</button>
        </form>
    </div>
</@wrapper.page>