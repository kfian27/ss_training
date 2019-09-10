<?php
class PropertyDataAdmin extends ModelAdmin {

	private static $menu_title = 'Property Data';

	private static $url_segment = 'propertiesdata';

	private static $managed_models = array (
		'PropertyData'
	);

	private static $menu_icon = 'mysite/icons/property.png';
}