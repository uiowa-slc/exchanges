<?php
class ContributorManager extends DataObjectAsPageAdmin {
    
    public static $managed_models = array(
        'Contributor'
    );
    
     static $db = array(
     	  'Test' => 'Date',
     );
 
    static $url_segment = 'contributors';
    static $menu_title = 'Contributors';
}