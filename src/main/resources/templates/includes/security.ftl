<#assign
    known = Session.SPRING_SECURITY_CONTEXT??
>
<#if known>
    <#assign
        user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
        name = user.getUsername()
        isAdmin = true
<#--        isAdmin = user.isAdmin()-->
<#--        equels "user??" -->
        isAuth = true
    >
<#else>
    <#assign
        name = "unknown"
        isAdmin = false
        isAuth = false
    >
</#if>