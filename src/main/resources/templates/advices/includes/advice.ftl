<#macro advice a>
    <div class="card my-3">
        <div class="card-header text-center">
            ${a.authorName}
        </div>
        <div class="content m-2 text-center">
            <span>${a.text}</span>
        </div>
        <div class="card-footer text-muted text-center">
            <i>${m.tag}</i>
        </div>
    </div>
</#macro>