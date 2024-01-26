<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="nav" role="navigation">
            <ul>
                <li><a href="/hotel/main">Поиск</a></li>
                <li><a href="/hotel/index">Отели</a></li>
                <li><a href="/country/index">Страны</a></li>
            </ul>
        </div>
        <table class="table table-success table-striped" style="margin-left: 15px; width:98%">
            <h2 style="margin-left: 15px; margin-bottom: 25px;">Количество найденных отелей: ${totalCount}</h2>
            <tr>
                <td>Отель</td>
                <td>Звездность</td>
                <td></td>
            </tr>
            <g:each in="${hotels}" var="hotel">
                <tr>
                    <td>${hotel.name}</td>
                    <td>${hotel.rating}</td>
                    <td>
                        <g:if test="${hotel.website}">
                            <a href="${hotel.website}" target="_blank">Перейти на сайт</a>
                        </g:if>
                    </td>
                </tr>
            </g:each>
        </table>
        <g:if test="${offset > 0}">
            <g:link class="btn btn-outline-primary" style="margin-left: 15px;" controller="hotel" action="find" params="[name:name, countryId:countryId, offset:(offset - max < 0 ? 0 : offset - max)]">Назад</g:link>
        </g:if>
        <g:if test="${(offset+max) < totalCount}">
            <g:link class="btn btn-outline-primary" style="margin-left: 15px;" controller="hotel" action="find" params="[name:name, countryId:countryId, offset:(offset + max)]">Далее</g:link>
        </g:if>
        <form style="margin-top:20px; margin-left: 15px; margin-bottom:20px;" action="/hotel/main">
            <button type="submit" class="btn btn-outline-primary">Новый поиск</button>
        </form>
    </body>
</html>