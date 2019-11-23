<#import '../includes/wrapper.ftl' as wrapper>
<#assign extra_scripts>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <script src="js/profile.js"></script>
</#assign>

<@wrapper.page extra_scripts=extra_scripts>

    <div class="container-fluid p-md-5">
        <div class="d-flex flex-row p-5">
            <div class="col-3 text-right">
                <img src="img/ava.jpg" class="rounded img-fluid" width="250" height="250">
            </div>

            <p class="align-self-center col-10 display-4">
                Имя: ${user.firstName} <br/>
                Фамилия: ${user.lastName} <br/>
                Вес: ${weight} кг <br/>
                Email: ${user.email} <br/>
            </p>
            <#--<div class="align-self-center col-10 display-4">
                <p> </p>
                <p></p>
                <p></p>
                <p class="text-muted"><b>Email:</b> </p>
            </div>-->
            <#--<p class="align-self-center col-10 display-4">
                <br>
                 <br>
                 <br>
            <p class="text-muted"><b>Email:</b> ${user.email}</p>-->
        </div>
        <h2 class="d-flex flex-row ">
            <p class="text-center col-6">
                Среднее кол-во за день: <br><br>
                Белки: 73<br>
                Жиры: 35<br>
                Углеводы: 140<br>
            </p>
            <div class="text-center col-6">
                <p class="">Цель : Набрать массу</p>
                <canvas id="progress"></canvas>
<#--                <div class="col-4"><canvas id="progress"></canvas></div>-->
<#--                <img src="img/graphic.png" width="500" class="rounded img-fluid">-->
            </div>
        </h2>

    </div>
</@wrapper.page>