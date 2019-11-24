<#--todo: additional classes-->

<#macro input label name placeholder=label value="" type="text" is_required=false>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">${label}:</label>
        <div class="col-sm-6">
            <input type="${type}" class="form-control" <#if is_required>required</#if>
                   name="${name}" placeholder="${placeholder}" value="${value}"
            />
        </div>
    </div>
</#macro>

<#macro csrf token>
    <input type="hidden" name="_csrf" value="${ token }">
</#macro>

<#macro button label type="submit">
    <div class="form-group">
        <button class="btn btn-primary" type="${type}">${label}</button>
    </div>
</#macro>

<#macro diff value>
    <#if (value == 0)>
        <span class="text-muted">${ value }</span>
    <#elseif (value > 0)>
        <span class="text-success">+ ${ value }</span>
    <#else>
        <span class="text-danger">${ value }</span>
    </#if>
</#macro>

<#macro card mt=2 mb=2 header="HEADER" body="TEXT" footer="FOOTER">
    <div class="card mt-${mt} mb-${mb}">
        <div class="card-header">
            <span>${header}</span>
        </div>
        <div class="card-body">
            <span>${body}</span>
        </div>
        <div class="card-footer">
            <i>${footer}</i>
        </div>
    </div>
</#macro>