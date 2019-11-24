<#import '../includes/wrapper.ftl' as wrapper>

<@wrapper.page>
    <#--<section class="jumbotron">
        <h1>Main Page, yeap</h1>
        <p>Attr: ${name}</p>
    </section>-->
<#--    <#if isAuth>-->

    <section class="jumbotron">
        <span class="h2">Заметка себе: </span>
        <span class="h3">не проходи мимо фастфудочных</span>
    </section>

<#--    </#if>-->
    <div class="container-fluid p-md-5">
        <div class="d-flex flex-row justify-content-around">
            <div class="col-7">
                <h1 class="display-4">Моя тренировка</h1>
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
                </ul>
                <form action="">
                    <div class="input-group col-12">
                        <select class="custom-select" id="inputGroupSelect01" name="selectedDay">
                            <option selected disabled>Выбери день</option>
                            <option value="1">Понедельник</option>
                            <option value="2">Среда</option>
                            <option value="3">Пятница</option>
                        </select>
                        <input type="text" class="form-control" aria-label="Text input with segmented dropdown button"
                               placeholder="Упражнение">
                        <div class="input-group-append">
                            <button type="submit" class="btn btn-outline-secondary">Добавить</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-3">
                <h2>М - Мотивация</h2>
                <h5 class="font-italic">Бог есть и он Богдан</h5>
            </div>
        </div>
        <div class="card mt-5">
            <div class="card-header">
                <span>МОТИВАЦИЯ</span>
            </div>
            <div class="card-body">
                ${quote.text}
            </div>
            <div class="card-footer">
                ${quote.author.fullName}
            </div>
        </div>
    </div>
</@wrapper.page>