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
            <@controls.input label='Ваше имя' name='firstName'/>
            <@controls.input label='Фамиля' name='lastName'/>
            <@controls.input label='Email' name='email' type="email"/>
            <@controls.input label='Логин *' name='username' placeholder="Логин"
                is_required=true/>
            <@controls.input label='Пароль *' name='password' placeholder="Пароль"
                type="password" is_required=true/>
            <@controls.csrf token="${ _csrf.token }"/>
            <@controls.button label="Зарегистрироваться"></@controls.button>
        </form>
    </div>
</@wrapper.page>