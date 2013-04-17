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