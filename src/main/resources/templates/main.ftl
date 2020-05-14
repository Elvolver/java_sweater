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

    <#include "parts/messageEdit.ftl" />
    <#include "parts/messageList.ftl" />

</@c.page>