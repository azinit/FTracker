<#import '../../includes/wrapper.ftl' as wrapper>
<#assign update=state??/>
<@wrapper.page>
    <div class="container">
        <form method="post" action="/diary/today" class="container-fluid p-5" enctype="multipart/form-data">
            <h1 class="font-weight-bold text-center">Создание новой заметки</h1>
            <div class="flex-row d-flex">
                <div class="container-fluid col-6">
                    <h3 class="p-3">Сколько съел:</h3>
                    <div class="d-flex">
                        <h3 class="font-weight-light pr-5">Белки</h3>
                        <input class="form-control form-control-sm" style="width: 25%" name="proteins"
                               <#if update>value="${state.proteins}"
                               <#else>value="100"</#if>>
                    </div>
                    <div class="d-flex">
                        <h3 class="font-weight-light pr-5">Жиры</h3>
                        <input class="form-control form-control-sm" style="width: 25%" name="fats"
                               <#if update>value="${state.fats}"
                               <#else>value="50"</#if>>
                    </div>
                    <div class="d-flex">
                        <h3 class="font-weight-light pr-5">Углеводы</h3>
                        <input class="form-control form-control-sm" style="width: 17.5%" name="carbohydrates"
                               <#if update>value="${state.carbohydrates}"
                               <#else>value="200"</#if>>
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
                        <input class="form-control form-control-sm" style="width: 17.5%" name="weight"
                            <#if update>value="${state.weight}"
                                <#else>value="75"</#if>>
                    </div>
                    <div class="d-flex p-2">
                        <h3 class="font-weight-light">Настроение</h3>
<#--                        <label for="pet-select">Choose a pet:</label>-->
                        <select name="mood">
                            <option value="OK">Ваше настроение...</option>
                            <option value="ANGRY">Злость</option>
                            <option value="SAD">Грустно</option>
                            <option value="TIRED">Усталость</option>
                            <option value="OK">Все ок)</option>
                            <option value="SATISFIED">Удовлетворение</option>
                            <option value="PRODUCTIVE">Продуктивность</option>
                        </select>

                        <#--                        <input type="range" class="custom-range p-3" min="1" max="10" step="1" name="mood">-->
                    </div>
                    <div class="d-flex p-2">
                        <h3 class="font-weight-light pr-5">Фото</h3>
                        <input type="file" class="form-control-file" name="file">
                    </div>
                </div>
            </div>
            <div class="flex-row d-flex p-3">
                <h3 class="font-weight-light pr-3">Комментарий</h3>
                <input type="text" class="form-control" name="comment"
                       <#if update>value="${state.comment}"</#if>>
            </div>
            <input type="hidden" name="_csrf" value="${ _csrf.token }">
            <div class="form-check col-12 text-center">
                <input class="form-check-input" type="checkbox" id="notice" name="notice">
                <label class="form-check-label" for="notice">Заметка себе</label>
            </div>
            <div class="d-flex justify-content-center p-3">
                <button type="submit" class="btn btn-lg btn-success">Сохранить заметку</button>
            </div>
        </form>
    </div>
</@wrapper.page>