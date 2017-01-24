<?php

/**
 * Class SocialPageExtension
 */
class SocialPageExtension extends DataExtension
{
    /**
     * @var array
     */
    private static $db = [
        'Info' => 'Varchar(255)',
        'FacebookInfo' => 'Varchar(255)',
        'OGTitle' => 'Varchar(255)',
        'OGDescription' => 'Varchar(255)'
    ];

    /**
     * @var array
     */
    private static $has_one = [
        'OGImage' => 'Image'
    ];

    /**
     * @param FieldList $fields
     */
    public function updateCMSFields(FieldList $fields)
    {
        $fields->removeByName([
            'OGUrl',
            'OGImageLink'
        ]);

        $fields->addFieldToTab(
            'Root.SocialMedia',
            LiteralField::create('Info', $this->owner->InfoDialog())
        );

        $fields->addFieldToTab(
            "Root.SocialMedia",
            SocialPreviewField::create()
        );

        $fields->addFieldToTab(
            'Root.SocialMedia',
            TextField::create('OGTitle', _t('SocialPageExtension.TITLE', 'Title'))
        );

        $fields->addFieldToTab(
            'Root.SocialMedia',
            TextField::create('OGDescription', _t('SocialPageExtension.DESCRIPTION', 'Description'))
                ->setDescription(_t('SocialPageExtension.DESCDESC', 'Keep the description between 90 characters'))
        );

        $fields->addFieldToTab(
            'Root.SocialMedia',
            UploadField::create('OGImage', _t('SocialPageExtension.IMAGE', 'Image'))
                ->setDescription(_t('SocialPageExtension.IMAGEDESC', 'Upload here the image for the post'))
        );

        $fields->addFieldToTab(
            "Root.SocialMedia",
            HiddenField::create('OGUrl')->setValue($this->owner->AbsoluteLink())
        );

        $fields->addFieldToTab(
            "Root.SocialMedia",
            HiddenField::create('OGImageLink')->setValue($this->owner->OGImage()->Filename)
        );
    }

    /**
     * @return string
     * Info dialog
     */
    public function InfoDialog()
    {
        return '<div class="general-info">'._t("SocialPageExtension.INFO", "Add here content for various social media platforms. If you leave a field blank, the default values are included").'</div>';
    }
}