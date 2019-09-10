<?php
class CategoryData extends DataObject {
  
	private static $db = array (
		'Name' => 'Varchar'
	);

	private static $summary_fields = array (
		'Name' => 'Namanya',
	);

	public function getCMSfields() {
		$fields = FieldList::create(TabSet::create('Root'));
		$fields->addFieldsToTab('Root.Main', array(
			TextField::create('Name','Nama')
		));

		return $fields;
	}
}