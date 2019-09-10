<?php
class FacilityData extends DataObject {
  
	private static $db = array (
		'Name' => 'Varchar'
	);


	private static $has_one = array (
		'PrimaryPhoto' => 'Image'
	);

	private static $belongs_many_many = array (
		'PropertyData' => 'PropertyData',
	);

	private static $summary_fields = array (
		'Name' => 'Nama fasilitas'
	);

	public function getCMSfields() {
		$fields = FieldList::create(TabSet::create('Root'));
		$fields->addFieldsToTab('Root.Main', array(
			TextField::create('Name','Nama fasilitas')
		));

		return $fields;
	}
}