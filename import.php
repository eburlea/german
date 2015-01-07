<?php
include ("blocks/db.php");
?>
<html>
<head>
    <META HTTP-EQUIV="content-type" CONTENT="text/html; charset=utf-8">
    <link rel="stylesheet" type="text/css" href="styles/main.css" />
</head>
<?php
$result = mysql_query ("SELECT * FROM noun", $db);
$nouns = array();
while($row = mysql_fetch_array($result)){
    $nouns[$row['noun_sg']] = 1;
}
if ($_FILES) {
    $file = fopen($_FILES['csv']['tmp_name'],"r");
    while (!feof($file)) {
        $row = fgetcsv($file);
        if (!isset($nouns[$row[1]])) {
            switch ($row[0]) {
                case 'der':
                    $gender = 'M';
                    break;
                case 'die':
                    $gender = 'F';
                    break;
                case 'das':
                    $gender = 'N';
                    break;
                default:
                    $gender = 'M/F';
            }
            mysql_query ("INSERT INTO noun (noun_sg,noun_pl,gender,translation) VALUES ('$row[1]','$row[3]','$gender','$row[4]')",$db);
            echo '<p class="green">New: ' . $row[1] . '</p>';
        } else {
            echo '<p class="red">Already exists: ' . $row[1] . '</p>';
        }
    }
    fclose($file);
}
?>
<body>
    <form action="" method="post" enctype="multipart/form-data">
        Choose your file to import:<br />
        <input type="file" name="csv" />
        <input type="submit" value="Import" />
    </form>
</body>
</html>