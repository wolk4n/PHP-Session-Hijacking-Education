<?php
session_start();
include 'conn.php';

if (!isset($_SESSION['username'])) {
    echo "Bu sayfa, korunan bir içeriktir! Lütfen bilgilerinizi girin.!";
    exit;
}

// Kullanıcının verilerini veritabanından çekme
$stmt = $conn->prepare("SELECT * FROM users WHERE username = :username");
$stmt->bindParam(':username', $_SESSION['username']);
$stmt->execute();

$user = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$user) {
    echo "Kullanıcı bulunamadı!";
    exit;
}
?>

<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Hoşgeldiniz, <?php echo $user['name'] . " " . $user['surname']; ?>!</h2>
        <p class="text-center">Bu, korunan bir içeriktir.</p>
        
        <!-- Kullanıcı bilgileri -->
        <div class="card mt-4">
            <div class="card-header">
                Kullanıcı Bilgileri
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item"><strong>Kullanıcı Adı:</strong> <?php echo $user['username']; ?></li>
                <li class="list-group-item"><strong>E-posta:</strong> <?php echo $user['mail']; ?></li>
                <li class="list-group-item"><strong>Telefon:</strong> <?php echo $user['phone']; ?></li>
                <li class="list-group-item"><strong>Adres:</strong> <?php echo $user['address']; ?></li>
            </ul>
        </div>

        <div class="text-center mt-4">
            <a href="logout.php" class="btn btn-danger">Çıkış Yap</a>
        </div>
    </div>
</body>
</html>
