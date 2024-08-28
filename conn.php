<?php
$servername = "localhost";
$username = "root";  // Veritabanı kullanıcı adı
$password = "";      // Veritabanı şifresi
$dbname = "siber_guvenlik";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Bağlantı hatası: " . $e->getMessage();
}
?>