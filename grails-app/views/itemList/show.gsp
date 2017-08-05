<!DOCTYPE html>
<html>
<head>
    %{--<title>MyTimeline for ${user.username}</title>--}%
    <meta name="layout" content="main"/>
    %{--<g:if test="${user.profile.skin}">--}%
    %{--<link rel="stylesheet" href="<g:createLinkTo dir='css' file='${user.profile.skin}.css'/>"/>--}%
    %{--</g:if>--}%
</head>

<body>
<div id="showItemList">

    %{--<input id="charLeft" name="charLeft" size="5" value="160" readonly="true"/>--}%
    <p>

    <div class="h3" align="center">
        %{--<h4 align="center">--}%
        ${itemList.toString()}
        %{--</h4>--}%
    </div>
</p>

    <g:if test="${flash.message}">
        <div class="alert alert-danger" role="alert" align="center">
            ${flash.message}
        </div>
    </g:if>

<p>

    %{--<g:form action="ajaxAdd">--}%
    <g:form action="updateItemList" class="form-horizontal">
        <div class="container-fluid">
            <fieldset>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="id">id</label>

                    <div class="col-md-5">
                        <input id="id" name="id" type="text" placeholder="13"
                               class="form-control input-md" required="" value="${itemList.id}" readonly="">
                        <span class="help-block">внутренний id</span>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label" for="dateCreated">Создан</label>

                    <div class="col-md-5">
                        <input id="dateCreated" name="dateCreated" type="text" placeholder="Например, 66613"
                               class="form-control input-md" value="${itemList.dateCreated}" readonly="">
                        <span class="help-block">Создан</span>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label" for="lastUpdated">Обновлён</label>

                    <div class="col-md-5">
                        <input id="lastUpdated" name="lastUpdated" type="text" placeholder="Например, 66613"
                               class="form-control input-md" value="${itemList.lastUpdated}" readonly="">
                        <span class="help-block">Обновлено</span>
                    </div>
                </div>

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
                                        <th>Дата создания</th>
                                        <th>Дата изменения</th>
                                        <th>Кому</th>
                                        <th>Статус</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    <g:render template="noteEntries" collection="${itemList.items}"/>

                                    </tbody>
                                </table>

                                <div class="pagination">
                                    <g:paginate controller="itemList" action="show" total="${itemList.items.size()}"
                                                max="50"/>
                                </div>
                            </div>
            </fieldset>
        </div>
    </g:form>
</p>
</div>
</body>
</html>