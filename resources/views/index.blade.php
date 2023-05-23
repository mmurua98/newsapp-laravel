<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>News App</title>
  </head>
  <body>

    <style>
        .card:hover {
                color: #00838d;
                transition: opactiy 0.3s linear;
                opacity: 1;
        }
    </style>

    <header>
        <div class="navbar navbar-dark bg-dark box-shadow">
            <div class="container navbar-nav mx-auto">
                <a href="/" class="navbar-brand d-flex align-items-center">
                    <strong>News APP</strong>
                </a>
            </div>
        </div>
    </header>

    <main role="main" class="mt-4">

        <div class="container" id="buscador">
            <div class="row justify-content-center">
                <div class="col-6">
                    <input type="text" class="form-control input-lg" id="searchInput" placeholder="Buscar noticias">
                </div>
            </div>
        </div>

        <div class="container mt-4" id="newsContainer">
            <div class="row">
                @foreach ($articles as $article)
                    <div class="col-md-3">
                        <div class="card" style="width:100%">
                            <img class="card-img-top" src="{{$article['urlToImage']}}" height="200px" alt="Card image">
                            <div class="card-body">
                                <h4 class="card-title">{{$article['title']}}</h4>
                                <p class="card-text">Author: {{$article['author']}}</p>
                                <p class="card-text">Date: {{ date('d-M-y', strtotime($article['publishedAt']) ) }}</p>
                                <a href="{{$article['url']}}" target="_blank" class="stretched-link">Read more</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>

        <div class="container mt-4" id="filteredContainer">
            <div id="filteredResults"></div>
        </div>
    </main>


    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function() {
            $('#searchInput').on('keyup', function() {
                var keyword = $(this).val(); // Obtén el valor ingresado en el campo de búsqueda

                $.ajax({
                url: '/search', // Ruta a tu controlador Laravel que manejará la búsqueda
                type: 'GET',
                data: { keyword: keyword }, // Envía la palabra clave como parámetro en la solicitud
                success: function(response) {
                    // Actualiza la vista con los resultados de la búsqueda
                    $('#filteredResults').html(response);

                    // Oculta todos los artículos
                    $('#newsContainer').hide();
                },
                error: function(xhr, status, error) {
                    console.log(xhr.responseText);
                }
                });
            });
        });

    </script>
</body>
</html>