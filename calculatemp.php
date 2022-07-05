<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Calculadora de Temperatura</title>
</head>

<body>
<?php 
// TEMPERATURE CALCULATOR MODULE 
// AUTHOR: ALEXIA RIVERA
// THIS SOFTWARE IS LICENSED UNDER A GNU / GPL 3.0 LICENSE. 


	//chequeamos si el formulario fue completado
	if($_POST){
		//conseguir los input values
		$cc = $_POST['cc'];
		$ff = $_POST['ff'];
		$kk = $_POST['kk'];
		// un piquitito de matematica.
		$ccakk =  $cc + 273.15;
		$ccaff = ($cc * 1.8) + 32;  
		$ffakk = ($ff - 32) * 5/9 + 273.15;
		$ffacc = ($ff - 32) * 5/9;
		$kkacc = $kk - 273.15;
		$kkaff = ($kk - 273.15) * 9/5 + 32;
	
	}
?>
<h2> Calculadora de temperatura</h2>
<p>Para calcular una temperatura negativa simplemente introducir el - junto con la temp. (ej -10)</p>
<h4>Calcular Celcius a Kelvin y Fahrenheit</h4>
    <form action="" method="post">
	<input size="10" type="text" name="cc" value="<?php echo $cc;?>" /> 
    <input value="Calcular C" type="submit"  />
</form>

<?php 
if( isset( $cc ) ) {
echo "<h3> " . $cc .  "C son " . $ccakk . "K </h3>";
echo "<h3> " . $cc .  "C son " . $ccaff . "F </h3>";
}
?>
</p>
<h4>Calcular Fahrenheit a Kelvin y Celcius</h4>
<form action="" method="post">
	<input size="10" type="text" name="ff" value="<?php echo $ff;?>" /> 
    <input value="Calcular F" type="submit"  />
</form>
<?php 
if( isset( $ff ) ) {
echo "<h3> " . $ff .  "F son " . number_format($ffakk,2) . "K </h3>";
// recurri a la func number_format para truncar los decimales a 3 de la variable fahrenheit a kelvin ($ffakk)
echo "<h3> " . $ff .  "F son " . number_format($ffacc,2) . "C </h3>";
}
?>
<h4>Calcular Kelvin a Celcius y Fahrenheit</h4>
    <form action="" method="post">
	<input size="10" type="text" name="kk" value="<?php echo $kk;?>" /> 
    <input value="Calcular K" type="submit"  />
</form>
<?php 
if( isset( $kk ) ) {
echo "<h3> " . $kk .  "K son " . number_format($kkacc,2) . "C </h3>";
// recurri a la func number_format para truncar los decimales a 3 de la variable fahrenheit a kelvin ($ffakk)
echo "<h3> " . $kk .  "K son " . number_format($kkaff,2) . "F </h3>";
}
?>
<p>&nbsp;</p>
<p><strong>Alexia Rivera</strong>. Si querés usar este código en tu aplicación, está disponible en mi github (<a href="https://github.com/alexiarstein">github.com/alexiarstein</a>) Licencia GNU/GPL 3.0</p>
    <p>&nbsp;</p>
</body>
</html>
