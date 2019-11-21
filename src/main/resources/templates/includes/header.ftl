<#include 'security.ftl'>

<header class="container-fluid py-4 pl-4 pr-0">
    <div class="d-flex flex-row">
        <div class="navbar-brand col-3 align-content-center col">
            <img src="img/logo.png" width="60" height="60" class="d-inline-block align-content-center" alt="">
            FTracker <small class="text-muted">(${name})</small>
        </div>
        <nav class="navbar navbar-expand navbar-dark bg-dark col rounded-left">
            <div class="collapse navbar-collapse">
                <div class="navbar-nav">
                    <a href="/" class="nav-item nav-link">Landing</a>
                    <a href="/index" class="nav-item nav-link">Index</a>
                    <a href="/main" class="nav-item nav-link">Main</a>
                    <#if isAuth>
                        <a href="/profile" class="nav-item nav-link">Profile</a>
                        <a href="/advices" class="nav-item nav-link">Advices</a>
                        <a href="/diary" class="nav-item nav-link">Diary</a>
                        <a href="/messages" class="nav-item nav-link">Messages</a>
                    <#else>
                        <a href="/login" class="nav-item nav-link">Login</a>
                    </#if>
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
                        <form action="/logout" method="post">
                            <input type="hidden" name="_csrf" value="${ _csrf.token }">
                            <button class="btn btn-primary" type="submit">Sign Out</button>
                        </form>
                    </#if>
                </div>
            </div>
        </nav>
    </div>
</header>