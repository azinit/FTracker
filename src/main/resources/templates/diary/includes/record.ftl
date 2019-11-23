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
                <span class="small text-muted">21.11.2019</span>
            </div>
            <div>
                <a href="/diary/record/new" class="btn btn-sm btn-light">Изменить</a>
                <#--                        <button type="button" class="btn btn-sm btn-light">Изменить</button>-->
            </div>
        </div>
    </div>
    <div class="card-body">
        <div class="d-flex flex-row justify-content-between">
            <div class="container-fluid">
                <div class="flex-row d-flex">
                    <div class="col-6">
                        <span class="h4 font-weight-light">Б/Ж/У за день: </span>
                        <span class="text-muted">1/2/3</span>
                    </div>
                    <div class="col-6">
                        <span class="h4 font-weight-light">Вес: </span>
                        <span class="text-muted">${r.weight} кг</span>
                    </div>
                </div>
                <br>
                <div class="col-12">
                    <span class="h5 font-weight-light">Комментарий: </span>
                    <span class="text-muted">${r.comment}</span>
                </div>
            </div>
            <div class="">
                <img class="img-fluid rounded" src="img/ava.jpg" alt="Card image cap" width="100"
                     height="100">
            </div>
        </div>
    </div>
</div>
</#macro>