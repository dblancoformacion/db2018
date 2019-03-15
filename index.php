hola mundo soy David y te voy a enviar a: 

<a href="http://172.31.128.189/db2018">Imanol</a>

<form>
	<input name="email_f" type="email"/>
	<button>Enviar</button>
</form>

<?php

if(isset($_GET['email_f'])) echo $_GET['email_f'];

$conn=new mysqli('127.0.0.1','root','','db2018');

$conn->query("
	INSERT INTO datos (datos,ip)
	  VALUES (NOW(),'$_SERVER[REMOTE_ADDR]');
");

if(isset($_GET['email_f'])) $conn->query("
	UPDATE usuarios
	  SET email='".$_GET['email_f']."'
	  WHERE ip='".$_SERVER['REMOTE_ADDR']."';
");

?>

<pre>
if(isset($_GET['email_f'])) $conn->query("
	UPDATE usuarios
	  SET email='".$_GET['email_f']."'
	  WHERE ip='".$_SERVER['REMOTE_ADDR']."';
");

UPDATE usuarios
  SET email='dblanco@alpeformacion.es'
  WHERE ip='172.31.128.235';

SELECT * FROM (
    SELECT ip,COUNT(*) n FROM datos
      WHERE ip IS NOT NULL
      AND ip NOT IN (
        SELECT ip FROM usuarios
          WHERE nombre='David'
      )
      GROUP BY 1
     HAVING COUNT(*)=(
        SELECT MAX(n) FROM (
           SELECT ip,COUNT(*) n FROM datos
            WHERE ip IS NOT NULL
            AND ip NOT IN (
              SELECT ip FROM usuarios
                WHERE nombre='David'
            )
          GROUP BY 1
        ) c1
    )  
  ) c2 LEFT JOIN usuarios USING(ip);
</pre>








