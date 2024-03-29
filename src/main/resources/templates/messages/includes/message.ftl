<#macro message m>
    <div class="card my-3">
        <#if m.filename??>
            <img src="uploads/${m.filename}" alt="" class="card-img-top">
        </#if>
        <div class="card-header text-center">
            ${m.authorName}
        </div>
        <div class="content m-2 text-center">
            <span>${m.text}</span>
        </div>
        <div class="card-footer text-muted text-center">
            <i>${m.tag}</i>
        </div>
    </div>
</#macro>