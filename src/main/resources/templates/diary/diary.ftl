<#import '../includes/wrapper.ftl' as wrapper>
<#import 'includes/record.ftl' as component_record>

<@wrapper.page>
    <#--<section class="jumbotron">
        <h1>Page: Diary</h1>
        <p>Attr: ${name}</p>
        <a href="/diary/record/new">New record</a>
    </section>-->

    <h1 class="font-weight-bold text-center">Дневник занятий</h1>


    <div class="container-fluid col-8 mt-3">
        <div class="text-center">
            <a href="/diary/record/new" class="btn btn-primary">Новая запись</a>
        </div>
        <div class="record-list mt-3">
            <#list records as record>
                <@component_record.record record/>
            <#else>
                <p class="text-center">Вы не оставили пока еще ни одной записи...</p>
            </#list>
        </div>
    </div>
</@wrapper.page>