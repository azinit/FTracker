<#import '../includes/wrapper.ftl' as wrapper>

<#--<#assign extra_styles>
    <link rel="stylesheet" href="css/somemodule.css">
</#assign>
<#assign extra_scripts>
    <script src="js/somemodule.js"></script>
</#assign>

<@wrapper.page extra_scripts=extra_scripts extra_styles=extra_styles>-->

<@wrapper.page>
    <section class="jumbotron">
        <h1>Page: Landing</h1>
        <p>Attr: ${name}</p>
    </section>
</@wrapper.page>