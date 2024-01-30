<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    </head>
    <body style="margin-left: 20px; margin-top: 15px; margin-right: 20px">
        <div class="nav" role="navigation">
            <ul>
                <li><a href="/hotel/main">Поиск</a></li>
                <li><a href="/hotel/index">Отели</a></li>
                <li><a href="/country/index">Страны</a></li>
            </ul>
        </div>
        <h2 style="margin-left: 15px; margin-bottom: 25px;">Справочник стран</h2>
        <form class="create" action="/country/create" style="margin-left: 15px;">
            <button type="submit" class="btn btn-outline-primary">Добавить страну</button>
        </form>
        <table class="table table-success table-striped" style="margin-left: 15px; width:98%">
            <tr>
                <td>Страна</td>
                <td>Столица</td>
                <td></td>
                <td></td>
            </tr>
            <g:each in="${countryList}" var="country">
                <tr>
                    <td>${country.name}</td>
                    <td>${country.capital}</td>
                    <td>
                        <g:link action="edit"
                        id="${country.id}">Редактировать</g:link><br />
                    </td>
                    <td>
                        <g:link action="delete"
                        id="${country.id}">Удалить</g:link><br /><br />
                    </td>
                </tr>
            </g:each>
        </table>
        <g:if test="${offset > 0}">
            <g:link class="btn btn-outline-primary" style="margin-left: 15px; margin-bottom:20px;" controller="country" action="index" params="[offset:(offset - max < 0 ? 0 : offset - max)]">Назад</g:link>
        </g:if>
        <g:if test="${(offset+max) < countryCount}">
            <g:link class="btn btn-outline-primary" style="margin-left: 15px; margin-bottom:20px;" controller="country" action="index" params="[offset:(offset + max)]">Далее</g:link>
        </g:if>
    </body>
</html>