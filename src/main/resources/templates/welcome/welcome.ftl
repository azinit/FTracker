<#import '../includes/wrapper.ftl' as wrapper>

<#assign extra_styles>
    <link rel="stylesheet" href="css/welcome.css">
</#assign>
<#--<#assign extra_scripts>
    <script src="js/somemodule.js"></script>
</#assign>
<@wrapper.page extra_scripts=extra_scripts extra_styles=extra_styles>-->

<@wrapper.page extra_styles=extra_styles>
    <section class="jumbotron mb-0 landing-hero">
        <div class="landing-hero__description">
            <h1>FTracker - твой личный тренер!</h1>
            <p>Веб-сервис, помогающий пользователям следовать программе питания, следить за своим прогрессом в плане фитнеса.</p>
        </div>
    </section>
    <section class="jumbotron mb-0 landing-who-we">
        <div class="persons-list"></div>
        <h1>Кто мы?</h1>
        <hr>
        <div class="persons-list__item">
            <h3>Эльдар Сакаев</h3>
            <p>Заказчик проекта</p>
            <small>Задумка и идея сервиса</small>
        </div>
        <hr>
        <div class="persons-list__item">
            <h3>Азин Илья</h3>
            <p>Старший разработчик</p>
            <small>Функционал и бизнес-логика сервиса</small>
        </div>
        <hr>
        <div class="persons-list__item">
            <h3>Вдовинов Даниил</h3>
            <p>Младший разработчик</p>
            <small>Дизайн сайта и фронтенд</small>
        </div>
    </section>
    <section class="jumbotron mb-0">
        <h1>Система заметок</h1>
        <p>Храни всю свою историю занятий / диеты так - как ты захочешь!</p>
    </section>
    <section class="jumbotron mb-0 landing-who-we">
        <h1>Следи за своим прогрессом</h1>
        <p>Знай, как продвигаются твои успехи по занятиям / диете!</p>
    </section>
</@wrapper.page>