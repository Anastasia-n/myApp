<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <style>
            .form-group{
                margin-bottom: 10px;
            }
        </style>
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
        <h2 style="margin-left: 15px; margin-bottom: 25px;">Редактирование страны</h2>
        <form action="/country/update" class="form" method="post" style="margin-left: 15px;">
            <g:hasErrors bean="${country}">
                <div class="alert alert-danger">
                    <ul>
                        <g:eachError bean="${country}" var="error">
                            <li><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </div>
            </g:hasErrors>

            <input name="id" type="hidden" value="${country.id}"/>

            <div class="form-group">
                <label>Страна </label>
                <input name="name" value="${country?.name}"/>
            </div>
            <div class="form-group">
                <label>Столица </label>
                <input name="capital" value="${country?.capital}"/>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-outline-primary">Сохранить изменения</button>
            </div>
        </form>
    </body>
</html>