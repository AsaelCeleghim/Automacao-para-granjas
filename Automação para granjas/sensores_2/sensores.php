<html>
    <head>
        <title>Sensores Novos</title>
        <meta charset="utf-8">

        <style>
            body{
                background-color: gray;
            }
            table {
                border-collapse: collapse;
                width: 300px;
                margin-bottom: 20px;
                border-radius: 20px;
            }
            .tabela{
                /* width: 800px; */
                display: inline-block;
                border-radius: 20px;
                padding: 10px;
                background: white;
                margin: 5px;
                
            }
            /* select .tabela{
                margin-right: 10px;
            } */

            /* Estilo para as células da tabela */
            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;

            }

            /* Estilo para as células do cabeçalho */
            th {
                background-color: #f2f2f2;
                font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            }

            /* Estilo para as células alternadas */
            tr:nth-child(even) {
                background-color: #f9f9f9;
            }

            /* Estilo para células ao passar o mouse */
            tr:hover {
                background-color: #e6f7ff;
            }

            #granja{
                width: 1300px;
                height: 200px;
                background-color: #DCDCDC;
                margin: 10px;
            }
            #box1{
                background-color: green;
                position: absolute;
                width: 200px;
            }
            .sensor{
                display: inline;
                padding: 5px;
            }
            /* .sensor {
                width: 20px;
                height: 20px;
                background-color: red;
                border-radius: 50%;
                position: absolute;
            } */

            #box2{
                background-color: green;
                position: absolute;
                width: 200px;
            }

            .balanca{
                width: 50px;
                height: 50px;
                background-color: yellow;
                position: absolute;

            }
            
            #s_vasao{
                float: right;
                margin-right: 400px;
            }

            #s_temp{
                display: inline;
            }

            #s_temp_ag{
                display: block;
            }
        
        </style>
    </head>
    <body>

     
            
        
        <div style="position: absolute;">
        <div class="tabela">
            <h3>Box 1 </h3>
            <table id="tabela_box1">
                <tr>
                    <th>Metano</th>
                    <td id="metano1"></td>
                </tr>
                <tr>
                    <th>Amônia</th>
                    <td id="amonia1"></td>
                </tr>
                <tr>
                    <th>H2s</th>
                    <td id="h2s1"></td>
                </tr>
                <tr>
                    <th>Iluminação</th>
                    <td id="iluminacao1"></td>
                </tr>
                <tr>
                    <th>Umidade</th>
                    <td id="umidade1"></td>
                </tr>
                <tr>
                    <th>Umidade da cama</th>
                    <td id="umidade_cama1"></td>
                </tr>
                <tr>
                    <th>Temperatura da cama</th>
                    <td id="temperatura_cama1"></td>
                </tr>
            </table>
        </div>

        <div class="tabela">
            <h3>Box 2 </h3>
            <table id="tabela_box2">
                <tr>
                    <th>Metano</th>
                    <td id="metano2"></td>
                </tr>
                <tr>
                    <th>Amônia</th>
                    <td id="amonia2"></td>
                </tr>
                <tr>
                    <th>H2s</th>
                    <td id="h2s2"></td>
                </tr>
                <tr>
                    <th>Iluminação</th>
                    <td id="iluminacao2"></td>
                </tr>
                <tr>
                    <th>Umidade</th>
                    <td id="umidade2"></td>
                </tr>
                <tr>
                    <th>Umidade da cama</th>
                    <td id="umidade_cama2"></td>
                </tr>
                <tr>
                    <th>Temperatura da cama</th>
                    <td id="temperatura_cama2"></td>
                </tr>
            </table>
        </div>

        <div class="tabela">
            <h3>Sensores do lado de fora</h3>
            <table id="fora">
                <tr>
                    <th>Temperatura</th>
                    <td id="temperatura3"></td>
                </tr>
                <tr>
                    <th>Vazão</th>
                    <td id="vasao"></td>
                </tr>
                <tr>
                    <th>Temperatura da Água</th>
                    <td id="temperatura_agua"></td>
                </tr>
                <tr>
                    <th>Energia</th>
                    <td id="energia"></td>
                </tr>
            </table>
        </div>

        <div class="tabela">
            <h3>Sensores das Balanças</h3>
            <table id="tabela_balanca">
                <tr>
                    <th>Balança 1</th>
                    <td id="balanca1"></td>
                </tr>
                <tr>
                    <th>Balança 2</th>
                    <td id="balanca2"></td>
                </tr>
            </table>
        </div>

        <div class="tabela">
            <h3>Sensores de Temperatura</h3>
            <table id="tabela_temperaturas">
                <tr>
                    <th>T1</th>
                    <td id="t1"></td>
                </tr>
                <tr>
                    <th>T2</th>
                    <td id="t2"></td>
                </tr>
                <tr>
                    <th>T3</th>
                    <td id="t3"></td>
                </tr>
                <tr>
                    <th>T4</th>
                    <td id="t4"></td>
                </tr>
                <tr>
                    <th>T5</th>
                    <td id="t5"></td>
                </tr>
                <tr>
                    <th>T6</th>
                    <td id="t6"></td>
                </tr>
                <tr>
                    <th>T7</th>
                    <td id="t7"></td>
                </tr>
            </table>
        </div>

        <div class="tabela">
            <h3>Sensores dos Silos</h3>
            <table id="tabela_silos">
                <tr>
                    <th>Silo 1</th>
                    <td id="silo1"></td>
                </tr>
                <tr>
                    <th>Silo 2</th>
                    <td id="silo2"></td>
                </tr>
            </table>
        </div>
        <script type="text/javascript" src="js/funcoes.js"></script>
  
    </body>
</html>