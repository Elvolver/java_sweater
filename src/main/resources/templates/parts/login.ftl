<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="inputUsername">Имя пользователя</label>
            <div class="col-sm-6">
                <input type="text" name="username" class="form-control" id="inputUsername"
                       placeholder="Имя пользователя"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="inputPassword">Пароль</label>
            <div class="col-sm-6">
                <input type="password" name="password" class="form-control" id="inputPassword" placeholder="Пароль"/>
            </div>
        </div>
    <#if isRegisterForm>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="inputEmail">Пароль</label>
            <div class="col-sm-6">
                <input type="email" name="email" class="form-control" id="inputEmail" placeholder="some@some.com"/>
            </div>
        </div>
    </#if>
        <div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        </div>
        <div>
            <#if !isRegisterForm>
                <a href="/registration">Зарегистрироваться</a>
            </#if>
            <button type="submit" class="btn btn-primary">
                <#if isRegisterForm>
                    Зарегистрироваться
                <#else>
                    Войти
                </#if>
            </button>
        </div>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <button type="submit" class="btn btn-primary">Выйти</button>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    </form>
</#macro>