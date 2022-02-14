<?php    
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
    require_once('../connect.php');
    if(!empty($_POST['user']) && !empty($_POST['alg'])
    && !empty($_POST['fizika']) && !empty($_POST['informatika'])
    && !empty($_POST['matematika']) && !empty($_POST['english'])){
        $user = intval($_POST['user']);
        if(!empty($user)){

        $update = "UPDATE 
                        `9a`
                    SET 
                        `alg` = ?,
                        `fizika` = ?,
                        `informatika` = ?,
                        `matematika` = ?,
                        `english` = ?
                    WHERE 
                        `id`='".$user."'
                    ";
            $stmt = $mysqli->prepare($update);
            $stmt->bind_param('iiiii',$_POST['alg'],$_POST['fizika'],$_POST['informatika'],$_POST['matematika'],$_POST['english']);
            $stmt->execute();
            $stmt->close();
            $mysqli->close();
           echo json_encode(array(
            'result'=>'success',
            'html'=>'Изменено, нажмите Ок'
           ));
         return;

        }
    }

}