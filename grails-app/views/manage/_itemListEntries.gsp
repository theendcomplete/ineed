<tr onclick='document.location = "<g:createLink controller="itemList" action='show' id='${it.id}'/>" '>
    <td>${it.id}</td>
    <td>${it.dateCreated}</td>
    <td>${it.lastUpdated}</td>
    <td>${it.dateDone}</td>
    %{--<td>${it.item_status}</td>--}%
    <td>
        <span class="label label-success">${it.status}</span>
    </td>
    %{--<td>${it.dateCreated}</td>--}%
    %{--<td>${it.lastUpdated}</td>--}%
    %{--<td align="center">--}%
    %{--<g:test if="${!it.resolution}">--}%
    %{--<span class="label label-success">${it.item_status}</span>--}%
    %{--${it.item_status}--}%
    %{--</td>--}%
    %{--</td>--}%
</tr>
