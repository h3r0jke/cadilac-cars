<?php
class Main extends CI_Controller {

	public function Index()
	{
		$arr['arr'] = array();
		$model = $this->Core->get_Model();
		$info = $this->Core->get_Info(); 
		for($i = 0; $i < 6; $i++)
		{
			if( $info[$i]['id_model'] == $model[$i]['id'] )
			{
				$arr['arr'][$i] = array(
					'model' => $model[$i]['model'],
					'info' => $info[$i],
					'year' => $model[$i]['year']
					);
			}

		} 
		//print_r($arr['arr']);
		$this->load->view('index', $arr);

	}
}		





















/*foreach($model as $item)
		{
			$data['info'] = array(
				'info' => $this->Core->get_Info($item['id']),
				'model' => $item['model'],
				'kuzov' => $item['kuzov']
				);

			}*/