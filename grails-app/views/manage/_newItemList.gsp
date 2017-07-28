<div id="newPost">

%{--<input id="charLeft" name="charLeft" size="5" value="160" readonly="true"/>--}%
<p>

<div class="h3" align="center">
    %{--<h4 align="center">--}%
    Что изволите?
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
<g:form action="ajaxAddItem" class="form-horizontal">
    <div class="container-fluid">
        <fieldset>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="name">Наименование</label>

                <div class="col-md-5">
                    <input id="name" name="name" type="text" placeholder="например, слуховой аппарат"
                           class="form-control input-md" required="">
                    <span class="help-block">Вбиваете буковки с клавиатурки</span>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="vendorCode">Артикул</label>

                <div class="col-md-5">
                    <input id="vendorCode" name="vendorCode" type="text" placeholder="Например, 66613"
                           class="form-control input-md">
                    <span class="help-block">Если не знаете - ничего страшного. Необязательное поле</span>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="reason">Назначение</label>

                <div class="col-md-5">
                    <input id="reason" name="reason" type="text" placeholder="например, чтобы измерять углы стола"
                           class="form-control input-md">
                    <span class="help-block">зачем?</span>
                </div>
            </div>
            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="link">Ссылка</label>

                <div class="col-md-5">
                    <input id="link" name="link" type="text" placeholder="Например, http://paypal.me/theendcomplete/666"
                           class="form-control input-md">
                    <span class="help-block">Ссылка на товар, если уже нашли сами</span>
                </div>
            </div>

            <div class="col-md-12" align="center">
                <button id="saveButton" name="saveButton" class="btn btn-primary">Сохранить</button>
            </div>
        </fieldset>

    </div>
</g:form>



<g:javascript>
    function clearPost(e) {
        $('postContent').value = ''
    }
    function showSpinner(visible) {
        $('spinner').style.display = visible ? "inline" : "none"
    }

</g:javascript>

</p>
</div>