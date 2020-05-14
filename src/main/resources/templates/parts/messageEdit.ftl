<button class="btn btn-primary mt-3" data-toggle="collapse" href="#collapseAddMessage" aria-expanded="false"
        aria-controls="collapseExample">
    Добавить сообщение
</button>

<div class="collapse <#if message??>show</#if>" id="collapseAddMessage">
    <form method="post" enctype="multipart/form-data">
        <div class="form-row mt-3">
            <div class="form-group col-md-12">
                <input class="form-control ${(textError??)?string('is-invalid', '')}"
                       value="<#if message??>${message.text}</#if>"
                       type="text"
                       name="text"
                       placeholder="Введите сообщение">
                <#if textError??>
                <div class="invalid-feedback">
                    ${textError}
                </div>
                </#if>
            </div>
            <div class="form-group col-md-12">
                <input class="form-control ${(tagError??)?string('is-invalid', '')}"
                       value="<#if message??>${message.tag}</#if>"
                       type="text"
                       name="tag"
                       placeholder="Тэг">
                <#if tagError??>
                <div class="invalid-feedback">
                    ${tagError}
                </div>
                </#if>
            </div>
            <div class="form-group col-md-12">
                <div class="custom-file">
                    <input class="custom-file-input" type="file" name="file" if="file">
                    <label class="custom-file-label" for="file">Выберите файл</label>
                </div>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Сохранить</button>
            </div>
            <input class="form-control" type="hidden" name="_csrf" value="${_csrf.token}"/>
            <input class="form-control" type="hidden" name="id" value="<#if message??>${message.id}</#if>"/>
        </div>
    </form>
</div>
