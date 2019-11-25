<#import '../includes/wrapper.ftl' as wrapper>
<#import '../includes/controls.ftl' as controls>

<#assign extra_styles>
    <link rel="stylesheet" href="css/welcome.css">
</#assign>
<#--<#assign extra_scripts>
    <script src="js/somemodule.js"></script>
</#assign>
<@wrapper.page extra_scripts=extra_scripts extra_styles=extra_styles>-->

<@wrapper.page extra_styles=extra_styles cur_page="about-us" caption="О нас | FTracker">
    <section class="jumbotron mb-0 landing-hero">
        <div class="landing-hero__description text-center">
            <h1 class="mt-5">FTracker - твой личный тренер!</h1>
            <p>Веб-сервис, помогающий пользователям следовать программе питания, следить за своим прогрессом в плане фитнеса.</p>
        </div>
    </section>
    <section class="jumbotron mb-0 landing-who-we">
        <h1 class="text-center">Кто мы?</h1>
        <div class="persons-list mt-5">
            <div class="persons-list__item col-3">
                <img class="persons-list__icon" src="/img/about-us/po.png" alt="product-owner">
                <h3>Эльдар Сакаев</h3>
                <p>Заказчик проекта</p>
                <small class="text-muted">Задумка и идея сервиса</small>
            </div>
<#--            <hr>-->
            <div class="persons-list__item col-3">
                <img class="persons-list__icon" src="/img/about-us/dev1.png" alt="dev1">
                <h3>Азин Илья</h3>
                <p>Старший разработчик</p>
                <small class="text-muted">Функционал и бизнес-логика сервиса</small>
            </div>
<#--            <hr>-->
            <div class="persons-list__item col-3">
                <img class="persons-list__icon" src="/img/about-us/dev2.png" alt="dev2">
                <h3>Вдовинов Даниил</h3>
                <p>Младший разработчик</p>
                <small class="text-muted">Дизайн сайта и фронтенд</small>
<#--            </div>-->
        </div>

    </section>
    <section class="jumbotron mb-0 text-center">
        <h1>Система заметок</h1>
        <p>Храни всю свою историю занятий / диеты так - как ты захочешь!</p>
        <img class="demo-img col-8" src="/img/about-us/demo-home.png" alt="">
    </section>
    <section class="jumbotron mb-0 text-center landing-who-we">
        <h1>Следи за своим прогрессом</h1>
        <p>Знай, как продвигаются твои успехи по занятиям / диете!</p>
        <img class="demo-img col-8" src="/img/about-us/demo-profile.png" alt="">
    </section>
    <section class="jumbotron mb-0 text-center">
        <h1>Дневник занятий</h1>
        <p>Узнай, насколько ты следуешь програме, насколько изменились параметры твоего питания</p>
        <img class="demo-img col-8" src="/img/about-us/demo-diary.png" alt="">
    </section>
    <section class="jumbotron mb-0 text-center landing-who-we">
        <h1>Советы</h1>
        <p>Получай полный доступ ко всем советам по твоей программе питания!</p>
        <img class="demo-img col-8" src="/img/about-us/demo-advices.png" alt="">
    </section>
    <section class="jumbotron mb-0 text-center">
        <h1>Попробуйте все возможности сервиса прямо сейчас!</h1>
        <img class="demo-img col-8" src="/img/about-us/demo-home.png" alt="">
        <div class="text-center welcome_auth mt-2">
            <a href="/login" class="btn btn-info auth-btn">Войти</a>
        </div>
    </section>
</@wrapper.page>