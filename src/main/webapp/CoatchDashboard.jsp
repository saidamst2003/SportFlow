<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription - Medicare</title>
    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .main {

            background-image: url('N.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            min-height: 100vh; /* Assure que l'image couvre tout l'écran */
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        .container {
            max-width: 500px;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
</head>
<body class="main">
private int idMember;
private Date dateBirth;
private String sportPratique;

<div class="container">
    <h2 class="text-center mb-4">Inscription</h2>
    <form action="" method="post">
        <div class="mb-3">
            <label for="fullName" class="form-label">Nom complet</label>
            <input type="text" class="form-control" id="fullName" name="fullName" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Mot de passe</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>
        <div class="mb-3">
            <label for="confirmPassword" class="form-label">Confirmer le mot de passe</label>
            <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
        </div>

        <div class="mb-3">
            <label for="role" class="form-label">Rôle</label>
            <select class="form-control" id="role" name="role">
                <option value="Coatch">Coatch</option>
                <option value="Member">Member</option>
            </select>
        </div>


        <button type="submit" class="btn btn-primary w-100" style="background-color:#000000;">S'inscrire</button>
    </form>
    <div class="text-center mt-3">
        <a href="login.jsp" style="color:#000000;">Déjà inscrit ? Se connecter</a>
    </div>
</div>

<script>

</script>

</body>
</html>

