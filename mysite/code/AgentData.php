<?php
class AgentData extends DataObject {
  
	private static $db = array (
		'Name' => 'Varchar',
		'Address' => 'Varchar',
		'Phone' => 'Varchar'
	);
	private static $has_one = array (
		'PropertyData' => 'PropertyData'
	);
	private static $summary_fields = array (
		'Name' => 'Nama Agen',
		'Address' => 'Alamat',
		'Phone' => 'No Telepon'
	);

	public function getCMSfields() {
		$fields = FieldList::create(TabSet::create('Root'));
		$fields->addFieldsToTab('Root.Main', array(
			TextField::create('Name','Nama Agen'),
			TextareaField::create('Address','Alamat'),
			NumericField::create('Phone','No Telepon')
		));

		return $fields;
	}
}