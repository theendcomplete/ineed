%{--<asset:javascript src="jquery.js"/>--}%
<tr onclick='document.location = "<g:createLink controller="item" action='show' id='${it.id}'/>" '>
<td>${it.item_name}</td>
<td>${it.vendorCode}</td>
<td>${it.quantity}</td>
<td>${it.link}</td>
<td>${it.store}</td>
%{--<td>${it.item_status}</td>--}%
<td>${it.reason}</td>
<td>${it.dateCreated}</td>
<td>${it.lastUpdated}</td>
<td align="center">
    %{--<g:test if="${!it.resolution}">--}%
    <span class="label label-success">${it.item_status = it.item_status ?: it.itemList}</span>
    %{--params.order = params.order ?: "desc"--}%
    %{--${it.item_status}--}%
</td>
</td>
</tr>







<script type="text/javascript" language="javascript" class="init">
    $(".clickable").on("click", function (e) {
        e.preventDefault();
        window.location = "/item/show/" + $(this).data("id");
    });
</script>
<g:javascript>
    function clearPost(e) {
        $('postContent').value = ''
    }
    function showSpinner(visible) {
        $('spinner').style.display = visible ? "inline" : "none"
    }

</g:javascript>
