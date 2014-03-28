<?

class Core extends CI_Model {
	public function get_Model()
	{
		$query = $this->db->get('model');
		return $query->result_array();
	}
	public function get_Info()
	{
		$query = $this->db->get('info');
		return $query->result_array();
	}

}