<!DOCTYPE html>
<html>
<head>
	<title>{$pagetitle}</title>
	<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
<h1> Welcome to the patient section </h1>
<ul>
	<li><a href="patient.php"> Go back </a></li>
</ul>
<form action="edit.php?id={$id}" method="post">
{foreach $files as $patient}
	Name: <br>
	<input type="text" name="name" value="{$patient['name']}"> <br>
    Species: <br>
	<select name="species">
		{foreach $species as $specie}
		<option value="{$specie['sort']}">{$specie['sort']}</option>
			{/foreach}
	</select><br>
	<!-- <input type="text" name="species" value="{$patient['species']}"> <br> -->
	Status: <br>
	<textarea type="text" name="status" rows="5" cols="30">{$patient['status']}</textarea><br>
	Gender:<br>
    <input type="radio" name="male" value="male"> Male<br>
    <input type="radio" name="female" value="female"> Female<br>
    <input type="radio" name="unkown" value="unkown"> Unkown<br>
	<input type="submit" name="submit" value="Save">
{/foreach}
</form>
</body>
</html>