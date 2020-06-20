<?php
include('database.inc.php');
$txt=mysqli_real_escape_string($con,$_POST['txt']);
$sql1="select * from chatbot_hints where question like '%$txt%'";
$sql="select reply from chatbot_hints where question like '%$txt%'";
$res=mysqli_query($con,$sql);
$res1=mysqli_query($con,$sql1);
$rows=mysqli_fetch_array($res1);
$html2 = "";

	
if(mysqli_num_rows($res)>0){
	$row=mysqli_fetch_assoc($res);
	$html=$row['reply'];
	if( $rows['question'] == "help"){
		$html= "
	For now these are the commands i understand
	<br>
	1. what is covid19 - to view all what covid19 is about.
	<br>
	2. How are you.
	<br>
	3. what is your name.
	<br>
	4. Where are your from.
	<br>
	
	5. Who designed you.
	<br>
	6. Are you my friend.
	<br>
	7. What language were you built with.
	<br>
	8. how smart are you.
	";
	}

	if( $rows['question'] == "what is covid19" ){
		$html2 = "
		<br>
		<br>
		
	For more covid19 info, type covid19 help?
	";
	
	}
	
	if( $rows['question'] == "fine and you" ){
		$html ="Im doing great, thanks
	";
	
	}
}else{
	$html="Sorry not be able to understand you type help to get the list of commands that i can understand";
}

$added_on=date('Y-m-d h:i:s');
mysqli_query($con,"insert into message(message,added_on,type) values('$txt','$added_on','user')");
$added_on=date('Y-m-d h:i:s');
mysqli_query($con,"insert into message(message,added_on,type) values('$html','$added_on','bot')");
echo $html;
echo $html2;
?>