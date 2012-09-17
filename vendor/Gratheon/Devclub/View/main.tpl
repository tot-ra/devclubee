{include file='helpers/head.tpl'}
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<div id="navbar" class="navbar navbar-inverse">
	<div class="navbar-inner">
		<div class="container">
			<a class="brand" href="#">Devclub: ettekande valimine</a>

			<ul class="nav">
				<li>
					<a href="#" class="login logged_out" title="Sign-in with BrowserID" style="{if $email}display: none;{/if}"><i class="icon-user icon-white"></i>
						Sisene</a></li>

				<li>
					<a class="story_form_trigger logged_in" href="#" style="{if !$email}display: none;{/if}"><i class="icon-plus icon-white"></i>
						Pakku oma ettekanne</a></li>

				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
					   data-toggle="dropdown">
						Sorteeri
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a href="#sort/absolute">Hääle järgi</a></li>
						<li><a href="#sort/arithmetic">Arütmeetiline</a></li>
						<li><a href="#sort/geometric">Geomeetriline</a></li>
						<li><a href="#sort/harmonic">Harmooniline</a></li>
						<li><a href="#sort/harmonic_weight">Harmooniline massiga</a></li>
					</ul>
				</li>

			</ul>

			<ul class="nav pull-right">
				<li><a href="#"><strong id="mail">{$email}</strong></a></li>
				<li><a href="https://github.com/Gratheon/devclubee">About</a></li>
				<li class="logged_in" style="{if !$email}display: none;{/if}">
					<a href="#" id="logout" title="Sign-in with BrowserID"> Välja
						<i class="icon-off icon-white"></i></a></li>
			</ul>
		</div>
	</div>
</div>

<form class="well" id="story_form" style="display: none;">
	<h1 style="margin-bottom: 6px;">Uus ettekanne</h1>

	<div class="alert alert-block alert-error" style="display: none;">
		<p class="msg"></p>
	</div>

	<input type="text" name="title" placeholder="Pealkiri"/>
	<input type="text" name="authors" placeholder="Autor(id)"/>
	<select name="duration">
		<option value="40">40 min</option>
		<option value="5">5 min</option>
		<option value="0">openspace</option>
	</select>

	<textarea name="description" placeholder="Kirjeldus" style="width:100%;height: 110px;"></textarea>

	<a href="#" class="btn btn-primary">Lisa ettekanne</a>
	<a href="#" class="btn btn-cancel" style="display: none;">Loobu</a>
</form>

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

<div class="row">
	<div id="public" class="col span5">
		<ul id="public_ul" data-status="icebox"></ul>
	</div>

	<div id="personal" class="col hidden span5">
	{if !$voted}
		<div class="alert alert-info">
			<button class="close" data-dismiss="alert">×</button>
			Ettekanned saab hinnata <strong>sorteerimisega</strong>
			<i class="icon-resize-vertical"></i>
		</div>
	{/if}
		<ul id="personal_ul" class="sortable" data-status="icebox"></ul>
	</div>

	<div id="plans" class="col hidden span5">
		<ul id="backlog" class="sortable" data-status="backlog"></ul>
	</div>

	<div id="completed" class="col hidden span5">
		<ul id="completed_ul" class="sortable" data-status="completed"></ul>
	</div>

	<div id="openspace" class="col hidden span5">
		<ul id="openspace_ul" class="sortable" data-status="openspace"></ul>
	</div>
</div>
</div>

{literal}
<script type="text/template" id="story_item_template">


	<% if(status=='icebox'){ %>
	<a class="vote btn btn-mini" href="#">Like</a>
	<a class="unvote btn btn-mini" href="#">unLike</a>
	<% } %>

	<% if(typeof(owner)!='undefined'){ %>

	<a class="close" href="#">&times;</a>
	<i class="icon-pencil"></i>
	<% } %>


	<% if(rate) { %>
	<span class="badge" rel="tooltip" title="hääletusi"><i class="icon-user"></i> <%=votes%></span>
	<span class="badge badge-success" rel="tooltip" title="keskmine: <%=distribution%>"><%=rate%></span>
	<%
	} %>


	<strong><%=title%></strong> &mdash; <%=authors%>

	<div style="display:none;" class="extra">
		<% if(typeof(gravatar)!='undefined'){%>
		<img src="https://gravatar.com/avatar/<%=gravatar%>?s=40" style="float:right;margin-left:3px;" />
		<%}%>
		<span class="badge"><i class="icon-time"></i> <%=duration%> min</span>
		<em style="padding:5px 0; display:block;"><%=description%></em>
		<div style="clear:both;"></div>
	</div>
</script>
{/literal}

{include file='helpers/js.tpl'}
</body>
</html>