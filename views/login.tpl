<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.80.0">
    <title>Login</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/">
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
    <link href="/dict/signin.css" rel="stylesheet">
</head>

<body class="text-center">
    <main class="form-signin">
        <form action="/login" method="post">
            <img class="mb-4" src="/dict/logo.png" alt="" width="72" height="57">
            <h1 class="h3 mb-3 fw-normal">Log in</h1>
            % if msg!="":
                <p>{{msg}}</p>
            %end
            <label for="username" class="visually-hidden">username</label>
            <input name="username" type="text" placeholder="Username" class="form-control" required autofocus>
            <label for="inputPassword" class="visually-hidden">Password</label>
            <input type="password" name="password" class="form-control" placeholder="Password" required>
            
            <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
        </form>
    </main>
</body>

</html>