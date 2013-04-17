{include file='helpers/head.tpl'}
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

{include file='helpers/menu.tpl'}
{include file='helpers/form.tpl'}



<div class="alert alert-error isAdmin" style="display: none;">
	<button class="close" data-dismiss="alert">×</button>
	Oled nüüd <strong>eriline</strong> ja saad kustutada teiste kasutajate ettekanned. Mäleta vastutuse eest, spiderman
</div>


<ul class="nav nav-pills">
	<li class="active"><a data-toggle="public" href="#"> Avalik top {if $distinct_users}
		<span class="label" rel="tooltip" title="Kokku hääletajat">{$distinct_users}</span>{/if}</a></li>
	<li class=""><a data-toggle="personal" href="#"> Isiklik top</a></li>
	<li class=""><a data-toggle="plans" href="#"> Ettevalmistamisel</a></li>
	<li class=""><a data-toggle="completed" href="#"> Eelmised</a></li>
	<li class=""><a data-toggle="openspace" href="#"> Sooviks kuulda</a></li>
</ul>



{include file='helpers/storyTable.tpl'}
{include file='helpers/story.tpl'}
{include file='helpers/js.tpl'}

</body>
</html>