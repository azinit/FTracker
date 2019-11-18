<#import '../includes/wrapper.ftl' as wrapper>

<@wrapper.page>
    <section class="jumbotron">
        <h1>Page: Profile</h1>
        <p>Attr: ${name}</p>
    </section>

    <div class="container-fluid p-md-5">
        <div class="d-flex flex-row p-5">
            <div class="col-3 text-right">
                <img src="img/ava.jpg" class="rounded img-fluid" width="250" height="250">
            </div>
            <p class="align-self-center col-10 display-4">
                Имя: Эльдар <br>
                Фамилия: Сакаев <br>
                Вес: 70 кг <br>
            </p>
        </div>
        <h2 class="d-flex flex-row ">
            <p class="text-center col-6">
                Среднее кол-во за день: <br><br>
                Белки: 73<br>
                Жиры: 35<br>
                Углеводы: 140<br>
            </p>
            <div class="text-center">
                <p class="">Цель : Набрать массу</p>
                <img src="img/graphic.png" width="500" class="rounded img-fluid">
            </div>
        </h2>

    </div>
</@wrapper.page>