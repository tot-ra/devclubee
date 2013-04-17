<div id="navbar" class="navbar navbar-inverse">
	<div class="navbar-inner">
		<div class="container">
			<a class="brand" href="#"><img src="/vendor/Gratheon/Devclub/assets/img/devclub_mini_logo.png" alt="" />Devclub: ettekande valimine</a>

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