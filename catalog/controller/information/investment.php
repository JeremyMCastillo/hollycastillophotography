<?php
class ControllerInformationInvestment extends Controller {
    public function index() {
        $this->load->language('information/information');

        $this->load->model('catalog/information');

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );

        $this->document->setTitle("Investment");
        
        $data['contact_link'] = $this->url->link('information/contact');

        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');
		
	$this->load->model('catalog/product');
	$filter = array();
	$filter['filter_category_id'] = $this->config->get('config_rates_category');
	$data['rates'] = $this->model_catalog_product->getProducts($filter, false);

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/investment.tpl')) {
            $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/information/investment.tpl', $data));
        } else {
            $this->response->setOutput($this->load->view('default/template/information/investment.tpl', $data));
        }

    }
}