<?php

	$conn = new mysqli("127.0.0.1", "root", "sodapop254kim!", "khis");

		$sql="SELECT * FROM tbltb WHERE Year=2018 ";
		$query=mysqli_query($conn, $sql);

while ($ror = mysqli_fetch_assoc($query)){
		$out[]=$ror['Negative'];
	}

echo json_encode($out);

?>
