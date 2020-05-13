<#import "parts/common.ftl" as c>


<@c.page>
<h5>${username}</h5>
    ${message?ifExists}
<form method="post">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label" for="inputPassword">Новый пароль</label>
        <div class="col-sm-6">
            <input type="password" name="password" class="form-control" id="inputPassword" placeholder="Пароль"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label" for="inputEmail">Email</label>
        <div class="col-sm-6">
            <input type="email" name="email" class="form-control" id="inputEmail" placeholder="some@some.com" value="${email!''}"/>
        </div>
    </div>
    <div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    </div>
    <div>
        <button type="submit" class="btn btn-primary">
            Сохранить
        </button>
    </div>
</form>
</@c.page>