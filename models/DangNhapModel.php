<?php
require_once 'configs/database.php';
class DangNhapModel{
    public function connectDb() {
        $connection = mysqli_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
        if (!$connection) {
            die("Không thể kết nối. Lỗi: " .mysqli_connect_error());
        }

        return $connection;
    }
    public function closeDb($connection = null) {
        mysqli_close($connection);
    }
    public function dangNhapCAX($user = []){
        $connection = $this->connectDb();
        $query = "Select* from taikhoan where taikhoan = '{$user['user']}' and capbac = 2 and conlamviec = 1";
        $result = mysqli_query($connection, $query);
        $this->closeDb($connection);
        if(mysqli_num_rows($result)>0){
            $row = mysqli_fetch_assoc($result);
            if(password_verify($user['pass'], $row['matkhau'])){
                if($row['capbac']==1){

                }else{
                    return true;
                }
            }else{
                return false;
            }
        }else{
            return false;
        }
    }
    public function dangNhapAdmin($user = []){
        $connection = $this->connectDb();
        $query = "Select* from taikhoan where taikhoan = '{$user['user']}' and capbac = 1 and conlamviec = 1";
        $result = mysqli_query($connection, $query);
        $this->closeDb($connection);
        if(mysqli_num_rows($result)>0){
            $row = mysqli_fetch_assoc($result);
            if(password_verify($user['pass'], $row['matkhau'])){
                if($row['capbac']==1){
                    return true;
                }else{
                    return false;
                }
            }else{
                return false;
            }
        }else{
            return false;
        }
    }
}
?>