<?php
class ArticlesAdmin extends ModelAdmin {
  private static $managed_models = array('Article'); // Can manage multiple models
  private static $url_segment = 'articles'; // Linked as /admin/products/
  private static $menu_title = 'Articles';
}

?>