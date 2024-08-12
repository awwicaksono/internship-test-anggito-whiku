<?php
$host = 'localhost'; // Ganti dengan host database Anda
$db = 'suitmedia'; // Ganti dengan nama database Anda
$user = 'root'; // Ganti dengan username database Anda
$pass = ''; // Ganti dengan password database Anda

// Koneksi ke database
$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Ambil parameter dari query string
$itemsPerPage = isset($_GET['itemsPerPage']) ? intval($_GET['itemsPerPage']) : 10;
$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
$filter = isset($_GET['filter']) ? $_GET['filter'] : 'newest'; // Filter default

$offset = ($page - 1) * $itemsPerPage;

// Tentukan urutan berdasarkan filter
$orderBy = ($filter === 'latest') ? 'ASC' : 'DESC';

// Query data
$sql = "SELECT date, title FROM cards ORDER BY date $orderBy LIMIT ?, ?";
$stmt = $conn->prepare($sql);
if (!$stmt) {
    die("Prepare failed: " . $conn->error);
}
$stmt->bind_param("ii", $offset, $itemsPerPage);
$stmt->execute();
$result = $stmt->get_result();

// Ambil data
$data = [];
while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

// Hitung total data
$sqlCount = "SELECT COUNT(*) AS total FROM cards";
$resultCount = $conn->query($sqlCount);
if (!$resultCount) {
    die("Count query failed: " . $conn->error);
}
$totalData = $resultCount->fetch_assoc()['total'];

// Kirim data sebagai JSON
header('Content-Type: application/json');
echo json_encode([
    'data' => $data,
    'total' => $totalData
]);

$conn->close();
?>
