<#import '../includes/wrapper.ftl' as wrapper>
<#import 'includes/advice.ftl' as component_advice>

<#assign extra_styles>
    <link rel="stylesheet" href="css/advices.css">
</#assign>

<@wrapper.page extra_styles=extra_styles>
    <section class="jumbotron mb-0">
        <div class="container">
            <div class="content text-center">
                <h2 class="mb-0">${program.name}</h2>
                <span class="text-muted mb-2">(Ваша программа питания)</span>
                <p class="mt-2">${program.description}</p>
            </div>
            <hr/>
            <div class="recommend text-center">
                <h3 class="my-4">Рекомендации по БЖУ:</h3>
                <#if program.id != 3>
                    <ul class="recommendations ">
                        <li><b>Белки:</b> <span>${program.recommendProteins} г на 1кг веса</span></li>
                        <li><b>Жиры:</b> <span>${program.recommendFats} г на 1кг веса</span></li>
                        <li><b>Углеводы:</b> <span>${program.recommendCarbohydrates} г на 1кг веса</span></li>
                    </ul>
                <#else>
                    <ul class="recommendations">
                        <li>На ваше усмотрение =)</li>
                    </ul>
                </#if>

            </div>
        </div>
    </section>

    <div class="container-fluid p-md-5">
        <h1 class="font-weight-light p-2 text-center">Советы</h1>
        <div class="record-list mt-3">
            <#list advices as advice>
                <@component_advice.advice advice/>
                <hr/>
            <#else>
                <p class="text-center">По данной программе питания пока недоступно ни одного совета</p>
            </#list>
        </div>
    </div>
</@wrapper.page>