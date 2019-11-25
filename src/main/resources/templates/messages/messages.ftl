<#import '../includes/wrapper.ftl' as wrapper>
<#import 'includes/message.ftl' as component_message>

<@wrapper.page cur_page="hub" caption="Hub | FTracker">
    <section class="jumbotron text-center">
        <h1>FTracker Hub</h1>
        <p>Здесь вы можете увидеть прогресс от других пользователей, а также пообщаться с ними в мини-чате.</p>
    </section>
    <section class="text-center">
        <h2>Список пользователей</h2>
        <ul>
        <#list users as user>
            <li><a href="/diary/${user.id}">${user.username}</a></li>
        </#list>
        </ul>
    </section>
    <div class="form-group jumbotron">
        <div class="container">
            <h1>New message...</h1>
            <form method="post" action="/hub/add" enctype="multipart/form-data">
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