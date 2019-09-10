<?php
class CategoryAdmin extends ModelAdmin {

	private static $menu_title = 'Kategori';

	private static $url_segment = 'kategori';

	private static $managed_models = array (
		'CategoryData'
	);

	private static $menu_icon = 'mysite/icons/property.png';
}