<tr></tr>
<td><g:checkBox name="checkbox" value="${it.id}" checked="false"></g:checkBox></td>
<td onclick='document.location = "<g:createLink controller="item" action='showManager'
                                               id='${it.id}'/>" '>${it.item_name}</td>
<td>${it.vendorCode}</td>
<td>${it.link}</td>
<td>${it.store}</td>
%{--<td>${it.item_status}</td>--}%
<td>${it.reason}</td>
<td>${it.dateCreated}</td>
<td>${it.lastUpdated}</td>
<td>${it.user}</td>
<td align="center">
    %{--<g:test if="${!it.resolution}">--}%
    <span class="label label-success">${it.item_status} ${it.itemList}</span>
    %{--${it.item_status}--}%
</td>
</td>
</tr>
