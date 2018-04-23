<?php
    if (!empty($_POST)) {
        $user = $_POST['user'];
        $pass = $_POST['pass'];

        if($user == "scwitte"
        && $pass == "EthFuckLive")
        {
            $file = 'contents/file.zip';

            if (file_exists($file)) {
                header('Content-Description: File Transfer');
                header('Content-Type: application/octet-stream');
                header('Content-Disposition: attachment; filename='.basename($file));
                header('Content-Transfer-Encoding: binary');
                header('Expires: 0');
                header('Cache-Control: must-revalidate');
                header('Pragma: public');
                header('Content-Length: ' . filesize($file));
                ob_clean();
                flush();
                readfile($file);
                exit;
            }
        }
    }
?>

<form method="POST" action="">
    User <input type="TEXT" name="user"></input>
    Pass <input type="PASSWORD" name="pass"></input>
    <input type="submit" name="submit"></input>
</form>

