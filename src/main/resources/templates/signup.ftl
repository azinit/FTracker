<#import 'includes/wrapper.ftl' as wrapper>

<@wrapper.page>
    <section class="jumbotron">
        <h1>Page: SignUp</h1>
        <p>Add new user</p>
    </section>

    <div class="container p-md-5">
        <#if error??>
            <div class="alert alert-danger" role="alert">
                ${error}
            </div>
        </#if>
        <#if logout??>
            You have been logged out.
        </#if>
        <form action="/signup" method="post">
            <div><label> User Name : <input type="text" name="username"/> </label></div>
            <div><label> Password: <input type="password" name="password"/> </label></div>
            <input type="hidden" name="_csrf" value="${ _csrf.token }">
            <div><input type="submit" value="Sign Up"/></div>
        </form>
    </div>
</@wrapper.page>