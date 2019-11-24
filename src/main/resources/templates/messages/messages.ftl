<#import '../includes/wrapper.ftl' as wrapper>
<#import 'includes/message.ftl' as component_message>

<@wrapper.page cur_page="msg" caption="Hub | FTracker">
    <#--<section class="jumbotron">
        <h1>Page: Messages</h1>
    </section>-->

    <div class="form-group container">
        <h1>New message...</h1>
        <form method="post" action="/messages/add" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" name="text" placeholder="Type text..." class="form-control">
            </div>
            <div class="form-group">
                <input type="text" name="tag" placeholder="Type tag..." class="form-control">
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file" id="customFile">
                    <label for="customFile" class="custom-file-label">Choose file</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${ _csrf.token }">
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Add record</button>
            </div>
        </form>
    </div>
    <div class="container messages">
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