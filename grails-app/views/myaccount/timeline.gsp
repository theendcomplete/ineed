<%@ page import="ineed.Item" %>
<html>
<head>
    %{--<title>MyTimeline for ${user.username}</title>--}%
    <meta name="layout" content="main"/>
    %{--<meta name="layout" content="main; charset=UTF-8"/>--}%
    %{--<meta http-equiv="Content-Type" content="text/html">--}%
    %{--<g:if test="${user.profile.skin}">--}%
    %{--<link rel="stylesheet" href="<g:createLinkTo dir='css' file='${user.profile.skin}.css'/>"/>--}%
    %{--</g:if>--}%
</head>

<body>

%{--<g:render template="newNote" collection="${serviceNoteList}"/>--}%
<g:render template="newNote"/>
<p>

    %{--<h4 align="center">История запросов</h4>--}%

<div class="h4" align="center">История запросов</div>
</p>
<p>

<div id="allPosts">
    <div class="container" id="table">
        <div class="row">
            <div class="span5">
                %{--<table class="table table-striped table-condensed">--}%
                <table class="table table-condensed">
                    <thead>
                    <tr>
                        <th>Наименование</th>
                        <th>Артикул</th>
                        <th>Количество</th>
                        <th>Ссылка</th>
                        <th>Поставщик</th>
                        %{--<th>Статус</th>--}%
                        <th>Назначение</th>
                        <th>Дата создания</th>
                        <th>Дата изменения</th>
                        <th>Статус</th>
                    </tr>
                    </thead>
                    <tbody>

                    <g:render template="noteEntries" collection="${itemList}"/>

                    </tbody>
                </table>

                <div class="pagination">
                    <g:paginate controller="myaccount" action="timeline" total="${total}" max="10"/>
                </div>
            </div>
        </div>
    </div>

</div>
</p>

%{--<g:paginate total="${postCount}"/>--}%
%{--<g:paginate total="${2}"/>--}%

</body>
</html>
