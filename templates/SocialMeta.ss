<% if $OGType %>
    <meta property="og:type" content="website">
<% end_if %>
<meta property="og:url" content="$AbsoluteLink">
<% if $SiteConfig.Title %>
    <meta property="og:site_name" content="$SiteConfig.Title">
<% else %>
    <meta property="og:site_name" content="$OGTitle">
<% end_if %>
<% if $OGTitle %>
    <meta property="og:title" content="$OGTitle">
<% end_if %>
<% if $OGDescription %>
    <meta property="og:description" content="$OGDescription">
<% end_if %>
<% if $OGImage %>
    <meta property="og:image" content="{$BaseHref}{$OGImage.Filename}">
<% end_if %>
<% if $SiteConfig.TwitterUsername %>
    <meta name="twitter:card" content="summary">
    <meta name="twitter:site" content="@{$SiteConfig.TwitterUsername}">
    <meta name="twitter:url" content="$AbsoluteLink">
    <% if $OGTitle %>
        <meta name="twitter:title" content="$OGTitle">
    <% end_if %>
    <% if $OGDescription %>
        <meta name="twitter:description" content="$OGDescription">
    <% end_if %>
    <% if $OGImage %>
        <meta name="twitter:image" content="{$BaseHref}{$OGImage.Filename}">
    <% end_if %>
<% end_if %>
<% if $OGTitle %>
    <meta itemprop="name" content="$OGTitle">
<% end_if %>
<% if $OGDescription %>
    <meta itemprop="description" content="$OGDescription">
<% end_if %>
<% if $OGImage %>
    <meta itemprop="image" content="{$BaseHref}{$OGImage.Filename}">
<% end_if %>