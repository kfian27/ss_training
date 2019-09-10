<?php
class FacilityAdmin extends ModelAdmin {

	private static $menu_title = 'Fasilitas';

	private static $url_segment = 'fasilitas';

	private static $managed_models = array (
		'FacilityData'
	);

	private static $menu_icon = 'mysite/icons/property.png';
}