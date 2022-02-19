<!DOCTYPE html>
<html>
<head>
  <title></title>
  <script type="text/javascript" src="js/jquery-3.4.0.min.js"></script>
</head>
<body class="body">

  <table border="1">
    <thead>
      <tr>
      <th>ФИО</th>
      <th>Алгебра</th>
      <th>Геометрия</th>
      <th>Физика</th>
      <th>Английский</th>
      <th>Информатика</th>
      </tr>
    </thead>
  <tbody>
    <?=$res_table;?>
  </tbody>
</table>
</body>
</html>
<script type="text/javascript">
  $('.body').on('click','.save',function(e){
    e.preventDefault();
   
    var user = $(this).data('id');
    var alg = document.getElementById('alg' + user).value;
    var fizika = document.getElementById('fizika' + user).value;
    var informatika = document.getElementById('informatika' + user).value;
    var matematika = document.getElementById('matematika' + user).value;
    var english = document.getElementById('english' + user).value;
     $.ajax({
              url: "./ajax/delete.php",
              type: "post", 
              dataType: "json",  
              data: {  
                  "user":user,
                  "alg":  alg,
                  "fizika":  fizika,
                  "informatika" : informatika,
                  "matematika":matematika,
                    "english":english 
              },
              success: function(data){
                  alert(data.html);
             } 
        });

  });
</script>