<#import '../includes/wrapper.ftl' as wrapper>
<#import 'includes/record.ftl' as component_record>

<@wrapper.page cur_page="diary" caption="Дневник занятий | FTracker">
    <div class="text-center jumbotron">
        <div class="container">
            <h1 class="font-weight-bold text-center mb-2">Дневник занятий</h1>
            <p class="mt-3">Здесь вы можете увидеть детальную информацию о своем прогрессе.</p>
            <p>"Успехи по программе (БЖУ): " - означает, насколько далеко вы ушли от плана по БЖУ показателям.</p>
            <p>Высчитывается на основе вашего веса, БЖУ, программы питания и сложности.</p>
            <span><b>Программа:</b>
                    <#if hub_user??>
                        ${program.name}
                    <#else>
                        <a href="/advices">${program.name}</a>
                    </#if>
            </span>
            <br/>
            <span><b>Нагрузка</b>: ${workload}</span>
        </div>
        <div class="text-center mt-5">
            <#if hub_user??>
                <h2>Пользователь: ${hub_user.firstName} ${hub_user.lastName?ifExists}(${hub_user.username})</h2>
<#--                <p>Программа питания: </p>-->
            <#else>
                <h2></h2>
                <#if already_created>
                    <a href="/diary/update" class="btn btn-info">Изменить свежую запись</a>
                <#else>
                    <a href="/diary/today" class="btn btn-info">Новая запись</a>
                </#if>
            </#if>

        </div>
    </div>

    <div class="container-fluid col-8 mt-3">
        <div class="record-list mt-3">
            <#list records as record>
                <@component_record.record record/>
            <#else>
                <#if hub_user??>
                    <p class="text-center">Пользователь не оставил пока еще ни одной записи...</p>
                <#else>
                    <p class="text-center">Вы не оставили пока еще ни одной записи...</p>
                </#if>

            </#list>
        </div>
    </div>
</@wrapper.page>