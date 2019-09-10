<?php
class ProdiMaster extends ModelAdmin {

	private static $menu_title = 'Program Studi';

	private static $url_segment = 'prodi';

	private static $managed_models = array (
		'Prodi'
	);

	private static $menu_icon = 'mysite/icons/property.png';
}