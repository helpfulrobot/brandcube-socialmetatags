<?php

/**
 * Class SocialPreviewField
 */
class SocialPreviewField extends FormField
{
    /**
     * SocialPreviewField constructor.
     * @param string $title
     */
    public function __construct() {

        $this->setTemplate('SocialPreviewField');
        parent::__construct('SocialPreviewButton', _t('SocialPreviewField.PREVIEW', 'Preview'));
    }
}