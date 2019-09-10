<?php
class AgentAdmin extends ModelAdmin {

	private static $menu_title = 'Agen';

	private static $url_segment = 'agen';

	private static $managed_models = array (
		'AgentData'
	);

	private static $menu_icon = 'mysite/icons/property.png';
}