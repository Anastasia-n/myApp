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
        <h2 style="margin-left: 15px; margin-bottom: 25px;">Справочник отелей</h2>
        <form class="create" action="/hotel/create" style="margin-left: 15px;">
            <button type="submit" class="btn btn-outline-primary">Добавить отель</button>
        </form>
        <table class="table table-success table-striped" style="margin-left: 15px; width:98%">
            <tr>
                <td>Отель</td>
                <td>Звездность</td>
                <td>Сайт</td>
                <td>Страна</td>
                <td></td>
                <td></td>
            </tr>
        <g:each in="${hotelList}" var="hotel">
            <tr>
                <td>${hotel.name}</td>
                <td>${hotel.rating}</td>
                <td>
                    <g:if test="${hotel.website}">
                    <a href="${hotel.website}" target="_blank">Перейти на сайт</a>
                    </g:if>
                </td>
                <td>${hotel.country.name}</td>
                <td>
                    <g:link action="edit"
                    id="${hotel.id}">Редактировать</g:link><br/>
                </td>
                <td>
                    <g:link action="delete"
                    id="${hotel.id}">Удалить</g:link><br /><br />
                </td>
            </tr>
       </g:each>
       </table>
    </body>
</html>