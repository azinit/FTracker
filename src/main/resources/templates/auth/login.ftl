<#import '../includes/wrapper.ftl' as wrapper>
<#import '../includes/controls.ftl' as controls>

<@wrapper.page>
    <section class="jumbotron">
        <h1>Page: Login</h1>
        <p>Enter to your account</p>
    </section>

    <div class="container p-md-5">
        <#if error??>
            Invalid username or password.
        </#if>
        <#if logout??>
            You have been logged out.
        </#if>
        <form action="/login" method="post">
            <@controls.input label='Username' name='username'/>
            <@controls.input label='Password' name='password' type="password"/>
            <@controls.csrf token="${ _csrf.token }"/>
            <@controls.button label="Sign In"></@controls.button>
        </form>
        <a href="/signup">Create account</a>
    </div>
</@wrapper.page>