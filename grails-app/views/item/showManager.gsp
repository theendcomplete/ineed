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
<div id="showItemManager">

    %{--<input id="charLeft" name="charLeft" size="5" value="160" readonly="true"/>--}%
    <p>

    <div class="h3" align="center">
        %{--<h4 align="center">--}%
        Изменить запрос
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
    <g:form action="updateItemManager" class="form-horizontal">
        <div class="container-fluid">
            <fieldset>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="id">id</label>

                    <div class="col-md-5">
                        <input id="id" name="id" type="text" placeholder="13"
                               class="form-control input-md" required="" value="${item.id}" readonly="">
                        <span class="help-block">внутренний id</span>
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="name">Наименование</label>

                    <div class="col-md-5">
                        <input id="name" name="name" type="text" placeholder="например, слуховой аппарат"
                               class="form-control input-md" required="" value="${item.item_name}" readonly="">
                        <span class="help-block">Вбиваете буковки с клавиатурки</span>
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="vendorCode">Артикул</label>

                    <div class="col-md-5">
                        <input id="vendorCode" name="vendorCode" type="text" placeholder=""
                               class="form-control input-md" value="${item.vendorCode}" readonly="">
                        <span class="help-block">Если не знаете - ничего страшного. Необязательное поле</span>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label" for="quantity">Количество</label>

                    <div class="col-md-5">
                        <input id="quantity" name="quantity" type="text" placeholder="Например, 1 шт. или 10 кг"
                               class="form-control input-md" value="${item.quantity}" readonly="">
                        <span class="help-block">Требуемое количество</span>
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="reason">Назначение</label>

                    <div class="col-md-5">
                        <input id="reason" name="reason" type="text" placeholder="например, чтобы измерять углы стола"
                               class="form-control input-md" value="${item.reason}">
                        <span class="help-block">зачем?</span>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label" for="dateCreated">Создан</label>

                    <div class="col-md-5">
                        <input id="dateCreated" name="dateCreated" type="text" placeholder="Например, 66613"
                               class="form-control input-md" value="${item.dateCreated}" readonly="">
                        <span class="help-block">Создан</span>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label" for="lastUpdated">Обновлён</label>

                    <div class="col-md-5">
                        <input id="lastUpdated" name="lastUpdated" type="text" placeholder="Например, 66613"
                               class="form-control input-md" value="${item.lastUpdated}" readonly="">
                        <span class="help-block">Обновлено</span>
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="link">Ссылка</label>

                    <div class="col-md-5">
                        <input id="link" name="link" type="text"
                               placeholder="Например, http://paypal.me/theendcomplete/666"
                               class="form-control input-md" value="${item.link}">
                        <span class="help-block">Ссылка на товар, если уже нашли сами</span>
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-md-4 control-label" for="cancellItem">Отменить</label>

                    <div class="col-md-12" align="center">
                        <g:checkBox id="cancellItem" name="cancellItem" value="false" checked="false"></g:checkBox>
                        %{--<button id="cancel" name="saveButton" class="btn btn-primary">Сохранить</button>--}%
                    </div>
                </div>

                <div class="col-md-12" align="center">
                    <button id="saveButton" name="saveButton" class="btn btn-primary">Сохранить</button>
                </div>
            </fieldset>
        </div>
    </g:form>
</p>
</div>
</body>
</html>