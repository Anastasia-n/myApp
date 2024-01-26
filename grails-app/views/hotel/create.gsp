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
        <h2 style="margin-left: 15px; margin-bottom: 25px;">Добавление нового отеля</h2>
        <form action="/hotel/save" class="form" method="post" style="margin-left: 15px;">
            <g:hasErrors bean="${this.hotel}">
                <div class="alert alert-danger">
                    <ul>
                        <g:eachError bean="${this.hotel}" var="error">
                            <li><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </div>
            </g:hasErrors>
            <div class="form-group">
                <label>Название отеля </label>
                <input name="name" value="${hotel?.name}"/>
            </div>
            <div class="form-group">
                <label>Звездность </label>
                <input name="rating" value="${hotel?.rating}"/>
            </div>
            <div class="form-group">
                <label>Сайт </label>
                <input name="website" value="${hotel?.website}" style="width: 250px"/>
            </div>
            <div class="form-group">
                <label>Страна </label>
                <g:select name="country" from="${countries}" optionKey="id" optionValue="name" value="${hotel?.country?.id}"/>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-outline-primary">Добавить отель</button>
            </div>
        </form>
    </body>
</html>