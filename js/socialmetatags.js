(function($) {

    $.entwine('ss', function ($) {

        /**
         * Show Facebook preview
         */
        $('#SocialPreviewButtonFacebook').entwine({
            onclick: function() {
                $('.preview-facebook').togglePreview();
            }
        });

        /**
         * Show Twitter preview
         */
        $('#SocialPreviewButtonTwitter').entwine({
            onclick: function() {
                $('.preview-twitter').togglePreview();
            }
        });

        /**
         * Show LinkedIn preview
         */
        $('#SocialPreviewButtonLinkedIn').entwine({
            onclick: function() {
                $('.preview-linkedin').togglePreview();
            }
        });

        /**
         * Show LinkedIn preview
         */
        $('#SocialPreviewButtonGooglePlus').entwine({
            onclick: function() {
                $('.preview-google').togglePreview();
            }
        });

        /**
         * Hide preview
         */
        $('#CloseFacebookPreview').entwine({
            onclick: function() {
                $('#SocialPreviewModal').togglePreview();
            }
        });

        /**
         * Default
         */

        $('#SocialPreviewModal').entwine({

            showPreview: function() {
                this.getDataFromFormFields();
                this.fadeIn();
            },

            hidePreview: function() {
                this.fadeOut();
            },

            getDataFromFormFields: function() {
                var title = $('#Form_EditForm_OGTitle').val();
                var description = $('#Form_EditForm_OGDescription').val();
                var url = $('#Form_EditForm_OGUrl').val();
                var image = $('#Form_EditForm_OGImageLink').val();

                $('.preview-title').html(title);
                $('.preview-description').html(description);
                $('.preview-url').html(url);
                $('.preview-image').css("background-image", "url(" + image +")");
            },

            togglePreview: function() {
                if(this.is(':visible')) {
                    this.hidePreview();
                } else {
                    this.showPreview();
                }
            },

            onclick: function(e) {
                var container = $(".preview-content");

                if (!container.is(e.target)
                    && container.has(e.target).length === 0)
                {
                    this.togglePreview();
                }
            }

        });

    });


})(jQuery);
