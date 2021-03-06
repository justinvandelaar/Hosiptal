<!DOCTYPE html>
<html>
<head>
	<title>{$pagetitle}</title>
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
	<script type="text/javascript" src="../Js/jquery-latest.js"></script>
    <script type="text/javascript" src="../Js/jquery.tablesorter.js"></script>
</head>
<body>
<h1> Welcome to the patient section </h1>
<ul>
	<li><a href="../index.php"> home </a></li>
	<li><a href="create.php"> Create patient </a></li>
</ul>

<table id="myTable">
<thead>
	<tr class="head">
		<th>Name &nbsp;</th>
		<th>Species &nbsp;</th>
		<th>Stataus &nbsp;</th>
		<th>Gender &nbsp;</th>
		<th></th>
		<th></th>
	</tr>
</thead>
<tbody> 
	<tr>
	{foreach $patients as $patient}
		<td>{$patient['name']} &nbsp; </td>
		<td>{$patient['species']} &nbsp; </td>
		<td>{$patient['status']} &nbsp; </td>
		<td>{$patient['gender']} &nbsp; </td>
		<td><a href="edit.php?id={$patient['id']}"> Edit </a></td>
		<td><a href="delete.php?id={$patient['id']}"> Delete</a></td>
	</tr>
	{/foreach}
	</tbody>
</table>

</body>
<script type="text/javascript">
$(document).ready(function() 
    { 
        $("#myTable").tablesorter(); 
    } 
); 
</script>
</html>