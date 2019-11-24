<#import '../../includes/controls.ftl' as controls>

<#macro record r>
<#--<div class="card my-3">-->
<#--    <p>${r.day}</p>-->
<#--    <p>${r.comment}</p>-->
<#--    <p>${r.weight}</p>-->
<#--    <p>${r.user.username}</p>-->
<#--</div>-->
<div class="card m-4">
    <div class="font-weight-bold card-header">
        <div class="d-flex justify-content-between">
            <div>
                <span>День ${r.day}</span>
            </div>
            <#if r.diffProgProteins??>
                <div>
                    <small class="text-muted">Успехи по программе (БЖУ): </small>
                    <small>
                        (<@controls.diff r.diffProgProteins true/> /
                        <@controls.diff r.diffProgFats true/> /
                        <@controls.diff r.diffProgCarbohydrates true/>)
                    </small>
                </div>
            </#if>
            <div>
                <span class="small text-muted">${r.date?date?string("dd.MM.yyyy")}</span>
            </div>
            <#--<div>
                <a href="/diary/today" class="btn btn-sm btn-light">Изменить</a>
                &lt;#&ndash;                        <button type="button" class="btn btn-sm btn-light">Изменить</button>&ndash;&gt;
            </div>-->
        </div>
    </div>
    <div class="card-body">
        <div class="d-flex flex-row justify-content-between">
            <div class="container-fluid">
                <div class="flex-row d-flex">
                    <div class="col-6">
                        <span class="h5 font-weight-light">Б/Ж/У: </span>
                        <span class="text-muted">${r.proteins}/${r.fats}/${r.carbohydrates}</span>
                        <span class="text-muted">
                            <#if r.diffPrevProteins??>
                                (<@controls.diff r.diffPrevProteins/>/
                                <@controls.diff r.diffPrevFats/>/
                                <@controls.diff r.diffPrevCarbohydrates/>)
                            </#if>
                        </span>
                    </div>
                    <div class="col-6">
                        <span class="h5 font-weight-light">Вес: </span>
                        <span class="text-muted">${r.weight} кг</span>
                        <#if r.diffPrevWeight??>(<@controls.diff r.diffPrevWeight/>)</#if>
<#--                        <#if r.diffPrevFats??><@controls.diff r.diffPrevFats/></#if>-->
                    </div>
                </div>
                <br>
                <div class="flex-row d-flex">
                    <div class="col-6">
                        <span class="h5 font-weight-light">Настроение: </span>
                        <@controls.mood value=r.mood/>
                    </div>
                    <div class="col-12">
                        <span class="h5 font-weight-light">Комментарий: </span>
                        <span class="text-muted">${r.comment}</span>
                    </div>
                </div>
            </div>
            <div class="">
                <img class="img-fluid rounded" alt="Card image cap" width="100" height="100"
<#--                     src="${r.photo?then('/img/ava.jpg', '/img/person.png')}"-->
                        <#if r.photo??>src="/uploads/${r.photo}"
                            <#else>src="/img/person.png"
                        </#if>>
            </div>
        </div>
    </div>
</div>
</#macro>