<?php
include ("blocks/db.php");
$result = mysql_query ("SELECT * FROM noun", $db);
$nouns = array();
$i=0;
while($row = mysql_fetch_array($result)){
    $nouns[$i]['singular']['noun'] = $row['noun_sg'];
    $nouns[$i]['singular']['article'] = ($row['gender'] == 'M' ? 'der' : ($row['gender'] == 'F' ? 'die' : 'das'));
    $nouns[$i]['plural']['noun'] = $row['noun_pl'];
    $nouns[$i]['plural']['article'] = 'die';
    $nouns[$i++]['translation'] = $row['translation'];
}
?>
<html>
<head>
    <META HTTP-EQUIV="content-type" CONTENT="text/html; charset=utf-8">
    <link rel="stylesheet" type="text/css" href="styles/main.css" />
</head>
<body>
    <table>
        <tr>
            <td>
                <a href="#" id="der" class="article">der</a>
                <a href="#" id="die" class="article">die</a>
                <a href="#" id="das" class="article">das</a>
            </td>
            <td>
                <span id="noun"></span>
            </td>
            <td>
                <span id="plural"></span>
            </td>
            <td>
                <span id="translation"></span>
            </td>
            <td>
                <span id="answer"></span>
            </td>
        </tr>
        <tr>
            <td colspan="5">
                <button type="button" id="not_sure">Not sure</button>
                <button type="button" id="next" class="hidden">Next</button>
            </td>
        </tr>
        <tr>
            <td colspan="2">Correct:</td>
            <td colspan="3"><span id="correct">0</span></td>
        </tr>
        <tr>
            <td colspan="2">Wrong:</td>
            <td colspan="3"><span id="wrong">0</span></td>
        </tr>
        <tr>
            <td colspan="2">Not sure:</td>
            <td colspan="3"><span id="a_not_sure">0</span></td>
        </tr>
    </table>
    <div id="unknown"></div>
</body>
</html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    var index = 0;
    var mistake = false;
    var correct_answers = 0;
    var wrong_answers = 0;
    var not_sure = 0;
    var nouns = <?php echo json_encode($nouns); ?>;
    nouns = shuffle(nouns);
    $('#noun').append(nouns[index]['singular']['noun']);
    $('#plural').append(nouns[index]['plural']['article'] + ' ' + nouns[index]['plural']['noun']);
    $('#translation').append(nouns[index]['translation']);
    $('.article').off().on('click',function(event){
        event.preventDefault();
        if ($(this).attr('id') == nouns[index]['singular']['article']) {
            $('#answer').empty().append('Correct!');
            $('#next').removeClass('hidden');
        } else {
            mistake = true;
            $('#answer').empty().append('Wrong!');
        }
        $('#next').trigger('click');
    });
    $('#next').off().on('click',function(){
        if (!mistake) {
            correct_answers++;
            $('#correct').empty().append(correct_answers);
            nouns[index]['singular']['count']++;
        } else {
            wrong_answers++;
            $('#wrong').empty().append(wrong_answers);
            $('#unknown').append('<br />' + nouns[index]['singular']['article'] + ' ' + nouns[index]['singular']['noun']);
            if (nouns[index]['singular']['count'] != 0) {
                nouns[index]['singular']['count']--;
            }
        }
        index++;
        mistake = false;
        if (index == nouns.length) {
            $('#unknown').empty();
            index = 0;
            nouns = shuffle(nouns);
            $('#next').trigger('click');
            return;
        }
        if (nouns[index]['singular']['count'] > 0) {
            $('#next').trigger('click');
            return;
        }
        $('#noun').empty().append(nouns[index]['singular']['noun']);
        $('#plural').empty().append(nouns[index]['plural']['article'] + ' ' + nouns[index]['plural']['noun']);
        $('#translation').empty().append(nouns[index]['translation']);
        $('#answer').empty();
    });

    $('#not_sure').off().on('click',function(){
        not_sure++;
        $('#a_not_sure').empty().append(not_sure);
        $('#unknown').append('<br />' + nouns[index]['singular']['article'] + ' ' + nouns[index]['singular']['noun']);
        if (nouns[index]['singular']['count'] != 0) {
            nouns[index]['singular']['count']--;
        }
        index++;
        $('#noun').empty().append(nouns[index]['singular']['noun']);
        $('#plural').empty().append(nouns[index]['plural']['article'] + ' ' + nouns[index]['plural']['noun']);
        $('#translation').empty().append(nouns[index]['translation']);
        $('#answer').empty();
    });

    function shuffle(array) {
        var currentIndex = array.length, temporaryValue, randomIndex ;

        // While there remain elements to shuffle...
        while (0 !== currentIndex) {

            // Pick a remaining element...
            randomIndex = Math.floor(Math.random() * currentIndex);
            currentIndex -= 1;

            // And swap it with the current element.
            temporaryValue = array[currentIndex];
            array[currentIndex] = array[randomIndex];
            array[randomIndex] = temporaryValue;
        }

        return array;
    }
});
</script>