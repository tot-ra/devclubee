<?php /* Smarty version Smarty-3.1.11, created on 2012-08-24 14:43:38
         compiled from "/opt/bitnami/apache2/htdocs/gratheon.com/devclub/vendor/Gratheon/Devclub/View/helpers/js.tpl" */ ?>
<?php /*%%SmartyHeaderCode:11010757715037f58a398884-83380007%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '708511677b93205fc690b6d9f90d86b3c5584b58' => 
    array (
      0 => '/opt/bitnami/apache2/htdocs/gratheon.com/devclub/vendor/Gratheon/Devclub/View/helpers/js.tpl',
      1 => 1345832857,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11010757715037f58a398884-83380007',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'controller' => 0,
    'key' => 0,
    'item' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.11',
  'unifunc' => 'content_5037f58a3b8ec7_56248292',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5037f58a3b8ec7_56248292')) {function content_5037f58a3b8ec7_56248292($_smarty_tpl) {?><script type='text/javascript'>
	<?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['controller']->value->arrJSVars; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value){
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
		var <?php echo $_smarty_tpl->tpl_vars['key']->value;?>
=<?php echo $_smarty_tpl->tpl_vars['item']->value;?>
;
	<?php } ?>
</script>

<?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['controller']->value->scripts; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value){
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
	<script type="text/javascript" src='<?php echo $_smarty_tpl->tpl_vars['item']->value;?>
'></script>
<?php } ?>


<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-30042696-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<?php }} ?>