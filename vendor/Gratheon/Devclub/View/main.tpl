{include file='helpers/head.tpl'}
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<div id="navbar" class="navbar navbar-inverse">
	<div class="navbar-inner">
		<div class="container">
			<a class="brand" href="#">Devclub: ettekanne valimine</a>
		{*
			  <div class="btn-group pull-left">
				  <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
					  <i class="icon-user"></i> Authenticate <span class="caret"></span>
				  </a>

				  <ul class="dropdown-menu">
					  <li><a href="#google_auth">Google</a></li>
					  <li><a href="#facebook_auth">Facebook</a></li>
					  <li class="divider"></li>
				  </ul>
			  </div>

  *}

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
						Sorteerimine
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

<section class="row-fluid">
	<div class="col span4" style="{if !$email}display: none;{/if}">
		<h2>Huvitav mulle</h2>
		<div class="alert alert-error isAdmin" style="display: none;">
			<button class="close" data-dismiss="alert">×</button>
			Oled nüüd <strong>eriline</strong> ja saad kustutada teiste kasutajate ettekanned. Mäleta vastutuse eest, spiderman
		</div>
		<ul id="icebox" class="sortable"></ul>
	</div>

	<div class="span4">
		<div class="col">
			<h2>Huvitavad {if $distinct_users}{$distinct_users} kasutajatele{else}kõigile{/if}</a></h2>

			<ul id="public"></ul>
		</div>
	</div>


	<div class="span4">
		<div class="col"><h2>Töötlemisel</h2>
			<ul id="backlog" class="sortable"></ul>
		</div>

		<div style="margin-top:20px;" class="col"><h2>Tahaks kuulda</h2>
			<ul id="openspace" class="sortable"></ul>
		</div>
	</div>

</section>

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
	<span class="badge" rel="tooltip" title="число голосовавших"><i class="icon-user"></i> <%=votes%></span>
	<span class="badge badge-success" rel="tooltip" title="среднее по позициям: <%=distribution%>"><%=rate%></span>
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