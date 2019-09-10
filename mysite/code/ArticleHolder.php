<?php

class ArticleHolder extends Page{
		
	private static $allowed_children = array(
		'ArticlePage'
	);
	
	private static $has_many = array (
		'Categories' => 'ArticleCategory'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Categories', GridField::create(
			'Categories',
			'Article categories',
			$this->Categories(),
			GridFieldConfig_RecordEditor::create()
		));

		return $fields;
	}

	public function Regions () {
		$page = RegionsPage::get()->first();

		if($page) {
			return $page->Regions();
		}
	}

	public function ArchiveDates() {
		$list = ArrayList::create();
		$stage = Versioned::current_stage();

		$query = new SQLQuery(array ());
		$query->selectField("DATE_FORMAT(`Date`,'%Y_%M_%m')","DateString")
			  ->setFrom("ArticlePage_{$stage}")
			  ->setOrderBy("Date", "ASC")
			  ->setDistinct(true);
		$result = $query->execute();
		
		if($result) {
			while($record = $result->nextRecord()) {
				list($year, $monthName, $monthNumber) = explode('_', $record['DateString']);

				$list->push(ArrayData::create(array(
					'Year' => $year,
					'MonthName' => $monthName,
					'MonthNumber' => $monthNumber,
					'Link' => $this->Link("date/$year/$monthNumber"),
					'ArticleCount' => ArticlePage::get()->where("
							DATE_FORMAT(`Date`,'%Y%m') = '{$year}{$monthNumber}'
							AND ParentID = {$this->ID}
						")->count()
				)));
			}
		}
		return $list; 
	}
}

class ArticleHolder_Controller extends Page_Controller{
	
	private static $allowed_actions = array (
		'category',
		'region',
		'date',
		'PropertyGetByRegion',
		'HapusData',
		'EditData',
		'UpdateData',
		'EditDataAgen',
		'TambahAgen',
		'EditDataFasilitas',
		'TambahFasilitas',
		'EditDataKategori',
		'TambahKategori',
		'EditDataProperti',
		'TambahProperti'
	);
	
	protected $articleList;

	public function init () {
		parent::init();

		$this->articleList = ArticlePage::get()->filter(array(
			'ParentID' => $this->ID
		))->sort('Date DESC');
	}

	public function category (SS_HTTPRequest $r) {
		$category = ArticleCategory::get()->byID(
			$r->param('ID')
		);

		if(!$category) {
			return $this->httpError(404,'That category was not found');
		}

		$this->articleList = $this->articleList->filter(array(
			'Categories.ID' => $category->ID
		));

		return array (
			'SelectedCategory' => $category
		);
	}

	public function region (SS_HTTPRequest $r) {
		$region = Region::get()->byID(
			$r->param('ID')
		);

		if(!$region) {
			return $this->httpError(404,'That region was not found');
		}

		$this->articleList = $this->articleList->filter(array(
			'RegionID' => $region->ID
		));

		return array (
			'SelectedRegion' => $region
		);
	}
	public function PropertyGetByRegion(){
		$sql = property::get()->where("RegionID =".$_POST['RegionID']);
		$data = '<select class="form-control dropdown chzn-done" id="hasil">';
		$data .= '<option selected disabled>-Pilih Kota-</option>';
		// $result = DB::query($sql);
		foreach ($sql as $row) 
		{
			$data .= "<option value='$row->ID'>$row->Title</option>";
		}
		$data .= '</select>';
		return $data;
	}
	public function HapusData(){
		$query = SQLDelete::create()
		    ->setFrom('"ArticleComment"')
		    ->setWhere(array('"ArticleComment"."ID"' => $_POST['hapusnya']));
		$query->execute();
		return "oke";
	}
	public function EditData(){
		// $result = Db::query("select * from articlecomment where ID =".$_POST['editnya']);
		// $query = $result->execute;
		$result = articlecomment::get()->where("ID =".$_POST['editnya']);
		$data = array();
		foreach ($result as $key) {
			$data['email'] = $key->Email;
			$data['comment'] = $key->Comment;
			$data['name'] = $key->Name;
			$data['idnya'] = $key->ID;
		}
		echo json_encode($data);
	}
	public function UpdateData(){
		$id = $_POST['id'];
		$name = $_POST['name'];
		$email = $_POST['email'];
		$comment = $_POST['comment'];
		$result = Db::query('UPDATE articlecomment SET Name = "$name", Comment = "$comment", Email = "$email", LastEdited = NOW() WHERE ID = "$id"');

		return "succes";
	}

	public function date(SS_HTTPRequest $r) {
		$year = $r->param('ID');
		$month = $r->param('OtherID');

		if(!$year) return $this->httpError(404);

		$startDate = $month ? "{$year}-{$month}-01" : "{$year}-01-01";
		
		if(strtotime($startDate) === false) {
			return $this->httpError(404, 'Invalid date');
		}

		$adder = $month ? '+1 month' : '+1 year';
		$endDate = date('Y-m-d', strtotime(
						$adder, 
						strtotime($startDate)
					));

		$this->articleList = $this->articleList->filter(array(
			'Date:GreaterThanOrEqual' => $startDate,
			'Date:LessThan' => $endDate 
		));

		return array (
			'StartDate' => DBField::create_field('SS_DateTime', $startDate),
			'EndDate' => DBField::create_field('SS_DateTime', $endDate)
		);

	}

	public function PaginatedArticles ($num = 10) {		
		return PaginatedList::create(
			$this->articleList,
			$this->getRequest()
		)->setPageLength($num);
	}

	public function EditDataAgen(){
		$result = Agentdata::get()->where("ID =".$_POST['editnya']);
		$data = array();
		foreach ($result as $key) {
			$data['Name'] = $key->Name;
			$data['Address'] = $key->Address;
			$data['Phone'] = $key->Phone;
			$data['ID'] = $key->ID;
		}
		echo json_encode($data);
	}
	public function EditDataFasilitas(){
		$result = Facilitydata::get()->where("ID =".$_POST['editnya']);
		$data = array();
		foreach ($result as $key) {
			$data['Name'] = $key->Name;
			$data['ID'] = $key->ID;
		}
		echo json_encode($data);
	}
	public function TambahAgen(){
		if($_POST['id_agen']==null || $_POST['id_agen']==""){
			$insert = SQLInsert::create('"AgentData"');
			// $insert->addRow(array('"LastEdited"' => now()));
			// $insert->addRow(array('"Created"' => now()));
			$insert->addRow(array('"Name"' => trim($_POST['nama_agen']),'"Address"' => trim($_POST['alamat_agen']),'"Phone"' => trim($_POST['tlp_agen'])));
			$columns = $insert->getColumns();
			$insert->assignSQL('"LastEdited"', 'now()');
			$insert->assignSQL('"Created"', 'now()');
			$insert->execute();
			return "berhasil";
		}
		else{
			$update = SQLUpdate::create('"Agentdata"')->addWhere(array('ID' => $_POST['id_agen']));
			$update->addAssignments(array('"Name"' => trim($_POST['nama_agen']),'"Address"' => trim($_POST['alamat_agen']),'"Phone"' => trim($_POST['tlp_agen'])));
			// Assigning a value using a pure SQL expression
			$update->assignSQL('"LastEdited"', 'NOW()');

			// Perform the update
			$update->execute();
			return "berhasil";
		}
	}
	public function TambahFasilitas(){
		if($_POST['id_fasilitas']==null || $_POST['id_fasilitas']==""){
			$insert = SQLInsert::create('"Facilitydata"');
			// $insert->addRow(array('"LastEdited"' => now()));
			// $insert->addRow(array('"Created"' => now()));
			$insert->addRow(array('"Name"' => trim($_POST['nama_fasilitas'])));
			$columns = $insert->getColumns();
			$insert->assignSQL('"LastEdited"', 'now()');
			$insert->assignSQL('"Created"', 'now()');
			$insert->execute();
			return "berhasil";
		}
		else{
			$update = SQLUpdate::create('"Facilitydata"')->addWhere(array('ID' => $_POST['id_fasilitas']));
			$update->addAssignments(array('"Name"' => trim($_POST['nama_fasilitas'])));
			// Assigning a value using a pure SQL expression
			$update->assignSQL('"LastEdited"', 'NOW()');

			// Perform the update
			$update->execute();
			return "berhasil";
		}
	}
	public function EditDataKategori(){
		$result = Categorydata::get()->where("ID =".$_POST['editnya']);
		$data = array();
		foreach ($result as $key) {
			$data['Name'] = $key->Name;
			$data['ID'] = $key->ID;
		}
		echo json_encode($data);
	}
	public function TambahKategori(){
		if($_POST['id_kategori']==null || $_POST['id_kategori']==""){
			$insert = SQLInsert::create('"Categorydata"');
			// $insert->addRow(array('"LastEdited"' => now()));
			// $insert->addRow(array('"Created"' => now()));
			$insert->addRow(array('"Name"' => trim($_POST['nama_kategori'])));
			$columns = $insert->getColumns();
			$insert->assignSQL('"LastEdited"', 'now()');
			$insert->assignSQL('"Created"', 'now()');
			$insert->execute();
			return "berhasil";
		}
		else{
			$update = SQLUpdate::create('"Categorydata"')->addWhere(array('ID' => $_POST['id_kategori']));
			$update->addAssignments(array('"Name"' => trim($_POST['nama_kategori'])));
			// Assigning a value using a pure SQL expression
			$update->assignSQL('"LastEdited"', 'NOW()');

			// Perform the update
			$update->execute();
			return "berhasil";
		}
	}
	public function EditDataProperti(){
		$result = Propertydata::get()->where("ID =".$_POST['editnya']);
		$data = array();
		foreach ($result as $key) {
			$data['Address'] = $key->Address;
			$data['AddressFull'] = $key->AddressFull;
			$data['Phone'] = $key->Phone;
			$data['VendorNan'] = $key->VendorNan;
			$data['VendorPhone'] = $key->VendorPhone;
			$data['CategoryID'] = $key->CategoryDataID;
			$data['ID'] = $key->ID;
		}
		echo json_encode($data);
	}
	public function TambahProperti(){
		if($_POST['id_properti']==null || $_POST['id_properti']==""){
			$insert = SQLInsert::create('"Propertydata"');
			// $insert->addRow(array('"LastEdited"' => now()));
			// $insert->addRow(array('"Created"' => now()));
			$insert->addRow(array('"Address"' => trim($_POST['alamat_properti']),'"AddressFull"' => trim($_POST['full_alamat']),'"Phone"' => trim($_POST['tlp_properti']),'"VendorNan"' => trim($_POST['nama_vendor']),'"VendorPhone"' => trim($_POST['tlp_vendor']),'"CategoryDataID"' => trim($_POST['kategori_id'])));
			$columns = $insert->getColumns();
			$insert->assignSQL('"LastEdited"', 'now()');
			$insert->assignSQL('"Created"', 'now()');
			$insert->execute();
			return "berhasil";
		}
		else{
			$update = SQLUpdate::create('"Propertydata"')->addWhere(array('ID' => $_POST['id_properti']));
			$update->addAssignments(array('"Address"' => trim($_POST['alamat_properti']),'"AddressFull"' => trim($_POST['full_alamat']),'"Phone"' => trim($_POST['tlp_properti']),'"VendorNan"' => trim($_POST['nama_vendor']),'"VendorPhone"' => trim($_POST['tlp_vendor']),'"CategoryDataID"' => trim($_POST['kategori_id'])));
			// Assigning a value using a pure SQL expression
			$update->assignSQL('"LastEdited"', 'NOW()');

			// Perform the update
			$update->execute();
			return "berhasil";
		}
	}
}