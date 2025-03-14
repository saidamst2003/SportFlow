<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription - Medicare</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .main {

            background-image: url('N.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            min-height: 100vh;
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

<div class="container">
    <h2 class="text-center mb-4">Inscription</h2>
    <form action="registration" method="post" >
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
            <select class="form-control" id="role" name="role" onchange="toggleFields()">
                <option value="Coatch">Coatch</option>
                <option value="Member">Member</option>
            </select>
        </div>
        <!-- Champs spécifiques pour Coatch-->

        <div id="coachFields" class="form-group">
            <label for="speciality" class="form-label">Specialite</label>
            <select  class="form-control" id="speciality" name="speciality" >

                <option value="">Selectionnez une specialite</option>
                <option value="Musculation">Musculation</option>
                <option value="Yoga">Yoga</option>
                <option value="Natation">Natation</option>
                <option value="Football">Football</option>
                <option value="Tennis">Tennis</option>
                <option value="Boxe">Boxe</option>
                <option value="Basketball">Basketball</option>
                <option value="Fitness">Fitness</option>
            </select>
        </div>

        <!-- Champs spécifiques pour Member -->
        <div id="memberFields" class="member-fields">
            <div class="mb-3">
                <label for="dateNaissance" class="form-label" style=" ">Date de naissance</label>
                <input type="date" class="form-control" id="dateNaissance" name="dateNaissance"required>
            </div>

            <div class="mb-3">
                <label for="sportPratique" class="form-label">Sport pratique</label>
                <select class="form-control" id="sportPratique" name="sportPratique">
                    <option value="">Selectionnez un sport</option>
                    <option value="Musculation">Musculation</option>
                    <option value="Yoga">Yoga</option>
                    <option value="Natation">Natation</option>
                    <option value="Football">Football</option>
                    <option value="Tennis">Tennis</option>
                    <option value="Boxe">Boxe</option>
                    <option value="Basketball">Basketball</option>
                    <option value="Fitness">Fitness</option>
                    <option value="Aucun">Aucun</option>
                </select>
            </div>
        </div>


        <button type="submit" class="btn btn-primary w-100" style="background-color:#000000;text-align: center; margin-top:20px">S'inscrire</button>

    <div class="text-center mt-3">
        <a href="login.jsp" style="color:#000000;">Déjà inscrit ? Se connecter</a>
    </div>

</form>
</div>

    <script>
        function toggleFields() {
            let role = document.getElementById("role").value;
            let memberFields = document.getElementById("memberFields");
            let coachFields = document.getElementById("coachFields");

            memberFields.classList.add("d-none");
            coachFields.classList.add("d-none");

            document.querySelectorAll("#memberFields input, #coachFields input").forEach(input => {
                input.removeAttribute("required");
            });

            if (role === "Member") {
                memberFields.classList.remove("d-none");
                memberFields.querySelectorAll("input").forEach(input => input.setAttribute("required", "required"));
            } else if (role === "Coatch") {
                coachFields.classList.remove("d-none");
                coachFields.querySelectorAll("input").forEach(input => input.setAttribute("required", "required"));
            }
        }

        document.addEventListener("DOMContentLoaded", function () {
            toggleFields();
        });
    </script>



</body>
</html>
