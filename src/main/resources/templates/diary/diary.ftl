<#import '../includes/wrapper.ftl' as wrapper>
<#import 'includes/record.ftl' as component_record>

<@wrapper.page>
    <#--<section class="jumbotron">
        <h1>Page: Diary</h1>
        <p>Attr: ${name}</p>
        <a href="/diary/record/new">New record</a>
    </section>-->
    <div class="text-center jumbotron">
        <div class="container">
            <h1 class="font-weight-bold text-center mb-2">Дневник занятий</h1>
            <p class="mt-3">Здесь вы можете увидеть детальную информацию о своем прогрессе.</p>
            <p>"Успехи по программе (БЖУ): " - означает, насколько далеко вы ушли от плана по БЖУ показателям.</p>
            <p>Высчитывается на основе вашего веса, БЖУ, программы питания и сложности.</p>
        </div>
        <div class="text-center mt-5">
            <#if already_created>
                <a href="/diary/update" class="btn btn-info">Изменить свежую запись</a>
            <#else>
                <a href="/diary/today" class="btn btn-info">Новая запись</a>
            </#if>
        </div>
    </div>

    <div class="container-fluid col-8 mt-3">
        <div class="record-list mt-3">
            <#list records as record>
                <@component_record.record record/>
            <#else>
                <p class="text-center">Вы не оставили пока еще ни одной записи...</p>
            </#list>
        </div>
    </div>
</@wrapper.page>