<button id="SocialPreviewButtonFacebook"><% _t("VIEW", "View") %></button>
<!--
<button id="SocialPreviewButtonTwitter">Twitter</button>
<button id="SocialPreviewButtonLinkedIn">LinkedIn</button>
<button id="SocialPreviewButtonGooglePlus">Google Plus</button>
-->
<!-- Facebook -->
<div id="SocialPreviewModal" class="preview-facebook">
    <div class="preview-content">
        <div class="preview-image"></div>
        <div class="text-content">
            <span class="preview-title"></span>
            <span class="preview-description"></span>
            <span class="preview-url"></span>
            <span id="CloseFacebookPreview"></span>
        </div>
    </div>
</div>
<!-- Twitter -->
<div id="SocialPreviewModal" class="preview-twitter">
    <div class="preview-content">
        <% if not $SiteConfig.TwitterUsername %>
            <div class="warning-message"><% _t("WARNING", "Warning! You need to define your Twitter username first") %></div>
        <% end_if %>
        <div class="preview-image"></div>
        <div class="text-content">
            <span class="preview-title"></span>
            <span class="preview-description"></span>
            <span class="preview-url"></span>
            <span id="CloseFacebookPreview"></span>
        </div>
    </div>
</div>
<!-- LinkedIn -->
<div id="SocialPreviewModal" class="preview-linkedin">
    <div class="preview-content">
        <div class="preview-image"></div>
        <div class="text-content">
            <span class="preview-title"></span>
            <span class="preview-description"></span>
            <span class="preview-url"></span>
            <span id="CloseFacebookPreview"></span>
        </div>
    </div>
</div>
<!-- Google Plus -->
<div id="SocialPreviewModal" class="preview-google">
    <div class="preview-content">
        <div class="preview-image"></div>
        <div class="text-content">
            <span class="preview-title"></span>
            <span class="preview-description"></span>
            <span class="preview-url"></span>
            <span id="CloseFacebookPreview"></span>
        </div>
    </div>
</div>