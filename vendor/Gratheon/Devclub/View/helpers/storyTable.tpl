<div class="storyRow">
	<div id="public" class="col">
		<ul id="public_ul" data-status="icebox"></ul>
	</div>

	<div id="personal" class="col hidden">
	{if !$voted}
		<div class="alert alert-info">
			<button class="close" data-dismiss="alert">×</button>
			Ettekanned saab hinnata <strong>sorteerimisega</strong>
			<i class="icon-resize-vertical"></i>
		</div>
	{/if}
		<ul id="personal_ul" class="sortable" data-status="icebox"></ul>
	</div>

	<div id="plans" class="col hidden">
		<ul id="backlog" class="sortable" data-status="backlog"></ul>
	</div>

	<div id="completed" class="col hidden">
		<ul id="completed_ul" class="sortable" data-status="completed"></ul>
	</div>

	<div id="openspace" class="col hidden">
		<ul id="openspace_ul" class="sortable" data-status="openspace"></ul>
	</div>
</div>