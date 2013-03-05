<?php
class IssuesAdmin extends ModelAdmin {
  public static $managed_models = array('Issue'); // Can manage multiple models
  static $url_segment = 'issues'; // Linked as /admin/products/
  static $menu_title = 'Issues';
}

?>