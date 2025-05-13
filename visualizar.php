<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        *{
            background-color: #e7e7e7;
            text-align: center;
        }
        form{
            max-width: 1200px;
            margin: 0 auto;
            text-align: center;
        }
    </style>
    <title>LoL</title>
</head>
<body>
    
    <h1>Visualização</h1>
    <br>
    <a href="index.php">Página Inicial</a> <br> <br>

        <?php
        include 'conexao.php';

        $host="localhost";
        $user="root";
        $pass="";
        $banco="lol";

        $conexao= mysqli_connect ($host, $user, $pass, $banco) or die ("Erro na conexão.");

        $select = @mysqli_query($conexao, "select * from personagens");
        
        
                if(!$select){
                    die('Query invalida: '.@mysqli_error($conexao));
                }
                else{
                    while($dados = @mysqli_fetch_array($select)){
                    echo "<form>";
                    echo "<tr>";
                    echo "<td> <b>Nome:</b>".$dados['nome']."</td>";
                    echo "<td><br> <b>Descrição:</b>".$dados['descricao']."</td>";
                    echo "<td><br> <b>Tipo de Personagem:</b>".$dados['tipo']."</td>";
                    echo "<td><br> <b>Região de Origem:</b>".$dados['regiao']."</td>";
                    echo "<td><br> <b>História:</b>".$dados['historia']."</td>";
                    echo "<td><br> <b>Habilidades marcantes ou icônicas:</b>".$dados['hc']."</td>";        
                    echo "<td><br> <b>Nível de dificuldade:</b>".$dados['nivel']."</td>";        
                    echo "<td><br> <b>Data de lançamento:</b>".$dados['lancamento']."</td>";

                    $caminhoImagem = './img/' . $dados['img'];
                    if (file_exists($caminhoImagem)) {
                        echo "<td><br> <img src='" . $caminhoImagem . "' width='200'></td>";
                    } else {
                        echo "<td><br> Imagem não encontrada.</td>";
                    }

                    echo "</tr>";
                    echo "</form>";
                    echo "<br><br>";
                    }
                }
        
                @mysqli_close($conexao);
        ?>

</body>
</html>