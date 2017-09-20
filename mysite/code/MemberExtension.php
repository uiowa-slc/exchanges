<?php

/**
 * This class is responsible for add Blog specific behaviour to Members.
 *
 * @package silverstripe
 * @subpackage blog
 */
class MemberExtension extends DataExtension
{
    /**
     * @var array
     */
    private static $db = array(
        'BlogProfileSummaryHTML' => 'HTMLText',
    );

    /**
     * {@inheritdoc}
     */
    public function updateCMSFields(FieldList $fields)
    {
        $fields->removeByName('BlogProfileSummary');

        $fields->addFieldToTab('Root.Main', HTMLEditorField::create('BlogProfileSummaryHTML', 'Blog Profile ')->setRows(5), 'BlogProfileImage');

        return $fields;
    }
}
