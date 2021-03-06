<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="../../BTL_MVC_QLNK/style/style.css">
    <link rel="stylesheet" href="../../BTL_MVC_QLNK/style/stylesidebar.css">
</head>

<body>
    <header>
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light bg-light rounded">
                <div class="container-fluid">
                    <a class="navbar-brand" href="index.php">Trang chủ</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">   
                        </ul>
                        <form class="d-flex">
                            <?php
                            if(!isset($_SESSION['LoginOK'])){
                            ?>
                            <a href="index.php?controller=DangNhap&action=dangnhap"><button class="btn btn-outline-success" type="button">Đăng nhập</button></a>
                            <?php
                            }else{
                                $mang = explode('.', $_SESSION['LoginOK']);
                                $sql = "Select* from taikhoan where taikhoan = '{$mang[1]}'";
                                $connection = mysqli_connect('localhost', 'root', '', 'db_qlnk');
                                $tmp = mysqli_query($connection, $sql);
                                $conganxa = mysqli_fetch_assoc($tmp);
                                $ma_taikhoan = $conganxa['ma_taikhoan'];
                            ?>
                            <a href="index.php?controller=CongAnXa&action=index"><button class="btn btn-outline-success me-2" type="button">Quản Lý</button></a>
                            <a href="index.php?controller=DangNhap&action=dangxuat"><button class="btn btn-outline-success" type="button">Đăng xuất</button></a>
                            <?php
                            }
                            ?>
                        </form>
                    </div>
                </div>
            </nav>
        </div>
    </header>