<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajouter un professeur</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="flex items-center justify-center h-screen" style="background-image: url('assets/images/bg-01.jpg'); background-size: cover;">

    <div class="bg-white p-8 rounded-lg shadow-md w-96 flex flex-col items-center">
        <img src="assets/images/p.jpeg" alt="Logo" class="mx-auto my-4 w-16">
        <h1 class="text-3xl font-extrabold text-gray-800 mb-6">Ajouter FormeCandidature</h1>


        <form action="formecandidatureServlet" method="post" class="space-y-4">
            <input type="hidden" name="action" value="ajouter">

                <div >
                    <label for="id_prof" class="block text-sm font-medium text-gray-600">Professeur :</label>
                    <select name="id_prof" class="mt-1 p-2 w-full border-2 border-gray-300 rounded-md focus:outline-none focus:border-indigo-500" required>
                        <c:forEach items="${professeurs}" var="professeur">
                            <option value="${professeur.id_prof}">
                                ${professeur.nom_prof} ${professeur.prenom_prof}
                            </option>
                        </c:forEach>
                    </select>
                </div>

                <div>
                    <label for="nb_heure_permis" class="block text-sm font-medium text-gray-600">Nombre d'heures permises :</label>
                    <input type="number" name="nb_heure_permis" class="mt-1 p-2 w-full border-2 border-gray-300 rounded-md focus:outline-none focus:border-indigo-500" required>
                </div>

                <div>
                    <label for="nb_heure_occupe" class="block text-sm font-medium text-gray-600">Nombre d'heures occupées :</label>
                    <input type="number" name="nb_heure_occupe" class="mt-1 p-2 w-full border-2 border-gray-300 rounded-md focus:outline-none focus:border-indigo-500" required>
                </div>

                <div>
                    <button type="submit" class="mx-auto block w-48 h-12 bg-gradient-to-r from-blue-500 to-green-500 text-white p-4 rounded-md hover:opacity-90 focus:outline-none focus:ring focus:border-indigo-500">Ajouter</button>
               </div>
            </form>

             </div>
           
    
</body>
</html>
