<?php

	$conn = new mysqli("127.0.0.1", "root", "sodapop254kim!", "khis");





		$sql="SELECT * FROM tbltyphoid WHERE Year=2017 ";
		$query=mysqli_query($conn, $sql);

while ($ror = mysqli_fetch_assoc($query)){
		$out[]=$ror['Population'];
	}

echo json_encode($out);

?>
