<#import '../includes/wrapper.ftl' as wrapper>

<@wrapper.page>
    <section class="jumbotron">
        <h1>Page: Record</h1>
    </section>
    <div class="container">
        <form class="container-fluid p-5">
            <h1 class="font-weight-bold text-center">Создание новой заметки</h1>
            <div class="flex-row d-flex">
                <div class="container-fluid col-6">
                    <h3 class="p-3">Сколько съел:</h3>
                    <div class="d-flex">
                        <h3 class="font-weight-light pr-5">Белки</h3>
                        <input class="form-control form-control-sm" style="width: 25%">
                    </div>
                    <div class="d-flex">
                        <h3 class="font-weight-light pr-5">Жиры</h3>
                        <input class="form-control form-control-sm" style="width: 25%">
                    </div>
                    <div class="d-flex">
                        <h3 class="font-weight-light pr-5">Углеводы</h3>
                        <input class="form-control form-control-sm" style="width: 17.5%">
                    </div>
                </div>

                <div class="container-fluid col-6">
                    <div class="d-flex p-3">
                        <h3 class="pr-5">Сегодня: </h3>
                        <h3 class="font-weight-bold">
                            <script> document.write(new Date().toLocaleDateString());</script>
                        </h3>
                    </div>
                    <div class="d-flex p-2">
                        <h3 class="font-weight-light pr-5">Текущий вес</h3>
                        <input class="form-control form-control-sm" style="width: 17.5%">
                    </div>
                    <div class="d-flex p-2">
                        <h3 class="font-weight-light">Настроение</h3>
                        <input type="range" class="custom-range p-3" min="1" max="10" step="1">
                    </div>
                    <div class="d-flex p-2">
                        <h3 class="font-weight-light pr-5">Фото</h3>
                        <input type="file" class="form-control-file">
                    </div>
                </div>
            </div>
            <div class="flex-row d-flex p-3">
                <div class="col-2"></div>
                <h3 class="font-weight-light pr-3">Комментарий</h3>
                <input type="text" class="form-control">
                <div class="col-3"></div>
            </div>
            <div class="d-flex justify-content-center p-3">
                <button type="submit" class="btn btn-lg btn-success">Сохранить заметку</button>
            </div>
        </form>
    </div>
</@wrapper.page>