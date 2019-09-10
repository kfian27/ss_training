<?php
class PropertyData extends DataObject {
  
	private static $db = array (
		'Address' => 'Varchar',
		'AddressFull' => 'Varchar',
		'Phone' => 'Varchar',
		'VendorNan' => 'Varchar',
		'VendorPhone' => 'Varchar'
	);
	private static $has_one = array (
		'CategoryData' => 'CategoryData'
	);
	private static $many_many = array (
		'Fasilitas' => 'FacilityData'
	);
	private static $has_many = array (
		'Agen' => 'AgentData'
	);
	private static $summary_fields = array (
		'Address' => 'Address',
		'AddressFull' => 'AddressFull',
		'Phone' => 'Phone',
		'VendorNan' => 'VendorNan',
		'VendorPhone' => 'VendorPhone'
	);
	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldsToTab('Root.Main', array(
			TextField::create('Address','Alamat'),
			TextareaField::create('AddressFull','Alamat Full'),
			NumericField::create('Phone','No Telepon'),
			TextField::create('VendorNan','VendorNan'),
			NumericField::create('VendorPhone','Nomor Vendor')
		));
		$fields->addFieldToTab('Root.Fasilitas', CheckboxSetField::create(
			'Fasilitas',
			'Selected Fasilitas',
			Facilitydata::get()->map('ID','Name')
		));
		return $fields;
	}
}