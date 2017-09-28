<?php
class ControllerCommonHome extends Controller {
	public function index() {
    $this->load->model("catalog/category");
		$this->load->model("catalog/review");

		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

    // Unslider
    $this->document->addStyle('catalog/view/javascript/plugins/unslider/css/unslider.css');
    $this->document->addStyle('catalog/view/javascript/plugins/unslider/css/unslider-dots.css');
    $this->document->addScript('catalog/view/javascript/plugins/unslider/js/unslider.js');


    $this->document->addScript('catalog/view/javascript/pages/common/home.js');

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
		$data['instagram_endpoint'] = $this->url->link('common/home/getInstagramFeed');

		$data['reviews'] = $this->model_catalog_review->getAllReviews();

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/home.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/home.tpl', $data));
		}
	}

	public function getInstagramFeed(){
		ini_set('display_errors', 1);
		ini_set('display_startup_errors', 1);
		error_reporting(E_ALL);
		$url = "https://api.instagram.com/v1/users/2164684389/media/recent?client_id=17edb4b9af32483891b94c292bfda500&access_token=2164684389.1677ed0.985d29600d74495e937b94a85fdcd28b";
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_URL, $url);
		$result = curl_exec($ch);
		curl_close($ch);

		$data = json_decode($result)->data;

		header('Content-Type: application/json');
		$this->response->setOutput(json_encode($data));
	}
}
