<?php /* Smarty version Smarty-3.1.11, created on 2012-08-25 10:28:45
         compiled from "/opt/bitnami/apache2/htdocs/gratheon.com/devclub/vendor/Gratheon/Devclub/View/main.tpl" */ ?>
<?php /*%%SmartyHeaderCode:14093799035037f58a305703-23254292%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1c4830a86b1ac561eea81c5cb78753be8d6ee8bd' => 
    array (
      0 => '/opt/bitnami/apache2/htdocs/gratheon.com/devclub/vendor/Gratheon/Devclub/View/main.tpl',
      1 => 1345915707,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14093799035037f58a305703-23254292',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.11',
  'unifunc' => 'content_5037f58a3777a1_93467838',
  'variables' => 
  array (
    'email' => 0,
    'voted' => 0,
    'distinct_users' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5037f58a3777a1_93467838')) {function content_5037f58a3777a1_93467838($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ('helpers/head.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<div id="navbar" class="navbar navbar-inverse">
	<div class="navbar-inner">
		<div class="container">
			<a class="brand" href="#">Devclub: копилка докладов</a>
		

			<ul class="nav">

				<li>
					<a href="#" class="login logged_out" title="Sign-in with BrowserID" style="<?php if ($_smarty_tpl->tpl_vars['email']->value){?>display: none;<?php }?>"><i class="icon-user icon-white"></i>
						Войти</a></li>

				<li>
					<a class="story_form_trigger logged_in" href="#" style="<?php if (!$_smarty_tpl->tpl_vars['email']->value){?>display: none;<?php }?>"><i class="icon-plus icon-white"></i>
						Предложить свой доклад</a></li>

				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
					   data-toggle="dropdown">
						Сортировка
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a href="#sort/absolute">По числу голосов</a></li>
						<li><a href="#sort/arithmetic">Арифметическая по позициям</a></li>
						<li><a href="#sort/geometric">Геометрическая по позициям</a></li>
						<li><a href="#sort/harmonic">Гармоническая по позициям</a></li>
						<li><a href="#sort/harmonic_weight">Гармоническая взвешенная</a></li>
					</ul>
				</li>

			</ul>

			<ul class="nav pull-right">
				<li><a href="#"><strong id="mail"><?php echo $_smarty_tpl->tpl_vars['email']->value;?>
</strong></a></li>
				<li><a href="https://github.com/Gratheon/devclub">About</a></li>
				<li class="logged_in" style="<?php if (!$_smarty_tpl->tpl_vars['email']->value){?>display: none;<?php }?>">
					<a href="#" id="logout" title="Sign-in with BrowserID"> Выйти
						<i class="icon-off icon-white"></i></a></li>
			</ul>
		</div>
	</div>
</div>

<form class="well" id="story_form" style="display: none;">
	<h1 style="margin-bottom: 6px;">Новый доклад</h1>

	<div class="alert alert-block alert-error" style="display: none;">
		<p class="msg"></p>
	</div>

	<input type="text" name="title" placeholder="Название"/>
	<input type="text" name="authors" placeholder="Автор(ы)"/>
	<select name="duration">
		<option value="40">40 мин</option>
		<option value="5">пятиминутка</option>
		<option value="0">openspace</option>
	</select>

	<textarea name="description" placeholder="Описание" style="width:100%;height: 110px;"></textarea>

	<a href="#" class="btn btn-primary">Предложить доклад</a>
	<a href="#" class="btn btn-cancel" style="display: none;">Cancel</a>
</form>

<section class="row-fluid">
	<div class="col span4" style="<?php if (!$_smarty_tpl->tpl_vars['email']->value){?>display: none;<?php }?>">
		<h2>Интересные мне</h2>
	<?php if (!$_smarty_tpl->tpl_vars['voted']->value){?>
		<div class="alert alert-info">
			<button class="close" data-dismiss="alert">×</button>
			За эти темы, о которых авторы готовы рассказать, <strong>можно голосовать</strong> упорядочивая
			<i class="icon-resize-vertical"></i> список согласно вашему интересу
		</div>
	<?php }?>

		<div class="alert alert-error isAdmin" style="display: none;">
			<button class="close" data-dismiss="alert">×</button>
			Ты теперь <strong>необычный</strong> и можешь навсегда удалять чужие доклады. Помни об ответственности,
			spiderman
		</div>
		<ul id="icebox" class="sortable"></ul>
	</div>

	<div class="span4">
		<div class="col">
			<h2>Интересны <?php if ($_smarty_tpl->tpl_vars['distinct_users']->value){?><?php echo $_smarty_tpl->tpl_vars['distinct_users']->value;?>
 участникам<?php }else{ ?>всем<?php }?></a></h2>

		<?php if (!$_smarty_tpl->tpl_vars['email']->value){?>
			<div class="alert alert-info logged_out">
				<button class="close" data-dismiss="alert">×</button>
				Войдите с Mozilla BrowserID что-бы добавить новую тему
			</div>
		<?php }?>

			<ul id="public"></ul>
		</div>
	</div>


	<div class="span4">
		<div class="col"><h2>В подготовке</h2>

			<div class="alert alert-info">
				<button class="close" data-dismiss="alert">×</button>
				Сюда попадают отобранные организаторами темы
			</div>
			<ul id="backlog" class="sortable"></ul>
		</div>

		<div style="margin-top:20px;" class="col"><h2>Хочется послушать</h2>

			<div class="alert alert-info">
				<button class="close" data-dismiss="alert">×</button>
				Темы которые вы бы хотели услышать, как вариант - темы для <strong>openspace</strong>
			</div>
			<ul id="openspace" class="sortable"></ul>
		</div>
	</div>

</section>


<script type="text/template" id="story_item_template">


	<<?php ?>% if(status=='icebox'){ %<?php ?>>
	<a class="vote btn btn-mini" href="#">Like</a>
	<a class="unvote btn btn-mini" href="#">unLike</a>
	<<?php ?>% } %<?php ?>>

	<<?php ?>% if(typeof(owner)!='undefined'){ %<?php ?>>

	<a class="close" href="#">&times;</a>
	<i class="icon-pencil"></i>
	<<?php ?>% } %<?php ?>>


	<<?php ?>% if(rate) { %<?php ?>>
	<span class="badge" rel="tooltip" title="число голосовавших"><i class="icon-user"></i> <<?php ?>%=votes%<?php ?>></span>
	<span class="badge badge-success" rel="tooltip" title="среднее по позициям: <<?php ?>%=distribution%<?php ?>>"><<?php ?>%=rate%<?php ?>></span>
	<<?php ?>%
	} %<?php ?>>


	<strong><<?php ?>%=title%<?php ?>></strong> &mdash; <<?php ?>%=authors%<?php ?>>

	<div style="display:none;" class="extra">
		<<?php ?>% if(typeof(gravatar)!='undefined'){%<?php ?>>
		<img src="https://gravatar.com/avatar/<<?php ?>%=gravatar%<?php ?>>?s=40" style="float:right;margin-left:3px;" />
		<<?php ?>%}%<?php ?>>
		<span class="badge"><i class="icon-time"></i> <<?php ?>%=duration%<?php ?>> мин</span>
		<em style="padding:5px 0; display:block;"><<?php ?>%=description%<?php ?>></em>
		<div style="clear:both;"></div>
	</div>
</script>


<?php echo $_smarty_tpl->getSubTemplate ('helpers/js.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

</body>
</html><?php }} ?>