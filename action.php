<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <style>
        *{
            background-color: #e7e7e7;
            text-align: center;
        }
        form{
            max-width: 1200px;
            margin: 0 auto;
            text-align: center;
        }
    </style>     -->
    <title>LoL</title>
</head>
<body>
    
    <h1>Cadastro- Inclução</h1>

    <br> <br>

        <?php
        include 'conexao.php';

        $nome = $_POST['nome'];
        $descricao = $_POST['descricao'];
        $tipo = $_POST['tipo'];
        $regiao = $_POST['regiao'];
        $historia = $_POST['historia'];
        $hc = $_POST['hc'];
        $nivel = $_POST['nivel'];
        $lancamento = $_POST['lancamento'];
        $img = $_POST['img'];

        $sqlinsert = "insert into personagens (nome, descricao, tipo, regiao, historia, hc, nivel, lancamento, img) 
        values ('$nome', '$descricao', '$tipo', '$regiao', '$historia', '$hc', '$nivel', '$lancamento', '$img')";

        $query = mysqli_query($conexao, $sqlinsert);

        if (empty($nome)) {
            die("Não digitou o nome do personagem.");
            exit;
        } elseif (empty($descricao)) {
            die("Não digitou a descrição do personagem");
            exit;
        } elseif (empty($tipo)) {
            die("Não marcou o tipo do personagem.");
            exit;
        } elseif (empty($regiao)) {
            die("Não digitou a região.");
            exit;
        } elseif (empty($historia)) {
            die("Não digitou a histõria.");
            exit;
        } elseif (empty($hc)){
            die ("Não difgitou a habilidade.");
            exit;
        } elseif (empty($nivel)){
            die ("Não digitou o nível.");
            exit;
        }elseif (empty($lancamento)){
            die ("Não digitou o lançamento.");
            exit;
        }elseif (empty($img)){
            die ("Não digitou o nome da imagem.");
            exit;
        }
        
    echo "<a href='index.php'>Clique aqui para voltar a tela de inserção</a>";
        ?>

</body>
</html>