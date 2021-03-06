<#import "parts/common.ftl" as c>

<@c.page>
User edit
<form action="/user" method="POST">
    <input type="text" name="username" value="${user.username}" />
    <#list roles as role>
        <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
    </#list>
    <input type="hidden" name="userId" value="${user.id}" />
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button type="submit">Save</button>
</form>
</@c.page>