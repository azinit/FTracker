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
            <@controls.input label='Логин' name='username'/>
            <@controls.input label='Пароль' name='password' type="password"/>
            <@controls.csrf token="${ _csrf.token }"/>
            <@controls.button label="Зайти"></@controls.button>
        </form>
        <a href="/signup" class="text-info">Создать аккаунт</a>
    </div>
</@wrapper.page>