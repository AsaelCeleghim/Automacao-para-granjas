<?php
// Conexão com o banco de dados
$dsn = "mysql:host=localhost;dbname=sensores_2";
$username = "root";
$password = "";

try {
    $conn = new PDO($dsn, $username, $password);
    // Configura o PDO para lançar exceções em caso de erro
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Consulta SQL
    $sql = "SELECT * FROM temperaturas";

    // Execução da consulta
    $stmt = $conn->query($sql);

    // Verifica se há dados retornados
    if ($stmt->rowCount() > 0) {
        $data = []; // Inicializa o array de dados
        
        // Loop através dos resultados da consulta
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            // Adiciona os dados de cada linha ao array
            $data[] = [
                't1' => $row['t1'],
                't2' => $row['t2'], 
                't3' => $row['t3'],
                't4' => $row['t4'],
                't5' => $row['t5'],
                't6' => $row['t6'],
                't7' => $row['t7']
            ];
        }
        
        // Retorna os dados como JSON após o loop
        echo json_encode($data);
    } else {
        echo "Nenhum dado encontrado.";
    }

} catch (PDOException $e) {
    echo "Erro: " . $e->getMessage();
}
?>
