<#import '../includes/wrapper.ftl' as wrapper>
<#import '../includes/controls.ftl' as controls>
<#include '../includes/security.ftl'>

<#assign extra_styles>
    <link rel="stylesheet" href="css/home.css">
</#assign>
<#assign extra_scripts>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <script src="js/progress.js"></script>
    <script src="js/home.js"></script>
</#assign>

<@wrapper.page extra_scripts=extra_scripts cur_page="home" caption="Главная | FTracker">
    <#if user??>
        <#if user.recordActive??>
            <#assign r=user.recordActive/>
            <section class="jumbotron text-center">
                <blockquote class="blockquote text-center my-0 py-4">
                    <p class="mb-0">${r.comment}</p>
                    <div class="blockquote-footer"><cite title="Source Title">Дневник, заметка себе, ${r.date?date?string("dd.MM.yyyy")}</cite></div>
                </blockquote>
            </section>
        </#if>
    </#if>

    <section class="common-info">
        <div class="container-fluid p-md-5 pt-0">
            <div class="d-flex flex-row justify-content-around">
                <div class="col-8 main">
                    <h2 class="text-center">Моя тренировка</h2>
                    <ul class="list-group">
                        <li class="p-3">
                            <div class="flex-row d-flex">
                                <div class="h3 col-6 text-right">
                                    <button type="button" class="btn btn-outline-light btn-sm ">Удалить</button>
                                    Понедельник
                                </div>
                                <ul>
                                    <li class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="check1">
                                        <label for="check1" class="custom-control-label">Жим штанги лежа</label>
                                    </li>
                                    <li class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="check2">
                                        <label for="check2" class="custom-control-label">Приседания с гантелями</label>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="p-3">
                            <div class="flex-row d-flex">
                                <div class="h3 col-6 text-right">
                                    <button type="button" class="btn btn-outline-light btn-sm ">Удалить</button>
                                    Среда
                                </div>
                                <ul>
                                    <li class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="check3">
                                        <label for="check3" class="custom-control-label">Разведение гантелей на
                                            скамье</label>
                                    </li>
                                    <li class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="check4">
                                        <label for="check4" class="custom-control-label">Трицепс</label>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="p-3">
                            <div class="flex-row d-flex">
                                <div class="h3 col-6 text-right">
                                    <button type="button" class="btn btn-outline-light btn-sm ">Удалить</button>
                                    Пятница
                                </div>
                                <ul>
                                    <li class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="check5">
                                        <label for="check5" class="custom-control-label">Разведение гантелей на
                                            скамье</label>
                                    </li>
                                    <li class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="check6">
                                        <label for="check6" class="custom-control-label">Трицепс</label>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                    <form action="">
                        <div class="input-group col-6 mb-3">
                            <input type="text" class="form-control"
                                   aria-label="Text input with segmented dropdown button"
                                   placeholder="День" name="newDay">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-outline-secondary">Добавить</button>
                            </div>
                        </div>
                    </form>
                    <form action="">
                        <div class="input-group col-12">
                            <select class="custom-select" id="inputGroupSelect01" name="selectedDay">
                                <option selected disabled>Выбери день</option>
                                <option value="1">Понедельник</option>
                                <option value="2">Среда</option>
                                <option value="3">Пятница</option>
                            </select>
                            <input type="text" class="form-control"
                                   aria-label="Text input with segmented dropdown button"
                                   placeholder="Упражнение">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-outline-secondary">Добавить</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-4 sidebar">
                    <@controls.quote mt=0 mb=5 header="МОТИВАЦИЯ" body=quote.text footer=quote.author.fullName />
                    <@controls.quote mt=0 mb=5 header="СОВЕТ" body=advice.text footer="Программа питания: " + advice.program.name />
                </div>
            </div>
        </div>
    </section>
    <section class="jumbotron chart-last-day">
        <div class="col-12 justify-content-center results">
            <h2 class="text-center">Результаты за последний день</h2>
            <canvas id="progress-diagram" height="50vh"></canvas>
        </div>
    </section>
    <section class="actions container mb-5 mt-2">
        <h2 class="text-center mb-5">Приступай прямо сейчас!</h2>
        <div class="card-group">
            <@controls.card_action header="Советы" action_url="/advices"
            body="Посмотреть весь список советов по своей программе"/>
            <@controls.card_action header="Дневник" action_url="/diary"
            body="Узнать историю своих занятий / диеты."/>
            <@controls.card_action header="Профиль" action_url="/profile"
            body="Настроить свой профиль и посмотреть общий прогресс"/>
            <@controls.card_action header="Hub" action_url="/hub"
            body="Посмотреть успехи и питание других пользователей"/>
        </div>
    </section>
</@wrapper.page>