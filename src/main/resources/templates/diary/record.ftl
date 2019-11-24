<#import '../includes/wrapper.ftl' as wrapper>

<@wrapper.page>
    <div class="container">
        <form method="post" action="/diary/record/new" class="container-fluid p-5" enctype="multipart/form-data">
            <h1 class="font-weight-bold text-center">Создание новой заметки</h1>
            <div class="flex-row d-flex">
                <div class="container-fluid col-6">
                    <h3 class="p-3">Сколько съел:</h3>
                    <div class="d-flex">
                        <h3 class="font-weight-light pr-5">Белки</h3>
                        <input class="form-control form-control-sm" style="width: 25%" name="proteins">
                    </div>
                    <div class="d-flex">
                        <h3 class="font-weight-light pr-5">Жиры</h3>
                        <input class="form-control form-control-sm" style="width: 25%" name="fats">
                    </div>
                    <div class="d-flex">
                        <h3 class="font-weight-light pr-5">Углеводы</h3>
                        <input class="form-control form-control-sm" style="width: 17.5%" name="carbohydrates">
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
                        <input class="form-control form-control-sm" style="width: 17.5%" name="weight">
                    </div>
                    <div class="d-flex p-2">
                        <h3 class="font-weight-light">Настроение</h3>
<#--                        <label for="pet-select">Choose a pet:</label>-->
                        <select name="mood">
                            <option value="">Ваше настроение...</option>
                            <option value="ANGRY">ЗЛОЙ!</option>
                            <option value="SAD">Грусна(</option>
                            <option value="TIRED">Устало...</option>
                            <option value="OK">Ок)</option>
                            <option value="SATISFIED">Удовлетворенно</option>
                            <option value="PRODUCTIVE">Продуктивно</option>
                        </select>

                        <#--                        <input type="range" class="custom-range p-3" min="1" max="10" step="1" name="mood">-->
                    </div>
                    <div class="d-flex p-2">
                        <h3 class="font-weight-light pr-5">Фото</h3>
                        <input type="file" class="form-control-file" name="photo">
                    </div>
                </div>
            </div>
            <div class="flex-row d-flex p-3">
                <div class="col-2"></div>
                <h3 class="font-weight-light pr-3">Комментарий</h3>
                <input type="text" class="form-control" name="comment">
                <div class="col-3"></div>
            </div>
            <input type="hidden" name="_csrf" value="${ _csrf.token }">
            <div class="d-flex justify-content-center p-3">
                <button type="submit" class="btn btn-lg btn-success">Сохранить заметку</button>
            </div>
        </form>
    </div>
</@wrapper.page>