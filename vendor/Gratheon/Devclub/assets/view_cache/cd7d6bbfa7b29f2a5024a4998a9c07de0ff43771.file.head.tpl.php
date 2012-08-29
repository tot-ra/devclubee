<?php /* Smarty version Smarty-3.1.11, created on 2012-08-24 14:43:38
         compiled from "/opt/bitnami/apache2/htdocs/gratheon.com/devclub/vendor/Gratheon/Devclub/View/helpers/head.tpl" */ ?>
<?php /*%%SmartyHeaderCode:12059246215037f58a37b171-23302227%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cd7d6bbfa7b29f2a5024a4998a9c07de0ff43771' => 
    array (
      0 => '/opt/bitnami/apache2/htdocs/gratheon.com/devclub/vendor/Gratheon/Devclub/View/helpers/head.tpl',
      1 => 1345832857,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '12059246215037f58a37b171-23302227',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'title' => 0,
    'controller' => 0,
    'item' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.11',
  'unifunc' => 'content_5037f58a395f17_28961435',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5037f58a395f17_28961435')) {function content_5037f58a395f17_28961435($_smarty_tpl) {?><!DOCTYPE HTML>
<html>
<head>
	<title><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</title>

	<meta name="Author" content="Artjom Kurapov - http://kurapov.name" />
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

	<link rel="icon" href="/favicon.ico" type="image/x-icon" />

	<?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['controller']->value->arrStyles; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value){
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
		<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['item']->value['url'];?>
" media="<?php echo $_smarty_tpl->tpl_vars['item']->value['media'];?>
" />
	<?php } ?>

	<script>
		//for dumb IE
	  document.createElement('header');
	  document.createElement('footer');
	  document.createElement('section');
	  document.createElement('aside');
	  document.createElement('nav');
	  document.createElement('article');
	</script><?php }} ?>