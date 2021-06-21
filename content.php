<?php
if ($module == ""){
include "modul/welcome.php";
}elseif ($module == "diagnosa"){
include "modul/diagnosa/diagnosa.php";
}elseif ($module == "keterangan"){
include "modul/keterangan.php";
}
?>