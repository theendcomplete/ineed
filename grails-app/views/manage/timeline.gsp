<%@ page import="ineed.Item" %>
<html>
<head>
    %{--<title>MyTimeline for ${user.username}</title>--}%
    <meta name="layout" content="main"/>
    %{--<g:if test="${user.profile.skin}">--}%
    %{--<link rel="stylesheet" href="<g:createLinkTo dir='css' file='${user.profile.skin}.css'/>"/>--}%
    %{--</g:if>--}%
</head>

<body>

%{--<g:render template="newNote" collection="${serviceNoteList}"/>--}%
%{--<g:render template="newItemList"/>--}%
<p>

    %{--<h4 align="center">История запросов</h4>--}%

<div class="h4" align="center">Все заказы:</div>
</p>
<p>

<div id="allItemLists">
    <div class="container" id="tableListItems">
        <div class="row">
            <div class="span5">
                <table class="table table-condensed">
                    <thead>
                    <tr>

                        <th>Номер заказа</th>
                        <th>Создан</th>
                        <th>Изменён</th>
                        <th>Завершён</th>
                        <th>Статус</th>
                    </tr>
                    </thead>
                    <tbody>

                    <g:render template="itemListEntries" collection="${itemListList}"/>

                    </tbody>
                </table>

                <div class="pagination">
                    <g:paginate controller="manage" action="timeline" total="${totalitemListList}" max="100"/>
                </div>
            </div>
        </div>
    </div>

</div>

<p>

    %{--<h4 align="center">История запросов</h4>--}%

<div class="h4" align="center">Что хотят:</div>
</p>
<g:form action="createItemList" role="form" class="form-group-lg">
    <div id="allItems">
        <div class="container-fluid" id="table">
            <div class="row">
                <div class="span5">
                    <table class="table  table-condensed">
                    <thead>
                        <tr>
                            <th>CB</th>
                            <th>Наименование</th>
                            <th>Артикул</th>
                            <th>Ссылка</th>
                            <th>Поставщик</th>
                            <th>Назначение</th>
                            <th>Компания</th>
                            <th>Метод оплаты</th>
                            <th>Дата создания</th>
                            <th>Дата изменения</th>
                            <th>Кому</th>
                            <th>Статус</th>
                        </tr>
                       </thead>
                <tbody>

    <g:render template="noteEntries" collection="${itemList}"/>

    </tbody>
    </table>

    <div class="pagination">
        <g:paginate controller="manage" action="timeline" total="${total}" max="50"/>
    </div>
    </div>

</g:form>
<button type="submit" class="btn form-control btn-lg btn-success">save</button>
%{--<g:submitButton name="save" value="SaveButton" ></g:submitButton>--}%
</div>

</div>

</div>

</p>

%{--<g:paginate total="${postCount}"/>--}%
%{--<g:paginate total="${2}"/>--}%

</body>
</html>
