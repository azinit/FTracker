<#import '../includes/wrapper.ftl' as wrapper>

<@wrapper.page>
    <#--<section class="jumbotron">
        <h1>Page: Diary</h1>
        <p>Attr: ${name}</p>
        <a href="/diary/record/new">New record</a>
    </section>-->

    <h1 class="font-weight-bold text-center">Дневник занятий</h1>
    <div class="container-fluid col-8">
        <div class="text-center">
            <a href="/diary/record/new" class="btn btn-primary">New record</a>
        </div>
        <!--3 одинаковые заметки-->
        <div class="card m-4">
            <div class="font-weight-bold card-header">
                <div class="d-flex justify-content-between">
                    <div>Дата 13.37.2228</div>
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
                                <span class="text-muted">75 кг</span>
                            </div>
                        </div>
                        <br>
                        <div class="col-12">
                            <span class="h5 font-weight-light">Комментарий: </span>
                            <span class="text-muted">Сорвался на бургеры :(</span>
                        </div>
                    </div>
                    <div class="">
                        <img class="img-fluid rounded" src="img/ava.jpg" alt="Card image cap" width="100"
                             height="100">
                    </div>
                </div>
            </div>
        </div>
        <div class="card m-4">
            <div class="font-weight-bold card-header">
                <div class="d-flex justify-content-between">
                    <div>Дата 13.37.2228</div>
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
                                <span class="text-muted">75 кг</span>
                            </div>
                        </div>
                        <br>
                        <div class="col-12">
                            <span class="h5 font-weight-light">Комментарий: </span>
                            <span class="text-muted">Сорвался на бургеры :(</span>
                        </div>
                    </div>
                    <div class="">
                        <img class="img-fluid rounded" src="img/ava.jpg" alt="Card image cap" width="100"
                             height="100">
                    </div>
                </div>
            </div>
        </div>
        <div class="card m-4">
            <div class="font-weight-bold card-header">
                <div class="d-flex justify-content-between">
                    <div>Дата 13.37.2228</div>
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
                                <span class="text-muted">75 кг</span>
                            </div>
                        </div>
                        <br>
                        <div class="col-12">
                            <span class="h5 font-weight-light">Комментарий: </span>
                            <span class="text-muted">Сорвался на бургеры :(</span>
                        </div>
                    </div>
                    <div class="">
                        <img class="img-fluid rounded" src="img/ava.jpg" alt="Card image cap" width="100"
                             height="100">
                    </div>
                </div>
            </div>
        </div>
        <div class="card m-4">
            <div class="font-weight-bold card-header">
                <div class="d-flex justify-content-between">
                    <div>Дата 13.37.2228</div>
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
                                <span class="text-muted">75 кг</span>
                            </div>
                        </div>
                        <br>
                        <div class="col-12">
                            <span class="h5 font-weight-light">Комментарий: </span>
                            <span class="text-muted">Сорвался на бургеры :(</span>
                        </div>
                    </div>
                    <div class="">
                        <img class="img-fluid rounded" src="img/ava.jpg" alt="Card image cap" width="100"
                             height="100">
                    </div>
                </div>
            </div>
        </div>
    </div>
</@wrapper.page>