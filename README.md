Workarea Jquery Magnify
================================================================================

Note: This work is in progress and part of the workarea-zoom plugin.

About
--------------------------------------------------------------------------------
Jquery Magnify let your user enlarge images on mouseover, it's a great candidate for non-touch enabled devices with a small support for touch-enabled devices.

If you are looking for a better experience on touch-enabled devices, you should check out: https://stash.tools.weblinc.com/projects/WP/repos/workarea-jquery-zoom/browse.


Getting Started
--------------------------------------------------------------------------------

This gem contains a rails engine that must be mounted onto a host Rails application.

To access Workarea gems and source code, you must be an employee of WebLinc or a licensed retailer or partner.

Workarea gems are hosted privately at https://gems.weblinc.com/.
You must have individual or team credentials to install gems from this server. Add your gems server credentials to Bundler:

    bundle config gems.weblinc.com my_username:my_password

Or set the appropriate environment variable in a shell startup file:

    export BUNDLE_GEMS__WEBLINC__COM='my_username:my_password'

Then add the gem to your application's Gemfile specifying the source:

    # ...
    gem 'workarea-jquery_magnify', source: 'https://gems.weblinc.com'
    # ...

Or use a source block:

    # ...
    source 'https://gems.weblinc.com' do
      gem 'workarea-jquery_magnify'
    end
    # ...

Update your application's bundle.

    cd path/to/application
    bundle

This Gem will mount the jquery.magnify asset in your application.

Example
--------------------------------------------------------------------------------

```html
    <div class="magnify">
        <div data-magnify-src="http://example.com/big-image.jpg" class="magnify__container">
            <img src="http://example.com/small-image.jpg" class="magnify__image">
        </div>
    </div>
```

```css
.magnify {
    width: 320px;
}

.magnify__container {
    position: relative;
}

.magnify__image{
    display: block;
    width: 100%;
    min-width: 100%;
}
```

```javascript
$(document).ready(function() {
    $('.magnify__container').magnify();
});
```


Options
--------------------------------------------------------------------------------

You have the ability to pass your options like this:

```javascript
$('.magnify').magnify({
    url: null,
    touchSupport: false
});
```

Different options are available:

Name  | Default | Description
------------- | ------------- | -------------
touchSupport  | ```false``` | Enable/Disable finger gestures on touch-enabled devices
url | ```null``` | The url of the big magnify image, if not defined, jquery.magnify will fetch the attribute  ```data-magnify-src```given.

Events
--------------------------------------------------------------------------------

You can destroy the widget for the instance given, it's helpful when you want to go back to a clean state.

```javascript
// Create instance
$('.magnify__container').magnify();

// Remove instance
$('.magnify__container').trigger('magnify.destroy');
```

Workarea Platform Documentation
--------------------------------------------------------------------------------

See [http://developer.weblinc.com](http://developer.weblinc.com) for Workarea platform documentation.

Copyright & Licensing
--------------------------------------------------------------------------------

Copyright WebLinc 2017. All rights reserved.

For licensing, contact sales@workarea.com.
