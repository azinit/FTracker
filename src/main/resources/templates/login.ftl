<#import 'includes/wrapper.ftl' as wrapper>

<@wrapper.page>
    <section class="jumbotron">
        <h1>Page: Login</h1>
    </section>

    <#if error??>
        Invalid username or password.
    </#if>
    <#if logout??>
        You have been logged out.
    </#if>
    <form action="/login" method="post">
        <div><label> User Name : <input type="text" name="username"/> </label></div>
        <div><label> Password: <input type="password" name="password"/> </label></div>
        <input type="hidden" name="_csrf" value="${ _csrf.token }">
        <div><input type="submit" value="Sign In"/></div>
    </form>
</@wrapper.page>