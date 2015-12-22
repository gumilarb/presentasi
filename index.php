<?php 
session_start();
include_once"library/inc.connection.php";
include_once"library/inc.library.php";
?>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>TOKO BUKU HARRIS - Toko Buku Online Lengkap, Terbaru dan Termurah</title>
<meta name="robots" content="index, follow">
<meta name="description" content="TOKO BUKU HARRIS adalah Toko Buku Online Lengkap yang menjual berbagai macam buku dengan harga yang bersaing. Tersedia berbagai macam buku mulai dari kategori Anak-Anak, Filsafat sampai buku sains dan teknologi. ">
<meta name="keywords" content="
Anak-Anak,
Arsitektur & Design Interior,
Bahasa & Kamus,
Biografi,
Bisnis Manajemen & Keuangan,
Buku Impor,
Buku Saku,
Current Affairs & Reportage,
Design,
Ensiklopedia,
Fashion & Beauty,
Fiksi,
Filsafat,
Fotografi,
Hobi & Interest,
Hospitality,
Humanitas,
Inspirasional & Spiritualitas,
Just for Fun,
Katalog,
Kesehatan,
Kisah Nyata,
Komik,
Komputer,
Kuliner,
Life Style,
Majalah,
Menulis & Jurnalisme,
Musik & Perfilman,
Non Fiksi,
Non-Profit and Philantrophy,
Orang Tua & Keluarga,
Pengembangan Diri & Motivasi,
Pertanian & Perkebunan,
Peternakan & Perikanan,
Politik & Hukum,
Psikologi,
Puisi & Sastra,
Referensi,
Relationship & Weddings,
Religius,
Sains & Teknologi,
Sejarah,
Seni & Budaya,
Textbooks,
Travel,
Umum, dan lainnya
">
<link href="style/styles_user.css" rel="stylesheet" type="text/css">
<link href="style/button.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="favicon.ico">
<script language="javascript" src="js.popupWindow.js"></script>
</head>

<body>
<table width="800" border="0" align="center" cellpadding="3" cellspacing="1">
  <tr>
    <td colspan="2" bgcolor="#F5F5F5">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2"><img src="images/cover.png" width="800" height="178"></td>
  </tr>
  <tr>
    <td colspan="2" align="right"><a href="?open=Home" target="_self"><strong>HOME</strong></a> | <a href="?open=Profil" target="_self"><strong>PROFIL</strong></a> | <a href="?open=Barang" target="_self"><strong>BARANG</strong></a> | <a href="?open=Panduan" target="_self"><strong>PANDUAN</strong></a> | <a href="?open=Konfirmasi" target="_self"><strong>KONFIRMASI</strong></a> </td>
  </tr>
  <tr>
    <td colspan="2" align="right" bgcolor="#CCCCCC"><form name="form1" method="post" target="_self" action="?open=Barang-Pencarian target="">
      <strong>Cari Barang :</strong> 
      <input name="txtKeyword" type="text" size="30" maxlength="100">
        <input type="submit" name="btnCari" value=" Cari ">
    </form>
    </td>
  </tr>
  <tr>
    <td width="182" valign="top" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="1" cellpadding="3">
        <tr>
          <td bgcolor="#CCCCCC" align="center"><strong>Email </strong></td>
        </tr>
        <tr>
          <td align="center">bayucahayagumilar@windowslive.com</td>
        </tr>
        <tr>
          <td bgcolor="#CCCCCC" align="center"><strong>TELEPON</strong></td>
        </tr>
        <tr>
          <td align="center">085721003550</td>
        </tr>
        <tr>
          <td><?php if(file_exists ("login.php")) { include "login.php"; }  else { echo "file login.php belum ada"; } ?> </td>
        </tr>
        <tr>
          <td bgcolor="#CCCCCC" align="center"><strong>KATEGORI</strong></td>
        </tr>
         <?php
		  $mySql = "SELECT * FROM kategori ORDER BY nm_kategori";
		  $myQry = mysql_query($mySql, $koneksidb) or die ("Query salah : ".mysql_error());
		  while($myData = mysql_fetch_array($myQry)) {
		      $Kode = $myData['kd_kategori'];
		  ?>
        <tr>
          <td> <?php echo "<a href=?open=Barang-Kategori&Kode=$Kode>$myData[nm_kategori]</a>"; ?> </td>
        </tr>
		<?php } ?>
    </table></td>
    <td width="603" valign="top" bgcolor="#FFFFFF"><?php include "buka_file.php"; ?></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" align="center" bgcolor="#F5F5F5"><span class="FOOT">Copyright &copy; 2015 All rights reserved by Bayu Cahaya Gumilar
</table>
</body>
</html>