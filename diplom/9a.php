<?php 
require_once('connect.php');

  if($result = $mysqli->query("select * from `9a`")){ 

    $res_table = '';
	while($data = $result->fetch_assoc()){ 
	  $res_table .= '<tr >
                       <td>  ' . $data['fio'] . ' </td>
                       <td><input type="text" id="alg' . $data['id'] . '" value="' . $data['alg'] . '"/></td>
                       <td><input type="text" id="fizika' . $data['id'] . '" value="' . $data['fizika'] . '"/></td>
                       <td><input type="text" id="informatika' . $data['id'] . '" value="' . $data['informatika'] . '"/></td>
                       <td><input type="text" id="matematika' . $data['id'] . '" value="' . $data['matematika'] . '"/></td>
                       <td><input type="text" id="english' . $data['id'] . '" value="' . $data['english'] . '"/></td>
                       <td><input type="submit" class="save" data-id="'.$data['id'].'" value="Изменить"/></td>
					</tr>';
 
  }
   $result->free(); 
   $mysqli->close(); 
}
require_once('tpl/table.tpl'); 

?>