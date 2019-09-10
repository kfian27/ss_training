<?php

class HomePage extends Page {

}

class HomePage_Controller extends Page_Controller {

	public function LatestArticles(){
		return ArticlePage::get()
					->sort('Created','DESC')
					->limit(6);
	}

	public function FeaturedProperties() {
		return Property::get()
				->filter(array(
					'FeaturedOnHomepage' => true
				))
				->limit(6);
	}

	public function DataAgen() {
		return Agentdata::get();
	}
	public function DataFasilitas() {
		return Facilitydata::get();
	}
	public function DataProperties() {
		$array = new ArrayList();
		$result = DB::query('SELECT
				propertydata.ID,
				propertydata.Address,
				propertydata.AddressFull,
				propertydata.Phone,
				propertydata.VendorNan,
				propertydata.VendorPhone,
				categorydata.Name as nama_kategori
				FROM propertydata JOIN categorydata ON propertydata.CategoryDataID = categorydata.ID
				ORDER BY ID ASC;
				');
		foreach ($result as $key) {
			$array->push($key);
		}
		return $array;

	}
	public function DataKategori() {
		return Categorydata::get();
	}
}