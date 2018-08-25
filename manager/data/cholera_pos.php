<?php

	$conn = new mysqli("127.0.0.1", "root", "sodapop254kim!", "khis");





		$sql="SELECT * FROM tblmalaria WHERE Year=2018 ";
		$query=mysqli_query($conn, $sql);

while ($ror = mysqli_fetch_assoc($query)){
		$out[]=$ror['Positive'];
	}

echo json_encode($out);

?>
