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
        <h2 style="margin-left: 15px; margin-bottom: 25px;">Поиск отелей</h2>
        <g:if test="${notFoundMessage}">
            <div class="alert alert-danger">${notFoundMessage}</div>
        </g:if>
        <form action="/hotel/find" class="form" method="post" style="margin-left: 15px;">
            <div class="form-group">
                <label>Название отеля </label>
                <input name="name"/>
            </div>
            <div class="form-group">
                <label>Страна </label>
                <g:select name="countryId" from="${countries}" noSelection="['':'-любая-']" optionKey="id" optionValue="name"/>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-outline-primary">Найти</button>
            </div>
        </form>
        <form style="margin-top:20px; margin-left: 15px; margin-bottom:20px;" class="create" action="/hotel/create">
            <button type="submit" class="btn btn-outline-primary">Добавить новый отель</button>
        </form>
    </body>
</html>