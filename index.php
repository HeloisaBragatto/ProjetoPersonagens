<?php
    include 'conexao.php';
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LoL</title>
</head>
<body>

    <h1>Cadastro</h1>
    <br>
    <form action="action.php" method="post">
        <label for="">Nome:</label>
        <input type="text" name="nome">
        <br><br>

        <label for="">Descrição:</label>
        <input type="text" name="descricao">
        <br><br>

        <label for="">Tipo de Personagem:</label>
        <select name="tipo">
            <option value="lutador">Lutador</option>
            <option value="assassino">Assassino</option>
            <option value="magos">Magos</option>
            <option value="atirador">Atirador</option>
            <option value="tanque">Tanque</option>
        </select>
        <br><br>

        <label for="">Região de Origem:</label>
        <input type="text" name="regiao">
        <br><br>

        <label for="">História:</label>
        <input type="text" name="historia">
        <br><br>

        <label for="">Habilidades marcantes ou icônicas:</label>
        <input type="text" name="hc">
        <br><br>

        <label for="">Nível de dificuldade:</label>
        <input type="number" name="nivel" min="1" max="10">
        <br><br>

        <label for="">Data de lançamento:</label>
        <input type="date" name="lancamento">
        <br><br>

        <label for="">Nome da imagem:</label>
        <input type="text" name="img">
        <br><br>

        <button>Salvar</button>
        <br>
    </form>

    <br>
    <a href="visualizar.php">Visualizar</a>
</body>
</html>