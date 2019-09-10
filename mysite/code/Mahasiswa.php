<?php
class Mahasiswa extends DataObject {
  
	private static $db = array (
		'NimMhs' => 'Varchar',
		'NmMhs' => 'Varchar',
		'AlmMhs' => 'Varchar',
		'TlpMhs' => 'Varchar',
		'StMhs' => 'Boolean',
	);


	private static $has_one = array (
		'PhotoMhs' => 'Image'
	);

	private static $summary_fields = array (
		'NimMhs' => 'NIM',
		'NmMhs' => 'Nama',
		'AlmMhs' => 'Alamat',
		'TlpMhs' => 'Telepon'
		// 'FeaturedOnHomepage.Nice' => 'Featured?'
	);

	// public function searchableFields() {
	// 	return array (
	// 		'Title' => array (
	// 			'filter' => 'PartialMatchFilter',
	// 			'title' => 'Title',
	// 			'field' => 'TextField'
	// 		),
	// 		'RegionID' => array (
	// 			'filter' => 'ExactMatchFilter',
	// 			'title' => 'Region',
	// 			'field' => DropdownField::create('RegionID')
	// 				->setSource(
	// 					Region::get()->map('ID','Title')
	// 				)
	// 				->setEmptyString('-- Any region --')				
	// 		),
	// 		'FeaturedOnHomepage' => array (
	// 			'filter' => 'ExactMatchFilter',
	// 			'title' => 'Only featured'				
	// 		)
	// 	);
	// }

	public function getCMSfields() {
		$fields = FieldList::create(TabSet::create('Root'));
		$fields->addFieldsToTab('Root.Main', array(
			TextField::create('NimMhs','NIM'),
			TextField::create('NmMhs','Nama'),
			TextareaField::create('AlmMhs','Alamat'),
			NumericField::create('TlpMhs','Telepon'),
			CheckboxField::create('StMhs','Status Mahasiswa')
		));
		$fields->addFieldToTab('Root.Photos', $upload = UploadField::create(
			'PhotoMhs',
			'Foto Mahasiswa'
		));

		$upload->getValidator()->setAllowedExtensions(array(
			'png','jpeg','jpg','gif'
		));
		$upload->setFolderName('mahasiswa-photos');

		return $fields;
	}
}