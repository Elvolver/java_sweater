<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="inputUsername">Имя пользователя</label>
            <div class="col-sm-6">
                <input type="text"
                       name="username"
                       class="form-control ${(usernameError??)?string('is-invalid', '')}"
                       id="inputUsername"
                       placeholder="Имя пользователя"
                       value="<#if user??>${user.username}</#if>"
                />
                <#if usernameError??>
                <div class="invalid-feedback">
                    ${usernameError}
                </div>
                </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="inputPassword">Пароль</label>
            <div class="col-sm-6">
                <input type="password"
                       name="password"
                       class="form-control ${(passwordError??)?string('is-invalid', '')}"
                       id="inputPassword"
                       placeholder="Пароль"/>
                <#if passwordError??>
                <div class="invalid-feedback">
                    ${passwordError}
                </div>
                </#if>
            </div>
        </div>
    <#if isRegisterForm>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="inputPassword">Пароль 2</label>
            <div class="col-sm-6">
                <input type="password2"
                       name="password2"
                       class="form-control ${(password2Error??)?string('is-invalid', '')}"
                       id="inputPassword2"
                       placeholder="Retype password"/>
        <#if password2Error??>
        <div class="invalid-feedback">
            ${password2Error}
        </div>
        </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="inputEmail">Пароль</label>
            <div class="col-sm-6">
                <input type="email"
                       name="email"
                       class="form-control  ${(emailError??)?string('is-invalid', '')}"
                       id="inputEmail"
                       placeholder="some@some.com"
                       value="<#if user??>${user.email}</#if>"
                />
                <#if emailError??>
                <div class="invalid-feedback">
                    ${emailError}
                </div>
                </#if>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="g-recaptcha" data-sitekey="6LeBpPYUAAAAADEi7Tg0rD3zL78_iOugQnxpTIdU"></div>
            <#if captchaError??>
                <div class="alert alert-danger" role="alert">
                    ${captchaError}
                </div>
            </#if>
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
        <#if user??>
            <button type="submit" class="btn btn-primary">Выйти</button>
        <#else>
            <button type="submit" class="btn btn-primary">Войти</button>
        </#if>

        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    </form>
</#macro>