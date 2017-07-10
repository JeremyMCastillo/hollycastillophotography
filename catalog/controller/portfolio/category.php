<?php
class ControllerPortfolioCategory extends Controller {
    public function index() {
        $this->load->model("catalog/category");
        $this->load->model("catalog/product");

        $this->load->language("portfolio/portfolio");

        $this->document->setTitle($this->language->get("header_title"));

        if (isset($this->request->get['route'])) {
            $this->document->addLink(HTTP_SERVER, 'canonical');
        }

        if(isset($this->request->get['category_id'])){
            $data['categories'] = $this->model_catalog_category->getCategories($this->request->get['category_id']);
            for($i = 0; $i < count($data['categories']); $i++){
                $data['categories'][$i]['href'] = $this->url->link('portfolio/portfolio', 'category_id=' . $data['categories'][$i]['category_id']);
            }
        }


        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/portfolio/category.tpl')) {
            $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/portfolio/category.tpl', $data));
        } else {
            $this->response->setOutput($this->load->view('default/template/portfolio/category.tpl', $data));
        }
    }
}