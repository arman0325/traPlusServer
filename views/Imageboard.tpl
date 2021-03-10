<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Hugo 0.80.0">
        <title>Questboard</title>

        <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/dashboard/">



        <!-- Bootstrap core CSS -->
        <link href="/dict/bootstrap.min.css" rel="stylesheet">

        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }
        </style>


        <!-- Custom styles for this template -->
        <link href="dict/self/questboard.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
        $(document).ready(function(){
            $("#myInput").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function() {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        }
        );
        </script>
    </head>
    <body>

        % include('header.tpl', link="/logout",linkStr = "Logout")

        <div class="container-fluid">
            <div class="row">
                
                % include('html/navigation.html')

                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

                    <div class="mt-4">
                        <div class="row align-items-end">
                            <div class="col-sm"><h2 class="mb-0">{{title}}</h2></div>
                            <div class="col-sm"><p class="mb-0"style="text-align:right;">Final modify: <b>{{time}}</b></p></div>
                        </div>
                    </div>
                    <div class="table-responsive mt-2">
                        <table class="table table-hover table-sm">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody id="myTable">
                                %for row in rows:
                                <tr>
                                    <td>
                                        {{row}}
                                    </td>
                                    <td>
                                        <a href="/imageFolder/{{row}}.jpg">
                                            <button type="button" class="btn btn-info">modify</button>
                                        </a>
                                    </td>
                                </tr>
                                %end
                            </tbody>
                        </table>
                    </div>
                </main>
            </div>
        </div>


        <script src="/dict/bootstrap.bundle.min.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
    </body>
</html>
