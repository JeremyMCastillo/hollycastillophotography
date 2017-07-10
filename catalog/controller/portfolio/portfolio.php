<?php
class ControllerPortfolioPortfolio extends Controller {
    public function index() {
        $this->load->model("catalog/category");
        $this->load->model("catalog/product");

        $this->load->language("portfolio/portfolio");

        $this->document->setTitle($this->language->get("header_title"));

        // Unslider
        $this->document->addStyle('catalog/view/javascript/plugins/unslider/css/unslider.css');
        $this->document->addStyle('catalog/view/javascript/plugins/unslider/css/unslider-dots.css');
        $this->document->addScript('catalog/view/javascript/plugins/unslider/js/unslider.js');

		$this->document->addScript('catalog/view/javascript/plugins/freewall/freewall.js');
		$this->document->addScript('catalog/view/javascript/plugins/mousewheel/jquery.mousewheel.min.js');
        $this->document->addScript('catalog/view/javascript/pages/portfolio/portfolio.js');

        if (isset($this->request->get['route'])) {
            $this->document->addLink(HTTP_SERVER, 'canonical');
        }

        $filter = array();
        if(isset($this->request->get['category_id'])){
            $filter['filter_category_id'] = $this->request->get['category_id'];
        }

        $photos = $this->model_catalog_product->getProducts($filter);
		$data['photos'] = array();
		
        $this->load->model('tool/image');
        foreach($photos as $photo){
            if(is_file(DIR_IMAGE . $photo['image'])){
                list($width, $height) = getimagesize(DIR_IMAGE . $photo['image']);
                $newHeight = 225;
                $newWidth = ($width / $height) * $newHeight;
				
				$data['photos'][] = array(
					'id' => $photo['product_id'],
					'image' => $this->model_tool_image->resize($photo['image'], $newWidth, $newHeight),
					'width' => $newWidth,
					'height' => $newHeight
				);
            }
        }

        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/portfolio/portfolio.tpl')) {
            $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/portfolio/portfolio.tpl', $data));
        } else {
            $this->response->setOutput($this->load->view('default/template/portfolio/portfolio.tpl', $data));
        }
    }
	
	public function LoadImage(){
		if($this->request->server["REQUEST_METHOD"] != "POST" || !isset($this->request->post['image_id'])){
			return;
		}
		
		// image_id is product_id in the database.
		$image_id = $this->request->post['image_id'];
		$this->load->model('catalog/product');
		$photo = $this->model_catalog_product->getProduct($image_id);
		
		$json = array();
		$json['image'] = HTTPS_SERVER . 'image/' . $photo['image'];
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}