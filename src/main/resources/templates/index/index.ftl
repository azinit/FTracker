<#import '../includes/wrapper.ftl' as wrapper>

<@wrapper.page>
    <h1>Application: '${name}'</h1>
    <h3>Done:</h3>
    <ul>
        <li>Freemarker connected</li>
        <li>Structure initialized</li>
        <li>Static connected</li>
    </ul>
    <h3>TODO</h3>
    <ul>
        <li>Add DB (hibernate + psql)</li>
        <li>Add SpringSecurity + Auth</li>
        <li>Add base routes</li>
        <li>Add front-pages as templates</li>
        <li>Add less</li>
    </ul>
</@wrapper.page>