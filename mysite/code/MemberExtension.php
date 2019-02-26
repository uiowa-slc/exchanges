<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\LiteralField;
use SilverStripe\Control\Email\Email;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\ORM\DataExtension;

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
    public function updateCMSFieldsAfterSaml(FieldList $fields)
    {
        $fields->removeByName('BlogProfileSummary');
        $fields->removeByName('MemberAddInfo');

        $memberLabel = '<p class="message good"><em>In order to add UI community members (those with HawkIDs), please enter their <strong>firstName-lastName@uiowa.edu</strong> email address below. For other authors or non-UI contributors, add their first and last names and optionally email address (their email address is NOT visible on the website and can be left blank). Leave any non-UI contributors\' password blank.</em></p>';

        $fields->addFieldToTab('Root', LiteralField::create('MemberAddLabel', $memberLabel), Email::class );
        $fields->addFieldToTab('Root.Main', TextField::create('FirstName'), Email::class);
        $fields->addFieldToTab('Root.Main', TextField::create('Surname', 'Last Name'), Email::class);
        $fields->addFieldToTab('Root.Main', HTMLEditorField::create('BlogProfileSummaryHTML', 'Blog Profile ')->setRows(5), 'BlogProfileImage');

        return $fields;
    }

    public function updateValidator($validator) {
        $validator->removeRequiredField(Email::class);
        return $validator;
    }
}
