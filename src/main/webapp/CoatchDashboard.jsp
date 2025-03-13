<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Coachs - SportFlow</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f7fa;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .coach-card {
            display: flex;
            align-items: center;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 800px;
            height: 500px;
        }

        .coach-image {
            width: 300px;
            height: 300px;
            background: url('1.jpg') no-repeat center center;
            background-size: cover;
            margin-right: 20px;
        }

        .coach-info {
            flex: 1;
        }

        .coach-info h3 {
            font-size: 22px;
            color: #2c3e50;
            margin-bottom: 10px;
        }

        .coach-info p {
            font-size: 18px;
            color: #7f8c8d;
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #7f8c8d;
        }

        .form-group input,
        .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ecf0f1;
            border-radius: 4px;
            font-size: 14px;
        }

    </style>
</head>
<body>
<div class="coach-card">
    <div class="coach-image"></div>
    <div class="coach-info">
        <form id="coatchForm" action="CoatchDashboard" method="post">
            <div class="form-group">
                <label for="fullName">Nom complet</label>
                <input type="text" id="fullName" name="fullName" required>
            </div>
            <div class="form-group">
                <label for="speciality">Spécialité</label>
                <select id="speciality" name="speciality" required>
                    <option value="">Sélectionnez une spécialité</option>
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
            <button class="btn btn-primary" type="submit" style="align-items: center; background-color:#000000; color:ecf0f1">Enregistrer</button>
        </form>
    </div>
</div>
</body>
</html>