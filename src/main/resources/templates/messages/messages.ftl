<#import '../includes/wrapper.ftl' as wrapper>
<#import 'includes/message.ftl' as component_message>

<@wrapper.page>
    <h1>Page: Messages</h1>

    <div class="messages">
        <h2>Message list:</h2>
        <div class="message-list card-columns">
            <#list messages as message>
                <@component_message.message message/>
            <#else>
                <p>No messages ...</p>
            </#list>
        </div>
    </div>
</@wrapper.page>