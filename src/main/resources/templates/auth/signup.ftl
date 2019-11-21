<#import '../includes/wrapper.ftl' as wrapper>
<#import '../includes/controls.ftl' as controls>

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
            <@controls.input label='First name' name='firstName'/>
            <@controls.input label='Last name' name='lastName'/>
            <@controls.input label='Email' name='email' type="email"/>
            <@controls.input label='Username *' name='username' placeholder="Username"
                is_required=true/>
            <@controls.input label='Password *' name='password' placeholder="Password"
                type="password" is_required=true/>
            <@controls.csrf token="${ _csrf.token }"/>
            <@controls.button label="Sign In"></@controls.button>
        </form>
    </div>
</@wrapper.page>