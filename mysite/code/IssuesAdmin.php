<?php
class IssuesAdmin extends ModelAdmin {
  private static $managed_models = array('Issue'); // Can manage multiple models
  private static $url_segment = 'issues'; // Linked as /admin/products/
  private static $menu_title = 'Issues';
}

?>