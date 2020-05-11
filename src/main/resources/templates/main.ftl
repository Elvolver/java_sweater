<#import "parts/common.ftl" as c>

<@c.page>


    <form method="get" action="main" class="form-inline">
        <div class="form-row">
            <div class="form-group col-md-12">
                <input class="form-control" type="text" name="filter" value="${filter?ifExists}"
                       placeholder="Поиск по тэгу">
                <button type="submit" class="btn btn-primary ml-2">Найти</button>
            </div>
        </div>
    </form>

 <button class="btn btn-primary mt-3" data-toggle="collapse" href="#collapseAddMessage" aria-expanded="false"
         aria-controls="collapseExample">
     Добавить сообщение
 </button>

<div class="collapse" id="collapseAddMessage">
    <form method="post" enctype="multipart/form-data">
        <div class="form-row mt-3">
            <div class="form-group col-md-12">
                <input class="form-control" type="text" name="text" placeholder="Введите сообщение">
            </div>
            <div class="form-group col-md-12">
                <input class="form-control" type="text" name="tag" placeholder="Тэг">
            </div>
            <div class="form-group col-md-12">
                <div class="custom-file">
                    <input class="custom-file-input" type="file" name="file" if="file">
                    <label class="custom-file-label" for="file">Выберите файл</label>
                </div>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Добавить</button>
            </div>
            <input class="form-control" type="hidden" name="_csrf" value="${_csrf.token}"/>
        </div>
    </form>
</div>

<div class="card-columns">
    <#list messages as message>
        <div class="card my-3">
            <div>
                <#if message.filename??>
                    <img class="card-img-top" src="/img/${message.filename}">
                </#if>
            </div>
            <div class="m-2">
                <span>${message.text}</span>
                <i>${message.tag}</i>
            </div>
            <div class="card-footer text-muted">
                ${message.authorName}
            </div>

        </div>
    <#else>
    No messages
    </#list>
</div>
</@c.page>