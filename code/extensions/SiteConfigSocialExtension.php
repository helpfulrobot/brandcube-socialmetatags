<?php

/**
 * Class SiteConfigSocialExtension
 */
class SiteConfigSocialExtension extends DataExtension
{
    /**
     * @var array
     */
    private static $db = [
        'TwitterUsername' => 'Varchar(255)'
    ];

    /**
     * @var array
     */
    private static $defaults = [
        'TwitterUsername' => '@'
    ];

    /**
     * @param FieldList $fields
     */
    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldToTab(
            "Root.Main",
            TextField::create('TwitterUsername', _t('SiteConfigSocialExtension.TITLE', 'Twitter username'))
                ->setAttribute('placeholder', _t('SiteConfigSocialExtension.PLACEHOLDER', 'Username'))
                ->setDescription(_t('SiteConfigSocialExtension.DESCRIPTION', 'Fill in your Twitter username without @'))
        );
    }
}