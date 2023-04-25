<?php

include "./Inc/init_inc.php";
include "./Inc/usr_func.php";

// set timezone to riga, so we can convert time from timestamp to latvian time
@date_default_timezone_set("Europe/Riga");

if(!check_login()){
    header("Location: ./login.php");
}

$GLOBALS['sql']->where('user_id', get_user_id());
$doc_array = $GLOBALS['sql']->get('documents');




?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View documents</title>

    <link rel="stylesheet" href="./CSS/index.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
</head> 
<body style="display: flex;">
    <div class="sidebar">
        <p class="center-p">Welcome <?= get_username() ?> <i class="logout-btn bi bi-box-arrow-left"></i></p>
    
        
        <div class="cont mt">
            <p class="center-p bold">Document upload</p>
            <form action="upload.php" method="post" enctype="multipart/form-data">
                Select csv file to upload:
                <input type="file" name="fileToUpload" id="fileToUpload">
                <input type="submit" value="Upload file" name="submit">
            </form>

        </div>

        <div class="cont mt">
            <p class="center-p bold">Document Select</p>

            <form action="./" method="post">
                <select onchange="this.form.submit()" class="doc_select" name="doc_id">
                    <option value="0">Select document</option>
                    <?php
                    for($i = 0; $i < count($doc_array); $i++){
                        echo '
                        <option value="'. $doc_array[$i]['id'] .'">'. $doc_array[$i]['doc_name'] .'</option>
                        ';
                    }
                    
                    ?>
                </select>

            </form>

        </div>
    
    </div>

    <div class="w-full">
        <table class="info_table w-full">
            <tr>
                <th>Date & time</th>
                <th>fuel card</th>
                <th>Vehicle nr.</th>
                <th>Fuel type</th>
                <th>Amount</th>
                <th>Total cost</th>
                <th>Cost per L/KG/unit</th>
                <th>Fuel station name</th>
            </tr>

            <?php

                if(isset($_POST['doc_id'])){
                    $GLOBALS['sql']->where('doc_id', $_POST['doc_id']);
                    $trans = $GLOBALS['sql']->get('transactions');

                    for($i = 0; $i < count($trans); $i++){
                        $date_time = date("d/m/Y H:i:s", $trans[$i]['datetime_ts']);
                        
                        $amount = '';
                        switch($trans[$i]['product']){
                            case 'CNG':
                                $amount = $trans[$i]['amount'] . " kg";
                                break;
                            case 'Electricity':
                                $amount = $trans[$i]['amount'] . " kWh";
                                break;
                            default:
                                $amount = $trans[$i]['amount'] . " L";
                                break;
                        }

                        echo '
                            <tr>
                                <td>'. $date_time .'</td>
                                <td>'. $trans[$i]['card_nr'] .'</td>
                                <td>'. $trans[$i]['car_nr'] .'</td>
                                <td>'. $trans[$i]['product'] .'</td>
                                <td>'. $amount .'</td>
                                <td>'. $trans[$i]['sum'] .' '. $trans[$i]['currency'] .'</td>
                                <td>'. round(doubleval($trans[$i]['sum']) / doubleval( $trans[$i]['amount']), 2) .' '. $trans[$i]['currency'] .'</td>
                                <td>'. $trans[$i]['fuel_station'] .'</td>
                            </tr>
                        ';
                    }
                }

            ?>
            
        </table>


    </div>

</body>
</html>