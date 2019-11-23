<#include 'security.ftl'>

<header class="container-fluid py-4 pl-4 pr-0">
    <div class="d-flex flex-row">
        <div class="navbar-brand col-3 align-content-center col">
            <a href="/main">
                <img src="img/logo.png" width="60" height="60" class="d-inline-block align-content-center" alt="">
            </a>
            <span>FTracker <small class="text-muted">(${name})</small></span>
        </div>
        <nav class="navbar navbar-expand navbar-dark bg-dark col rounded-left">
            <div class="collapse navbar-collapse">
                <div class="navbar-nav">
                    <#if isAuth>
                        <a href="/main" class="nav-item nav-link">Главная</a>
                        <a href="/profile" class="nav-item nav-link">Профиль</a>
                        <a href="/advices" class="nav-item nav-link">Советы</a>
                        <a href="/diary" class="nav-item nav-link">Дневник</a>
                        <a href="/messages" class="nav-item nav-link text-muted">Сообщения</a>
                    <#else>
                    </#if>
                    <a href="/" class="nav-item nav-link text-muted">Лендинг</a>
                    <a href="/index" class="nav-item nav-link text-muted">Index</a>
                    <#if isAdmin>
                        <li class="nav-item">
                            <a class="nav-item nav-link text-warning" href="/admin">Admin panel</a>
                        </li>
                    </#if>
                    <#--                    <a class="nav-item nav-link" href="home.html">Главная</a>-->
                    <#--                    <a class="nav-item nav-link" href="profile.html">Профиль</a>-->
                    <#--                    <a class="nav-item nav-link" href="#">Отчет</a>-->
                    <#--                    <a class="nav-item nav-link" href="advices.html">Советы</a>-->
                    <#--                    <a class="nav-item nav-link" href="#">Графики</a>-->
                    <#if isAuth>
                        <form action="/logout" method="post" class="auth-btn">
                            <input type="hidden" name="_csrf" value="${ _csrf.token }">
                            <button class="btn btn-primary" type="submit">Выйти</button>
                        </form>
                    <#else>
                        <a href="/login" class="btn btn-primary auth-btn">Войти</a>
                    </#if>
                <#--                        <button class="btn btn-primary" type="submit">Выйти</button>-->
                </div>
            </div>
        </nav>
    </div>
</header>