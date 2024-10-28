{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 {*
*}{*
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
{extends file='page.tpl'}

    {block name='page_content_container'}
      <section id="content" class="page-home">
        {block name='page_content_top'}{/block}

        {block name='page_content'}
          {block name='hook_home'}
          <div class="columns"><div class="column main">

{literal}
          <script>
    var feedId = getUrlParam('ff'),
        product = getUrlParam('fp'),
        currentDate = new Date(),
        session = getCookie('feed_session');

    if (!session) {
        session = '' + Math.floor(currentDate.getTime() / 1000) + Math.floor(Math.random() * 10000001);
    }

    if (session && feedId > 0 && product > 0) {
        setCookie('feed_session', session, {expires: 365, path: '/'});
        setCookie('feed_id', feedId, 365);

        var xhr = new XMLHttpRequest(),
            baseUrl = 'https://www.lladro.com/en_us/',
            url = BASE_URL + '?rnd=' + Math.floor(Math.random() * 10000001) + "&feed=" + feedId + "&session=" + session + "&product=" + product;

        xhr.open('GET', url, true);
        xhr.setRequestHeader('Content-Type', 'application/json');
        xhr.send();
    }

    function getUrlParam(name) {
        let results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);

        if (results === null) {
            return '';
        } else {
            return results[1] || 0;
        }
    }

    function getCookie(cookieName) {
        var name = cookieName + "=",
            decodedCookie = decodeURIComponent(document.cookie),
            cookieArray = decodedCookie.split(';');

        for (var i = 0; i < cookieArray.length; i++) {
            var cookie = cookieArray[i].trim();
            if (cookie.indexOf(name) === 0) {
                return cookie.substring(name.length, cookie.length);
            }
        }

        return null;
    }

    function setCookie(cookieName, cookieValue, expirationDays) {
        var d = new Date();
        d.setTime(d.getTime() + (expirationDays * 24 * 60 * 60 * 1000));
        var expires = "expires=" + d.toUTCString();
        document.cookie = cookieName + "=" + cookieValue + ";" + expires + ";path=/";
    }
</script>
{/literal}

{literal}
<style>.cmsp294-container {
width: 100%
}

@media (min-width: 576px) {
    .container{
        max-width: 540px;
    }
}

@media (min-width: 768px) {
   .container {
        max-width: 760px;
    }
}

@media (min-width: 1200px) {
    .container {
        max-width: 1190px;
    }
}
@media (min-width: 1900px) {
    .container {
        max-width: 1890px;
    }
}
/*! tailwindcss v3.2.4 | MIT License | https://tailwindcss.com*/
*,:after,:before {
    box-sizing: border-box;
    border: 0 solid #e5e7eb
}

:after,:before {
    --tw-content: ""
}

html {
    line-height: 1.5;
    -webkit-text-size-adjust: 100%;
    -moz-tab-size: 4;
    -o-tab-size: 4;
    tab-size: 4;
    font-family: Noto Sans,Segoe UI,Helvetica Neue,Arial,sans-serif;
    font-feature-settings: normal
}

body {
    margin: 0;
    line-height: inherit
}

hr {
    height: 0;
    color: inherit;
    border-top-width: 1px
}

abbr:where([title]) {
    -webkit-text-decoration: underline dotted;
    text-decoration: underline dotted
}

h1,h2,h3,h4,h5,h6 {
    font-size: inherit;
    font-weight: inherit
}

a {
    color: inherit;
    text-decoration: inherit
}

b,strong {
    font-weight: bolder
}

code,kbd,pre,samp {
    font-family: ui-monospace,SFMono-Regular,Menlo,Monaco,Consolas,Liberation Mono,Courier New,monospace;
    font-size: 1em
}

small {
    font-size: 80%
}

sub,sup {
    font-size: 75%;
    line-height: 0;
    position: relative;
    vertical-align: initial
}

sub {
    bottom: -.25em
}

sup {
    top: -.5em
}

table {
    text-indent: 0;
    border-color: inherit;
    border-collapse: collapse
}

button,input,optgroup,select,textarea {
    font-family: inherit;
    font-size: 100%;
    font-weight: inherit;
    line-height: inherit;
    color: inherit;
    margin: 0;
    padding: 0
}

button,select {
    text-transform: none
}

[type=button],[type=reset],[type=submit],button {
    -webkit-appearance: button;
    background-color: initial;
    background-image: none
}

:-moz-focusring {
    outline: auto
}

:-moz-ui-invalid {
    box-shadow: none
}

progress {
    vertical-align: initial
}

::-webkit-inner-spin-button,::-webkit-outer-spin-button {
    height: auto
}

[type=search] {
    -webkit-appearance: textfield;
    outline-offset: -2px
}

::-webkit-search-decoration {
    -webkit-appearance: none
}

::-webkit-file-upload-button {
    -webkit-appearance: button;
    font: inherit
}

summary {
    display: list-item
}

blockquote,dd,dl,figure,h1,h2,h3,h4,h5,h6,hr,p,pre {
    margin: 0
}

fieldset {
    margin: 0
}

fieldset,legend {
    padding: 0
}

menu,ol,ul {
    list-style: none;
    margin: 0;
    padding: 0
}

textarea {
    resize: vertical
}

input::-moz-placeholder,textarea::-moz-placeholder {
    opacity: 1;
    color: #9ca3af
}

input::placeholder,textarea::placeholder {
    opacity: 1;
    color: #9ca3af
}

[role=button],button {
    cursor: pointer
}

:disabled {
    cursor: default
}

audio,canvas,embed,iframe,img,object,svg,video {
    display: block;
    vertical-align: middle
}

img,video {
    max-width: 100%;
    height: auto
}

[hidden] {
    display: none
}

[multiple],[type=date],[type=datetime-local],[type=email],[type=month],[type=number],[type=password],[type=search],[type=tel],[type=text],[type=time],[type=url],[type=week],select,textarea {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    background-color: #fff;
    border-color: #6b7280;
    border-width: 1px;
    border-radius: 0;
    padding: .5rem .75rem;
    font-size: 1rem;
    line-height: 1.5rem;
    --tw-shadow: 0 0 #0000
}

[multiple]:focus,[type=date]:focus,[type=datetime-local]:focus,[type=email]:focus,[type=month]:focus,[type=number]:focus,[type=password]:focus,[type=search]:focus,[type=tel]:focus,[type=text]:focus,[type=time]:focus,[type=url]:focus,[type=week]:focus,select:focus,textarea:focus {
    outline: 2px solid #0000;
    outline-offset: 2px;
    --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/);
    --tw-ring-offset-width: 0px;
    --tw-ring-offset-color: #fff;
    --tw-ring-color: #2563eb;
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color);
    box-shadow: var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow);
    border-color: #2563eb
}

input::-moz-placeholder,textarea::-moz-placeholder {
    color: #6b7280;
    opacity: 1
}

input::placeholder,textarea::placeholder {
    color: #6b7280;
    opacity: 1
}

::-webkit-datetime-edit-fields-wrapper {
    padding: 0
}

::-webkit-date-and-time-value {
    min-height: 1.5em
}

::-webkit-datetime-edit,::-webkit-datetime-edit-day-field,::-webkit-datetime-edit-hour-field,::-webkit-datetime-edit-meridiem-field,::-webkit-datetime-edit-millisecond-field,::-webkit-datetime-edit-minute-field,::-webkit-datetime-edit-month-field,::-webkit-datetime-edit-second-field,::-webkit-datetime-edit-year-field {
    padding-top: 0;
    padding-bottom: 0
}

select {
    background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 20 20'%3E%3Cpath stroke='%236b7280' stroke-linecap='round' stroke-linejoin='round' stroke-width='1.5' d='m6 8 4 4 4-4'/%3E%3C/svg%3E");
    background-position: right .5rem center;
    background-repeat: no-repeat;
    background-size: 1.5em 1.5em;
    padding-right: 2.5rem;
    -webkit-print-color-adjust: exact;
    print-color-adjust: exact
}

[multiple] {
    background-image: none;
    background-position: 0 0;
    background-repeat: unset;
    background-size: initial;
    padding-right: .75rem;
    -webkit-print-color-adjust: unset;
    print-color-adjust: unset
}

[type=checkbox],[type=radio] {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    padding: 0;
    -webkit-print-color-adjust: exact;
    print-color-adjust: exact;
    display: inline-block;
    vertical-align: middle;
    background-origin: border-box;
    -webkit-user-select: none;
    -moz-user-select: none;
    user-select: none;
    flex-shrink: 0;
    height: 1rem;
    width: 1rem;
    color: #2563eb;
    background-color: #fff;
    border-color: #6b7280;
    border-width: 1px;
    --tw-shadow: 0 0 #0000
}

[type=checkbox] {
    border-radius: 0
}

[type=radio] {
    border-radius: 100%
}

[type=checkbox]:focus,[type=radio]:focus {
    outline: 2px solid #0000;
    outline-offset: 2px;
    --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/);
    --tw-ring-offset-width: 2px;
    --tw-ring-offset-color: #fff;
    --tw-ring-color: #2563eb;
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(2px + var(--tw-ring-offset-width)) var(--tw-ring-color);
    box-shadow: var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow)
}

[type=checkbox]:checked,[type=radio]:checked {
    border-color: #0000;
    background-color: currentColor;
    background-size: 100% 100%;
    background-position: 50%;
    background-repeat: no-repeat
}

[type=checkbox]:checked {
    background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg viewBox='0 0 16 16' fill='%23fff' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M12.207 4.793a1 1 0 0 1 0 1.414l-5 5a1 1 0 0 1-1.414 0l-2-2a1 1 0 0 1 1.414-1.414L6.5 9.086l4.293-4.293a1 1 0 0 1 1.414 0z'/%3E%3C/svg%3E")
}

[type=radio]:checked {
    background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg viewBox='0 0 16 16' fill='%23fff' xmlns='http://www.w3.org/2000/svg'%3E%3Ccircle cx='8' cy='8' r='3'/%3E%3C/svg%3E")
}

[type=checkbox]:checked:focus,[type=checkbox]:checked:hover,[type=checkbox]:indeterminate,[type=radio]:checked:focus,[type=radio]:checked:hover {
    border-color: #0000;
    background-color: currentColor
}

[type=checkbox]:indeterminate {
    background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 16 16'%3E%3Cpath stroke='%23fff' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M4 8h8'/%3E%3C/svg%3E");
    background-size: 100% 100%;
    background-position: 50%;
    background-repeat: no-repeat
}

[type=checkbox]:indeterminate:focus,[type=checkbox]:indeterminate:hover {
    border-color: #0000;
    background-color: currentColor
}

[type=file] {
    background: unset;
    border-color: inherit;
    border-width: 0;
    border-radius: 0;
    padding: 0;
    font-size: unset;
    line-height: inherit
}

[type=file]:focus {
    outline: 1px solid ButtonText;
    outline: 1px auto -webkit-focus-ring-color
}

*,::backdrop,:after,:before {
    --tw-border-spacing-x: 0;
    --tw-border-spacing-y: 0;
    --tw-translate-x: 0;
    --tw-translate-y: 0;
    --tw-rotate: 0;
    --tw-skew-x: 0;
    --tw-skew-y: 0;
    --tw-scale-x: 1;
    --tw-scale-y: 1;
    --tw-pan-x: ;
    --tw-pan-y: ;
    --tw-pinch-zoom: ;
    --tw-scroll-snap-strictness: proximity;
    --tw-ordinal: ;
    --tw-slashed-zero: ;
    --tw-numeric-figure: ;
    --tw-numeric-spacing: ;
    --tw-numeric-fraction: ;
    --tw-ring-inset: ;
    --tw-ring-offset-width: 0px;
    --tw-ring-offset-color: #fff;
    --tw-ring-color: #3b82f680;
    --tw-ring-offset-shadow: 0 0 #0000;
    --tw-ring-shadow: 0 0 #0000;
    --tw-shadow: 0 0 #0000;
    --tw-shadow-colored: 0 0 #0000;
    --tw-blur: ;
    --tw-brightness: ;
    --tw-contrast: ;
    --tw-grayscale: ;
    --tw-hue-rotate: ;
    --tw-invert: ;
    --tw-saturate: ;
    --tw-sepia: ;
    --tw-drop-shadow: ;
    --tw-backdrop-blur: ;
    --tw-backdrop-brightness: ;
    --tw-backdrop-contrast: ;
    --tw-backdrop-grayscale: ;
    --tw-backdrop-hue-rotate: ;
    --tw-backdrop-invert: ;
    --tw-backdrop-opacity: ;
    --tw-backdrop-saturate: ;
    --tw-backdrop-sepia:
}

.container {
    width: 100%;
    margin-right: auto;
    margin-left: auto;
    padding-right: 1.5rem;
    padding-left: 1.5rem
}

@media (min-width: 640px) {
    .container {
        max-width:640px
    }
}

@media (min-width: 768px) {
    .container {
        max-width:768px
    }
}

@media (min-width: 1024px) {
    .container {
        max-width:1024px
    }
}

@media (min-width: 1280px) {
    .container {
        max-width:1280px
    }
}

@media (min-width: 1536px) {
    .container {
        max-width:1536px
    }
}

.form-input,.form-multiselect,.form-select,.form-textarea {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    background-color: #fff;
    border-color: #6b7280;
    border-width: 1px;
    border-radius: 0;
    padding: .5rem .75rem;
    font-size: 1rem;
    line-height: 1.5rem;
    --tw-shadow: 0 0 #0000
}

.form-input:focus,.form-multiselect:focus,.form-select:focus,.form-textarea:focus {
    outline: 2px solid #0000;
    outline-offset: 2px;
    --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/);
    --tw-ring-offset-width: 0px;
    --tw-ring-offset-color: #fff;
    --tw-ring-color: #2563eb;
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color);
    box-shadow: var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow);
    border-color: #2563eb
}

.form-input::-moz-placeholder,.form-textarea::-moz-placeholder {
    color: #6b7280;
    opacity: 1
}

.form-input::placeholder,.form-textarea::placeholder {
    color: #6b7280;
    opacity: 1
}

.form-input::-webkit-datetime-edit-fields-wrapper {
    padding: 0
}

.form-input::-webkit-date-and-time-value {
    min-height: 1.5em
}

.form-input::-webkit-datetime-edit,.form-input::-webkit-datetime-edit-day-field,.form-input::-webkit-datetime-edit-hour-field,.form-input::-webkit-datetime-edit-meridiem-field,.form-input::-webkit-datetime-edit-millisecond-field,.form-input::-webkit-datetime-edit-minute-field,.form-input::-webkit-datetime-edit-month-field,.form-input::-webkit-datetime-edit-second-field,.form-input::-webkit-datetime-edit-year-field {
    padding-top: 0;
    padding-bottom: 0
}

.form-select {
    background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 20 20'%3E%3Cpath stroke='%236b7280' stroke-linecap='round' stroke-linejoin='round' stroke-width='1.5' d='m6 8 4 4 4-4'/%3E%3C/svg%3E");
    background-position: right .5rem center;
    background-repeat: no-repeat;
    background-size: 1.5em 1.5em;
    padding-right: 2.5rem
}

.form-checkbox,.form-radio,.form-select {
    -webkit-print-color-adjust: exact;
    print-color-adjust: exact
}

.form-checkbox,.form-radio {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    padding: 0;
    display: inline-block;
    vertical-align: middle;
    background-origin: border-box;
    -webkit-user-select: none;
    -moz-user-select: none;
    user-select: none;
    flex-shrink: 0;
    height: 1rem;
    width: 1rem;
    color: #2563eb;
    background-color: #fff;
    border-color: #6b7280;
    border-width: 1px;
    --tw-shadow: 0 0 #0000
}

.form-checkbox {
    border-radius: 0
}

.form-radio {
    border-radius: 100%
}

.form-checkbox:focus,.form-radio:focus {
    outline: 2px solid #0000;
    outline-offset: 2px;
    --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/);
    --tw-ring-offset-width: 2px;
    --tw-ring-offset-color: #fff;
    --tw-ring-color: #2563eb;
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(2px + var(--tw-ring-offset-width)) var(--tw-ring-color);
    box-shadow: var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow)
}

.form-checkbox:checked,.form-radio:checked {
    border-color: #0000;
    background-color: currentColor;
    background-size: 100% 100%;
    background-position: 50%;
    background-repeat: no-repeat
}

.form-checkbox:checked {
    background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg viewBox='0 0 16 16' fill='%23fff' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M12.207 4.793a1 1 0 0 1 0 1.414l-5 5a1 1 0 0 1-1.414 0l-2-2a1 1 0 0 1 1.414-1.414L6.5 9.086l4.293-4.293a1 1 0 0 1 1.414 0z'/%3E%3C/svg%3E")
}

.form-radio:checked {
    background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg viewBox='0 0 16 16' fill='%23fff' xmlns='http://www.w3.org/2000/svg'%3E%3Ccircle cx='8' cy='8' r='3'/%3E%3C/svg%3E")
}

.form-checkbox:checked:focus,.form-checkbox:checked:hover,.form-checkbox:indeterminate,.form-radio:checked:focus,.form-radio:checked:hover {
    border-color: #0000;
    background-color: currentColor
}

.form-checkbox:indeterminate {
    background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 16 16'%3E%3Cpath stroke='%23fff' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M4 8h8'/%3E%3C/svg%3E");
    background-size: 100% 100%;
    background-position: 50%;
    background-repeat: no-repeat
}

.form-checkbox:indeterminate:focus,.form-checkbox:indeterminate:hover {
    border-color: #0000;
    background-color: currentColor
}

.prose {
    color: var(--tw-prose-body);
    max-width: 65ch
}

.prose :where([class~=lead]):not(:where([class~=not-prose] *)) {
    color: var(--tw-prose-lead);
    font-size: 1.25em;
    line-height: 1.6;
    margin-top: 1.2em;
    margin-bottom: 1.2em
}

.prose :where(a):not(:where([class~=not-prose] *)) {
    color: var(--tw-prose-links);
    text-decoration: underline;
    font-weight: 500
}

.prose :where(strong):not(:where([class~=not-prose] *)) {
    color: var(--tw-prose-bold);
    font-weight: 600
}

.prose :where(a strong):not(:where([class~=not-prose] *)) {
    color: inherit
}

.prose :where(blockquote strong):not(:where([class~=not-prose] *)) {
    color: inherit
}

.prose :where(thead th strong):not(:where([class~=not-prose] *)) {
    color: inherit
}

.prose :where(ol):not(:where([class~=not-prose] *)) {
    list-style-type: decimal;
    margin-top: 1.25em;
    margin-bottom: 1.25em;
    padding-left: 1.625em
}

.prose :where(ol[type=A]):not(:where([class~=not-prose] *)) {
    list-style-type: upper-alpha
}

.prose :where(ol[type=a]):not(:where([class~=not-prose] *)) {
    list-style-type: lower-alpha
}

.prose :where(ol[type=A s]):not(:where([class~=not-prose] *)) {
    list-style-type: upper-alpha
}

.prose :where(ol[type=a s]):not(:where([class~=not-prose] *)) {
    list-style-type: lower-alpha
}

.prose :where(ol[type=I]):not(:where([class~=not-prose] *)) {
    list-style-type: upper-roman
}

.prose :where(ol[type=i]):not(:where([class~=not-prose] *)) {
    list-style-type: lower-roman
}

.prose :where(ol[type=I s]):not(:where([class~=not-prose] *)) {
    list-style-type: upper-roman
}

.prose :where(ol[type=i s]):not(:where([class~=not-prose] *)) {
    list-style-type: lower-roman
}

.prose :where(ol[type="1"]):not(:where([class~=not-prose] *)) {
    list-style-type: decimal
}

.prose :where(ul):not(:where([class~=not-prose] *)) {
    list-style-type: disc;
    margin-top: 1.25em;
    margin-bottom: 1.25em;
    padding-left: 1.625em
}

.prose :where(ol>li):not(:where([class~=not-prose] *))::marker {
    font-weight: 400;
    color: var(--tw-prose-counters)
}

.prose :where(ul>li):not(:where([class~=not-prose] *))::marker {
    color: var(--tw-prose-bullets)
}

.prose :where(hr):not(:where([class~=not-prose] *)) {
    border-color: var(--tw-prose-hr);
    border-top-width: 1px;
    margin-top: 3em;
    margin-bottom: 3em
}

.prose :where(blockquote):not(:where([class~=not-prose] *)) {
    font-weight: 500;
    font-style: italic;
    color: var(--tw-prose-quotes);
    border-left-width: .25rem;
    border-left-color: var(--tw-prose-quote-borders);
    quotes: "\201C""\201D""\2018""\2019";
    margin-top: 1.6em;
    margin-bottom: 1.6em;
    padding-left: 1em
}

.prose :where(blockquote p:first-of-type):not(:where([class~=not-prose] *)):before {
    content: open-quote
}

.prose :where(blockquote p:last-of-type):not(:where([class~=not-prose] *)):after {
    content: close-quote
}

.prose :where(h1):not(:where([class~=not-prose] *)) {
    color: var(--tw-prose-headings);
    font-weight: 800;
    font-size: 2.25em;
    margin-top: 0;
    margin-bottom: .8888889em;
    line-height: 1.1111111
}

.prose :where(h1 strong):not(:where([class~=not-prose] *)) {
    font-weight: 900;
    color: inherit
}

.prose :where(h2):not(:where([class~=not-prose] *)) {
    color: var(--tw-prose-headings);
    font-weight: 700;
    font-size: 1.5em;
    margin-top: 2em;
    margin-bottom: 1em;
    line-height: 1.3333333
}

.prose :where(h2 strong):not(:where([class~=not-prose] *)) {
    font-weight: 800;
    color: inherit
}

.prose :where(h3):not(:where([class~=not-prose] *)) {
    color: var(--tw-prose-headings);
    font-weight: 600;
    font-size: 1.25em;
    margin-top: 1.6em;
    margin-bottom: .6em;
    line-height: 1.6
}

.prose :where(h3 strong):not(:where([class~=not-prose] *)) {
    font-weight: 700;
    color: inherit
}

.prose :where(h4):not(:where([class~=not-prose] *)) {
    color: var(--tw-prose-headings);
    font-weight: 600;
    margin-top: 1.5em;
    margin-bottom: .5em;
    line-height: 1.5
}

.prose :where(h4 strong):not(:where([class~=not-prose] *)) {
    font-weight: 700;
    color: inherit
}

.prose :where(img):not(:where([class~=not-prose] *)) {
    margin-top: 2em;
    margin-bottom: 2em
}

.prose :where(figure>*):not(:where([class~=not-prose] *)) {
    margin-top: 0;
    margin-bottom: 0
}

.prose :where(figcaption):not(:where([class~=not-prose] *)) {
    color: var(--tw-prose-captions);
    font-size: .875em;
    line-height: 1.4285714;
    margin-top: .8571429em
}

.prose :where(code):not(:where([class~=not-prose] *)) {
    color: var(--tw-prose-code);
    font-weight: 600;
    font-size: .875em
}

.prose :where(code):not(:where([class~=not-prose] *)):before {
    content: "`"
}

.prose :where(code):not(:where([class~=not-prose] *)):after {
    content: "`"
}

.prose :where(a code):not(:where([class~=not-prose] *)) {
    color: inherit
}

.prose :where(h1 code):not(:where([class~=not-prose] *)) {
    color: inherit
}

.prose :where(h2 code):not(:where([class~=not-prose] *)) {
    color: inherit;
    font-size: .875em
}

.prose :where(h3 code):not(:where([class~=not-prose] *)) {
    color: inherit;
    font-size: .9em
}

.prose :where(h4 code):not(:where([class~=not-prose] *)) {
    color: inherit
}

.prose :where(blockquote code):not(:where([class~=not-prose] *)) {
    color: inherit
}

.prose :where(thead th code):not(:where([class~=not-prose] *)) {
    color: inherit
}

.prose :where(pre):not(:where([class~=not-prose] *)) {
    color: var(--tw-prose-pre-code);
    background-color: var(--tw-prose-pre-bg);
    overflow-x: auto;
    font-weight: 400;
    font-size: .875em;
    line-height: 1.7142857;
    margin-top: 1.7142857em;
    margin-bottom: 1.7142857em;
    border-radius: .375rem;
    padding: .8571429em 1.1428571em
}

.prose :where(pre code):not(:where([class~=not-prose] *)) {
    background-color: initial;
    border-width: 0;
    border-radius: 0;
    padding: 0;
    font-weight: inherit;
    color: inherit;
    font-size: inherit;
    font-family: inherit;
    line-height: inherit
}

.prose :where(pre code):not(:where([class~=not-prose] *)):before {
    content: none
}

.prose :where(pre code):not(:where([class~=not-prose] *)):after {
    content: none
}

.prose :where(table):not(:where([class~=not-prose] *)) {
    width: 100%;
    table-layout: auto;
    text-align: left;
    margin-top: 2em;
    margin-bottom: 2em;
    font-size: .875em;
    line-height: 1.7142857
}

.prose :where(thead):not(:where([class~=not-prose] *)) {
    border-bottom-width: 1px;
    border-bottom-color: var(--tw-prose-th-borders)
}

.prose :where(thead th):not(:where([class~=not-prose] *)) {
    color: var(--tw-prose-headings);
    font-weight: 600;
    vertical-align: bottom;
    padding-right: .5714286em;
    padding-bottom: .5714286em;
    padding-left: .5714286em
}

.prose :where(tbody tr):not(:where([class~=not-prose] *)) {
    border-bottom-width: 1px;
    border-bottom-color: var(--tw-prose-td-borders)
}

.prose :where(tbody tr:last-child):not(:where([class~=not-prose] *)) {
    border-bottom-width: 0
}

.prose :where(tbody td):not(:where([class~=not-prose] *)) {
    vertical-align: initial
}

.prose :where(tfoot):not(:where([class~=not-prose] *)) {
    border-top-width: 1px;
    border-top-color: var(--tw-prose-th-borders)
}

.prose :where(tfoot td):not(:where([class~=not-prose] *)) {
    vertical-align: top
}

.prose {
    --tw-prose-body: #374151;
    --tw-prose-headings: #111827;
    --tw-prose-lead: #4b5563;
    --tw-prose-links: #111827;
    --tw-prose-bold: #111827;
    --tw-prose-counters: #6b7280;
    --tw-prose-bullets: #d1d5db;
    --tw-prose-hr: #e5e7eb;
    --tw-prose-quotes: #111827;
    --tw-prose-quote-borders: #e5e7eb;
    --tw-prose-captions: #6b7280;
    --tw-prose-code: #111827;
    --tw-prose-pre-code: #e5e7eb;
    --tw-prose-pre-bg: #1f2937;
    --tw-prose-th-borders: #d1d5db;
    --tw-prose-td-borders: #e5e7eb;
    --tw-prose-invert-body: #d1d5db;
    --tw-prose-invert-headings: #fff;
    --tw-prose-invert-lead: #9ca3af;
    --tw-prose-invert-links: #fff;
    --tw-prose-invert-bold: #fff;
    --tw-prose-invert-counters: #9ca3af;
    --tw-prose-invert-bullets: #4b5563;
    --tw-prose-invert-hr: #374151;
    --tw-prose-invert-quotes: #f3f4f6;
    --tw-prose-invert-quote-borders: #374151;
    --tw-prose-invert-captions: #9ca3af;
    --tw-prose-invert-code: #fff;
    --tw-prose-invert-pre-code: #d1d5db;
    --tw-prose-invert-pre-bg: #00000080;
    --tw-prose-invert-th-borders: #4b5563;
    --tw-prose-invert-td-borders: #374151;
    font-size: 1rem;
    line-height: 1.75
}

.prose :where(p):not(:where([class~=not-prose] *)) {
    margin-top: 1.25em;
    margin-bottom: 1.25em
}

.prose :where(video):not(:where([class~=not-prose] *)) {
    margin-top: 2em;
    margin-bottom: 2em
}

.prose :where(figure):not(:where([class~=not-prose] *)) {
    margin-top: 2em;
    margin-bottom: 2em
}

.prose :where(li):not(:where([class~=not-prose] *)) {
    margin-top: .5em;
    margin-bottom: .5em
}

.prose :where(ol>li):not(:where([class~=not-prose] *)) {
    padding-left: .375em
}

.prose :where(ul>li):not(:where([class~=not-prose] *)) {
    padding-left: .375em
}

.prose :where(.prose>ul>li p):not(:where([class~=not-prose] *)) {
    margin-top: .75em;
    margin-bottom: .75em
}

.prose :where(.prose>ul>li>:first-child):not(:where([class~=not-prose] *)) {
    margin-top: 1.25em
}

.prose :where(.prose>ul>li>:last-child):not(:where([class~=not-prose] *)) {
    margin-bottom: 1.25em
}

.prose :where(.prose>ol>li>:first-child):not(:where([class~=not-prose] *)) {
    margin-top: 1.25em
}

.prose :where(.prose>ol>li>:last-child):not(:where([class~=not-prose] *)) {
    margin-bottom: 1.25em
}

.prose :where(ul ul,ul ol,ol ul,ol ol):not(:where([class~=not-prose] *)) {
    margin-top: .75em;
    margin-bottom: .75em
}

.prose :where(hr+*):not(:where([class~=not-prose] *)) {
    margin-top: 0
}

.prose :where(h2+*):not(:where([class~=not-prose] *)) {
    margin-top: 0
}

.prose :where(h3+*):not(:where([class~=not-prose] *)) {
    margin-top: 0
}

.prose :where(h4+*):not(:where([class~=not-prose] *)) {
    margin-top: 0
}

.prose :where(thead th:first-child):not(:where([class~=not-prose] *)) {
    padding-left: 0
}

.prose :where(thead th:last-child):not(:where([class~=not-prose] *)) {
    padding-right: 0
}

.prose :where(tbody td,tfoot td):not(:where([class~=not-prose] *)) {
    padding: .5714286em
}

.prose :where(tbody td:first-child,tfoot td:first-child):not(:where([class~=not-prose] *)) {
    padding-left: 0
}

.prose :where(tbody td:last-child,tfoot td:last-child):not(:where([class~=not-prose] *)) {
    padding-right: 0
}

.prose :where(.prose>:first-child):not(:where([class~=not-prose] *)) {
    margin-top: 0
}

.prose :where(.prose>:last-child):not(:where([class~=not-prose] *)) {
    margin-bottom: 0
}

.prose-sm :where(.prose>ul>li p):not(:where([class~=not-prose] *)) {
    margin-top: .5714286em;
    margin-bottom: .5714286em
}

.prose-sm :where(.prose>ul>li>:first-child):not(:where([class~=not-prose] *)) {
    margin-top: 1.1428571em
}

.prose-sm :where(.prose>ul>li>:last-child):not(:where([class~=not-prose] *)) {
    margin-bottom: 1.1428571em
}

.prose-sm :where(.prose>ol>li>:first-child):not(:where([class~=not-prose] *)) {
    margin-top: 1.1428571em
}

.prose-sm :where(.prose>ol>li>:last-child):not(:where([class~=not-prose] *)) {
    margin-bottom: 1.1428571em
}

.prose-sm :where(.prose>:first-child):not(:where([class~=not-prose] *)) {
    margin-top: 0
}

.prose-sm :where(.prose>:last-child):not(:where([class~=not-prose] *)) {
    margin-bottom: 0
}

.prose-base :where(.prose>ul>li p):not(:where([class~=not-prose] *)) {
    margin-top: .75em;
    margin-bottom: .75em
}

.prose-base :where(.prose>ul>li>:first-child):not(:where([class~=not-prose] *)) {
    margin-top: 1.25em
}

.prose-base :where(.prose>ul>li>:last-child):not(:where([class~=not-prose] *)) {
    margin-bottom: 1.25em
}

.prose-base :where(.prose>ol>li>:first-child):not(:where([class~=not-prose] *)) {
    margin-top: 1.25em
}

.prose-base :where(.prose>ol>li>:last-child):not(:where([class~=not-prose] *)) {
    margin-bottom: 1.25em
}

.prose-base :where(.prose>:first-child):not(:where([class~=not-prose] *)) {
    margin-top: 0
}

.prose-base :where(.prose>:last-child):not(:where([class~=not-prose] *)) {
    margin-bottom: 0
}

.prose-lg :where(.prose>ul>li p):not(:where([class~=not-prose] *)) {
    margin-top: .8888889em;
    margin-bottom: .8888889em
}

.prose-lg :where(.prose>ul>li>:first-child):not(:where([class~=not-prose] *)) {
    margin-top: 1.3333333em
}

.prose-lg :where(.prose>ul>li>:last-child):not(:where([class~=not-prose] *)) {
    margin-bottom: 1.3333333em
}

.prose-lg :where(.prose>ol>li>:first-child):not(:where([class~=not-prose] *)) {
    margin-top: 1.3333333em
}

.prose-lg :where(.prose>ol>li>:last-child):not(:where([class~=not-prose] *)) {
    margin-bottom: 1.3333333em
}

.prose-lg :where(.prose>:first-child):not(:where([class~=not-prose] *)) {
    margin-top: 0
}

.prose-lg :where(.prose>:last-child):not(:where([class~=not-prose] *)) {
    margin-bottom: 0
}

.prose-xl :where(.prose>ul>li p):not(:where([class~=not-prose] *)) {
    margin-top: .8em;
    margin-bottom: .8em
}

.prose-xl :where(.prose>ul>li>:first-child):not(:where([class~=not-prose] *)) {
    margin-top: 1.2em
}

.prose-xl :where(.prose>ul>li>:last-child):not(:where([class~=not-prose] *)) {
    margin-bottom: 1.2em
}

.prose-xl :where(.prose>ol>li>:first-child):not(:where([class~=not-prose] *)) {
    margin-top: 1.2em
}

.prose-xl :where(.prose>ol>li>:last-child):not(:where([class~=not-prose] *)) {
    margin-bottom: 1.2em
}

.prose-xl :where(.prose>:first-child):not(:where([class~=not-prose] *)) {
    margin-top: 0
}

.prose-xl :where(.prose>:last-child):not(:where([class~=not-prose] *)) {
    margin-bottom: 0
}

.prose-2xl :where(.prose>ul>li p):not(:where([class~=not-prose] *)) {
    margin-top: .8333333em;
    margin-bottom: .8333333em
}

.prose-2xl :where(.prose>ul>li>:first-child):not(:where([class~=not-prose] *)) {
    margin-top: 1.3333333em
}

.prose-2xl :where(.prose>ul>li>:last-child):not(:where([class~=not-prose] *)) {
    margin-bottom: 1.3333333em
}

.prose-2xl :where(.prose>ol>li>:first-child):not(:where([class~=not-prose] *)) {
    margin-top: 1.3333333em
}

.prose-2xl :where(.prose>ol>li>:last-child):not(:where([class~=not-prose] *)) {
    margin-bottom: 1.3333333em
}

.prose-2xl :where(.prose>:first-child):not(:where([class~=not-prose] *)) {
    margin-top: 0
}

.prose-2xl :where(.prose>:last-child):not(:where([class~=not-prose] *)) {
    margin-bottom: 0
}

.btn {
    display: flex;
    align-items: center;
    --tw-bg-opacity: 1;
    background-color: rgb(107 114 128/var(--tw-bg-opacity));
    padding: .5rem 1rem;
    font-size: 1rem;
    line-height: 1.5rem;
    font-weight: 500;
    --tw-text-opacity: 1;
    color: rgb(255 255 255/var(--tw-text-opacity))
}

@media (min-width: 768px) {
    .btn {
        padding-left:1.5rem;
        padding-right: 1.5rem;
        font-size: 1.125rem;
        line-height: 1.75rem
    }
}

@media (min-width: 1280px) {
    .btn {
        font-size:1rem;
        line-height: 1.5rem
    }
}

.btn svg {
    display: inline-flex
}

.btn span {
    vertical-align: middle
}

.btn:hover {
    --tw-bg-opacity: 1;
    background-color: rgb(75 85 99/var(--tw-bg-opacity))
}

.btn:focus {
    border-color: #0000;
    outline: 2px solid #0000;
    outline-offset: 2px;
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(4px + var(--tw-ring-offset-width)) var(--tw-ring-color);
    box-shadow: var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow,0 0 #0000);
    --tw-ring-color: rgb(52 181 208/var(--tw-ring-opacity));
    --tw-ring-opacity: 0.5
}

.btn-primary {
    --tw-bg-opacity: 1;
    background-color: rgb(0 0 0/var(--tw-bg-opacity));
    --tw-text-opacity: 1;
    color: rgb(255 255 255/var(--tw-text-opacity))
}

.btn-primary:hover {
    --tw-bg-opacity: 1;
    background-color: rgb(255 255 255/var(--tw-bg-opacity));
    --tw-text-opacity: 1;
    color: rgb(0 0 0/var(--tw-text-opacity));
    outline-style: solid;
    outline-width: 1px;
    outline-color: #000
}

.btn-primary:disabled {
    --tw-bg-opacity: 1;
    background-color: rgb(168 162 158/var(--tw-bg-opacity));
    --tw-text-opacity: 1;
    color: rgb(255 255 255/var(--tw-text-opacity));
    outline: 2px solid #0000;
    outline-offset: 2px
}

.btn-secondary {
    border-width: 1px;
    --tw-border-opacity: 1;
    border-color: rgb(0 0 0/var(--tw-border-opacity));
    --tw-bg-opacity: 1;
    background-color: rgb(255 255 255/var(--tw-bg-opacity));
    --tw-text-opacity: 1;
    color: rgb(0 0 0/var(--tw-text-opacity))
}

.btn-secondary:hover {
    --tw-bg-opacity: 1;
    background-color: rgb(0 0 0/var(--tw-bg-opacity));
    --tw-text-opacity: 1;
    color: rgb(255 255 255/var(--tw-text-opacity))
}

.btn-secondary:focus {
    border-width: 2px;
    border-color: #0000
}

.actions-toolbar .primary button {
    display: flex;
    align-items: center;
    background-color: rgb(107 114 128/var(--tw-bg-opacity));
    padding: .5rem 1rem;
    font-size: 1rem;
    line-height: 1.5rem;
    font-weight: 500
}

@media (min-width: 768px) {
    .actions-toolbar .primary button {
        padding-left:1.5rem;
        padding-right: 1.5rem;
        font-size: 1.125rem;
        line-height: 1.75rem
    }
}

@media (min-width: 1280px) {
    .actions-toolbar .primary button {
        font-size:1rem;
        line-height: 1.5rem
    }
}

.actions-toolbar .primary button svg {
    display: inline-flex
}

.actions-toolbar .primary button span {
    vertical-align: middle
}

.actions-toolbar .primary button:hover {
    background-color: rgb(75 85 99/var(--tw-bg-opacity))
}

.actions-toolbar .primary button:focus {
    border-color: #0000;
    outline: 2px solid #0000;
    outline-offset: 2px;
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(4px + var(--tw-ring-offset-width)) var(--tw-ring-color);
    box-shadow: var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow,0 0 #0000);
    --tw-ring-color: rgb(52 181 208/var(--tw-ring-opacity));
    --tw-ring-opacity: 0.5
}

.actions-toolbar .primary button {
    --tw-bg-opacity: 1;
    background-color: rgb(0 0 0/var(--tw-bg-opacity));
    --tw-text-opacity: 1;
    color: rgb(255 255 255/var(--tw-text-opacity))
}

.actions-toolbar .primary button:hover {
    --tw-bg-opacity: 1;
    background-color: rgb(255 255 255/var(--tw-bg-opacity));
    --tw-text-opacity: 1;
    color: rgb(0 0 0/var(--tw-text-opacity));
    outline-style: solid;
    outline-width: 1px;
    outline-color: #000
}

.actions-toolbar .primary button:disabled {
    --tw-bg-opacity: 1;
    background-color: rgb(168 162 158/var(--tw-bg-opacity));
    --tw-text-opacity: 1;
    color: rgb(255 255 255/var(--tw-text-opacity));
    outline: 2px solid #0000;
    outline-offset: 2px
}

.hyva_checkout-index-index .actions-toolbar .primary button[disabled],.hyva_checkout-index-index .btn[disabled] {
    cursor: not-allowed;
    opacity: .25
}

.payment-method-note {
    margin-bottom: 1rem;
    display: inline-block;
    width: 100%;
    border-radius: .375rem;
    --tw-bg-opacity: 1;
    background-color: rgb(229 231 235/var(--tw-bg-opacity));
    padding: .5rem 1rem;
    font-weight: 400
}

@media (min-width: 768px) {
    .payment-method-note {
        width:91.666667%
    }
}

.pp-card-cvv input {
    box-sizing: initial;
    width: 10ch
}

.pp-card-number input {
    box-sizing: initial;
    width: 100%
}

@media (min-width: 640px) {
    .pp-card-number input {
        width:16ch
    }
}

.pp-number-input::-webkit-inner-spin-button,.pp-number-input::-webkit-outer-spin-button {
    -webkit-appearance: none;
    margin: 0
}

@media (min-width: 768px) {
    .catalog-category-view .page-main {
        margin-top:0
    }
}

.catalog-category-view .title-container {
    margin-top: 0;
    margin-bottom: 0;
    padding-top: 1.5rem
}

.catalog-category-view .category-view.container {
    margin-left: auto;
    margin-right: auto;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 1rem 0
}

.catalog-category-view .category-view.container,.catalog-category-view .title-container {
    max-width: 100%;
    --tw-bg-opacity: 1;
    background-color: rgb(240 239 235/var(--tw-bg-opacity))
}

.catalog-category-view .card {
    padding: 0
}

@media (min-width: 768px) {
    .catalog-category-view .card {
        padding:1rem
    }
}

.category-description {
    max-width: 80ch
}

.category-long-description {
    margin-left: auto;
    margin-right: auto;
    max-width: 80ch
}

.container-filter.mobile .filter-content,.container-filter.mobile .sorter-mobile-content {
    position: fixed;
    left: 0;
    z-index: 10;
    height: 640px;
    width: 100%;
    overflow-y: auto;
    --tw-bg-opacity: 1;
    background-color: rgb(255 255 255/var(--tw-bg-opacity));
    padding: 1.5rem
}

.container-filter.mobile .filter-content {
    bottom: -100vh
}

.container-filter.mobile_open:before,.container-filter.openSort:before {
    --tw-content: "";
    content: var(--tw-content);
    position: fixed;
    left: 0;
    top: 0;
    z-index: 30;
    height: 100vh;
    width: 100%;
    --tw-bg-opacity: 1;
    background-color: rgb(0 0 0/var(--tw-bg-opacity));
    opacity: .5
}

.container-filter.mobile_open .filter-content,.container-filter.mobile_open .sorter-mobile-content,.container-filter.openSort .filter-content,.container-filter.openSort .sorter-mobile-content {
    bottom: 0;
    z-index: 40
}

.container-filter .view-mode.group_active .group svg,.container-filter .view-mode.single_active .single svg {
    fill: #34b5d0;
    stroke: currentColor
}

.toolbar-products .modes-mode {
    height: 1.5rem;
    width: 1.5rem
}

.toolbar-products .modes-mode span {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip: rect(0,0,0,0);
    white-space: nowrap;
    border-width: 0
}

.toolbar-products .modes-mode.mode-grid {
    background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2V6zM14 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V6zM4 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2v-2zM14 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z" /></svg>')
}

.toolbar-products .modes-mode.mode-list {
    background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"> <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 10h16M4 14h16M4 18h16" /></svg>')
}

#category-long-description>div,#category-short-description>div {
    display: inline
}

.price-including-tax+.price-excluding-tax {
    font-size: .875rem;
    letter-spacing: .025em
}

.price-including-tax+.price-excluding-tax:before {
    content: attr(data-label) ": "
}

.price-excluding-tax,.price-including-tax {
    white-space: nowrap
}

.price-excluding-tax .price,.price-including-tax .price {
    line-height: 1.625
}

.price-excluding-tax {
    display: block
}

[data-content-type$=block] .price-excluding-tax p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

.price-container.price-tier_price {
    display: flex;
    gap: .25rem
}

.price-container.price-tier_price>.price-including-tax+.price-excluding-tax:before {
    content: "(" attr(data-label) ": "
}

.price-container.price-tier_price>.price-including-tax+.price-excluding-tax:after {
    content: ")"
}

.title-container {
    max-width: 100%;
    --tw-bg-opacity: 1;
    background-color: rgb(240 239 235/var(--tw-bg-opacity))
}

#customer-login-container {
    position: relative;
    display: flex;
    height: 100%;
    min-height: calc(100vh - 1rem);
    flex-direction: column;
    align-items: center
}

@media (min-width: 768px) {
    #customer-login-container {
        justify-content:center;
        flex-direction: row
    }

    .customer-account-create,.customer-account-createpassword,.customer-account-forgotpassword,.customer-account-login {
        --tw-bg-opacity: 1;
        background-color: rgb(245 245 244/var(--tw-bg-opacity))
    }
}

.password-none {
    width: 0;
    border-bottom-width: 2px;
    border-color: rgb(252 165 165/var(--tw-border-opacity))
}

.password-none,.password-weak {
    position: absolute;
    bottom: 0;
    left: 0;
    --tw-border-opacity: 1;
    transition-property: all;
    transition-timing-function: cubic-bezier(.4,0,.2,1);
    transition-duration: .7s
}

.password-weak {
    width: 25%;
    border-bottom-width: 2px;
    border-color: rgb(185 28 28/var(--tw-border-opacity))
}

.password-medium {
    width: 50%;
    border-bottom-width: 2px;
    border-color: rgb(245 158 11/var(--tw-border-opacity))
}

.password-medium,.password-strong {
    position: absolute;
    bottom: 0;
    left: 0;
    --tw-border-opacity: 1;
    transition-property: all;
    transition-timing-function: cubic-bezier(.4,0,.2,1);
    transition-duration: .7s
}

.password-strong {
    width: 75%;
    border-bottom-width: 2px;
    border-color: rgb(132 204 22/var(--tw-border-opacity))
}

.password-very-strong {
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    border-bottom-width: 2px;
    --tw-border-opacity: 1;
    border-color: rgb(22 163 74/var(--tw-border-opacity));
    transition-property: all;
    transition-timing-function: cubic-bezier(.4,0,.2,1);
    transition-duration: .7s
}

.actions-toolbar {
    flex-direction: row;
    justify-content: flex-start;
    border-style: none
}

.account .page-main {
    padding-top: 1.5rem;
    padding-bottom: 1.5rem
}

.account .page-main,.account .page-main .title-container {
    --tw-bg-opacity: 1;
    background-color: rgb(250 250 249/var(--tw-bg-opacity))
}

.account .page-main .title-container {
    margin-bottom: 1rem
}

.account .account-nav {
    width: 100%
}

.account .account-nav.open .account-nav-content {
    position: fixed;
    left: 0;
    bottom: 0;
    z-index: 50;
    height: auto;
    width: 100%;
    overflow-y: auto;
    --tw-bg-opacity: 1;
    background-color: rgb(255 255 255/var(--tw-bg-opacity));
    padding: 1.5rem
}

.account .account-nav-title {
    display: flex
}

@media (min-width: 768px) {
    .account .account-nav-title {
        display:none
    }
}

.account .account-nav-content .close {
    display: flex
}

@media (min-width: 768px) {
    .account .account-nav-content .close {
        display:none
    }
}

.account .account-nav-content .items .item {
    border-bottom-width: 1px;
    --tw-border-opacity: 1;
    border-color: rgb(250 250 249/var(--tw-border-opacity));
    padding-top: .5rem;
    padding-bottom: .5rem
}

.account .account-nav-content .items .item:last-child {
    border-bottom-width: 0
}

@media (min-width: 768px) {
    .account .account-nav-content .items .item {
        padding-left:1.5rem;
        padding-right: 1.5rem
    }
}

.account .account-nav-content .items .item:hover a,.account .account-nav-content .items .item:hover strong {
    text-decoration-line: underline
}

.account .account-nav-content .items .item.current strong {
    font-weight: 600;
    text-decoration-line: none
}

.account .form-address-edit [type=text] {
    width: 100%
}

.form-email,.form-input,.form-multiselect,.form-select {
    height: 2.75rem;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border-width: 0 0 2px;
    --tw-border-opacity: 1;
    border-color: rgb(168 162 158/var(--tw-border-opacity));
    padding: .75rem 2.5rem 0 1rem;
    font-size: .875rem;
    letter-spacing: .025em;
    --tw-text-opacity: 1;
    color: rgb(28 25 23/var(--tw-text-opacity))
}

@media (min-width: 768px) {
    .form-email,.form-input,.form-multiselect,.form-select {
        height:3rem;
        padding-top: 1rem;
        font-size: 1rem;
        line-height: 1.5rem
    }
}

.form-email:hover,.form-input:hover,.form-multiselect:hover,.form-select:hover {
    --tw-border-opacity: 1;
    border-color: rgb(0 0 0/var(--tw-border-opacity))
}

.form-email:disabled,.form-input:disabled,.form-multiselect:disabled,.form-select:disabled {
    --tw-border-opacity: 1;
    border-color: rgb(245 245 244/var(--tw-border-opacity));
    --tw-bg-opacity: 1;
    background-color: rgb(245 245 244/var(--tw-bg-opacity))
}

.form-email:focus,.form-input:focus,.form-multiselect:focus,.form-select:focus {
    --tw-border-opacity: 1;
    border-color: rgb(52 181 208/var(--tw-border-opacity));
    outline: 2px solid #0000;
    outline-offset: 2px;
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(var(--tw-ring-offset-width)) var(--tw-ring-color);
    box-shadow: var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow,0 0 #0000)
}

.form-textarea {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border-width: 1px;
    --tw-border-opacity: 1;
    border-color: rgb(168 162 158/var(--tw-border-opacity));
    padding-left: 1rem;
    padding-right: 1rem;
    padding-top: .5rem;
    font-size: .875rem;
    letter-spacing: .025em;
    --tw-text-opacity: 1;
    color: rgb(28 25 23/var(--tw-text-opacity))
}

@media (min-width: 768px) {
    .form-textarea {
        font-size:1rem;
        line-height: 1.5rem
    }
}

.form-textarea:hover {
    --tw-border-opacity: 1;
    border-color: rgb(0 0 0/var(--tw-border-opacity))
}

.form-textarea:disabled {
    --tw-border-opacity: 1;
    border-color: rgb(245 245 244/var(--tw-border-opacity));
    --tw-bg-opacity: 1;
    background-color: rgb(245 245 244/var(--tw-bg-opacity))
}

.form-textarea:focus {
    --tw-border-opacity: 1;
    border-color: rgb(52 181 208/var(--tw-border-opacity));
    outline: 2px solid #0000;
    outline-offset: 2px;
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(var(--tw-ring-offset-width)) var(--tw-ring-color);
    box-shadow: var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow,0 0 #0000)
}

.form-select-border {
    display: block;
    display: inline-flex;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border-width: 0 0 2px;
    --tw-bg-opacity: 1;
    background-color: rgb(255 255 255/var(--tw-bg-opacity));
    padding: .625rem 0;
    --tw-text-opacity: 1;
    color: rgb(28 25 23/var(--tw-text-opacity))
}

[data-content-type$=block] .form-select-border p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

.form-select-border:hover {
    --tw-border-opacity: 1;
    border-color: rgb(0 0 0/var(--tw-border-opacity))
}

.form-select-border:disabled {
    --tw-border-opacity: 1;
    border-color: rgb(245 245 244/var(--tw-border-opacity));
    --tw-bg-opacity: 1;
    background-color: rgb(245 245 244/var(--tw-bg-opacity))
}

.form-select-border:focus {
    --tw-border-opacity: 1;
    border-color: rgb(52 181 208/var(--tw-border-opacity));
    outline: 2px solid #0000;
    outline-offset: 2px;
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(var(--tw-ring-offset-width)) var(--tw-ring-color);
    box-shadow: var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow,0 0 #0000)
}

[multiple],[type=date],[type=datetime-local],[type=email],[type=month],[type=number],[type=password],[type=search],[type=tel],[type=text],[type=time],[type=url],[type=week],select {
    height: 2.75rem;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border-width: 0 0 2px;
    --tw-border-opacity: 1;
    border-color: rgb(168 162 158/var(--tw-border-opacity));
    padding: .75rem 2.5rem 0 1rem;
    font-size: .875rem;
    letter-spacing: .025em;
    --tw-text-opacity: 1;
    color: rgb(28 25 23/var(--tw-text-opacity))
}

@media (min-width: 768px) {
    [multiple],[type=date],[type=datetime-local],[type=email],[type=month],[type=number],[type=password],[type=search],[type=tel],[type=text],[type=time],[type=url],[type=week],select {
        height:3rem;
        padding-top: 1rem;
        font-size: 1rem;
        line-height: 1.5rem
    }
}

[multiple]:hover,[type=date]:hover,[type=datetime-local]:hover,[type=email]:hover,[type=month]:hover,[type=number]:hover,[type=password]:hover,[type=search]:hover,[type=tel]:hover,[type=text]:hover,[type=time]:hover,[type=url]:hover,[type=week]:hover,select:hover {
    --tw-border-opacity: 1;
    border-color: rgb(0 0 0/var(--tw-border-opacity))
}

[multiple]:disabled,[type=date]:disabled,[type=datetime-local]:disabled,[type=email]:disabled,[type=month]:disabled,[type=number]:disabled,[type=password]:disabled,[type=search]:disabled,[type=tel]:disabled,[type=text]:disabled,[type=time]:disabled,[type=url]:disabled,[type=week]:disabled,select:disabled {
    --tw-border-opacity: 1;
    border-color: rgb(245 245 244/var(--tw-border-opacity));
    --tw-bg-opacity: 1;
    background-color: rgb(245 245 244/var(--tw-bg-opacity))
}

[multiple]:focus,[type=date]:focus,[type=datetime-local]:focus,[type=email]:focus,[type=month]:focus,[type=number]:focus,[type=password]:focus,[type=search]:focus,[type=tel]:focus,[type=text]:focus,[type=time]:focus,[type=url]:focus,[type=week]:focus,select:focus {
    --tw-border-opacity: 1;
    border-color: rgb(52 181 208/var(--tw-border-opacity));
    outline: 2px solid #0000;
    outline-offset: 2px;
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(var(--tw-ring-offset-width)) var(--tw-ring-color);
    box-shadow: var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow,0 0 #0000)
}

textarea {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border-width: 1px;
    --tw-border-opacity: 1;
    border-color: rgb(168 162 158/var(--tw-border-opacity));
    padding-left: 1rem;
    padding-right: 1rem;
    padding-top: .5rem;
    font-size: .875rem;
    letter-spacing: .025em;
    --tw-text-opacity: 1;
    color: rgb(28 25 23/var(--tw-text-opacity))
}

@media (min-width: 768px) {
    textarea {
        font-size:1rem;
        line-height: 1.5rem
    }
}

textarea:hover {
    --tw-border-opacity: 1;
    border-color: rgb(0 0 0/var(--tw-border-opacity))
}

textarea:disabled {
    --tw-border-opacity: 1;
    border-color: rgb(245 245 244/var(--tw-border-opacity));
    --tw-bg-opacity: 1;
    background-color: rgb(245 245 244/var(--tw-bg-opacity))
}

textarea:focus {
    --tw-border-opacity: 1;
    border-color: rgb(52 181 208/var(--tw-border-opacity));
    outline: 2px solid #0000;
    outline-offset: 2px;
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(var(--tw-ring-offset-width)) var(--tw-ring-color);
    box-shadow: var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow,0 0 #0000)
}

[type=checkbox],[type=radio] {
    color: #34b5d0
}

[type=checkbox]:focus,[type=radio]:focus {
    --tw-border-opacity: 1;
    border-color: rgb(52 181 208/var(--tw-border-opacity));
    --tw-ring-opacity: 1;
    --tw-ring-color: rgb(52 181 208/var(--tw-ring-opacity))
}

[type=checkbox]:active {
    position: relative
}

[type=checkbox]:active:before {
    position: absolute;
    top: -4px;
    left: -4px;
    height: 22px;
    width: 22px;
    border: 3px solid #f0efeb;
    content: ""
}

.dynamic-label {
    position: absolute;
    top: .5rem;
    left: 1rem;
    z-index: 10;
    transform-origin: 0;
    --tw-translate-y: -0.5rem;
    --tw-scale-x: .75;
    --tw-scale-y: .75;
    transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y));
    cursor: text;
    font-size: .875rem;
    letter-spacing: .025em;
    --tw-text-opacity: 1;
    color: rgb(120 113 108/var(--tw-text-opacity));
    transition-duration: .3s
}

.peer:-moz-placeholder-shown~.dynamic-label {
    --tw-translate-y: 0.25rem;
    --tw-scale-x: 1;
    --tw-scale-y: 1;
    transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y));
    --tw-text-opacity: 1;
    color: rgb(0 0 0/var(--tw-text-opacity))
}

.peer:placeholder-shown~.dynamic-label {
    --tw-translate-y: 0.25rem;
    --tw-scale-x: 1;
    --tw-scale-y: 1;
    --tw-text-opacity: 1;
    color: rgb(0 0 0/var(--tw-text-opacity))
}

.peer:focus~.dynamic-label,.peer:placeholder-shown~.dynamic-label {
    transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}

.peer:focus~.dynamic-label {
    left: 1rem;
    --tw-translate-y: -0.5rem;
    --tw-scale-x: .75;
    --tw-scale-y: .75;
    --tw-text-opacity: 1;
    color: rgb(120 113 108/var(--tw-text-opacity))
}

.peer.empty~.dynamic-label {
    --tw-translate-y: 0.25rem;
    --tw-scale-x: 1;
    --tw-scale-y: 1;
    transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y));
    --tw-text-opacity: 1;
    color: rgb(0 0 0/var(--tw-text-opacity))
}

@media (min-width: 768px) {
    .dynamic-label {
        top:1rem
    }

    .dynamic-label,.peer:focus~.dynamic-label {
        --tw-translate-y: -1rem;
        transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
    }
}

.page.messages {
    position: sticky;
    z-index: 20;
    top: 0
}

.page.messages .messages section#messages {
    width: 100%;
    padding-right: 1.5rem;
    padding-left: 1.5rem
}

@media (min-width: 640px) {
    .page.messages .messages section#messages {
        max-width:640px
    }
}

@media (min-width: 768px) {
    .page.messages .messages section#messages {
        max-width:768px
    }
}

@media (min-width: 1024px) {
    .page.messages .messages section#messages {
        max-width:1024px
    }
}

@media (min-width: 1280px) {
    .page.messages .messages section#messages {
        max-width:1280px
    }
}

@media (min-width: 1536px) {
    .page.messages .messages section#messages {
        max-width:1536px
    }
}

.page.messages .messages section#messages {
    margin-left: auto;
    margin-right: auto;
    padding-top: .75rem;
    padding-bottom: .75rem
}

.catalog-category-view .category-view.page.messages .messages section#messages {
    margin-left: auto;
    margin-right: auto;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 1rem 0;
    max-width: 100%;
    --tw-bg-opacity: 1;
    background-color: rgb(240 239 235/var(--tw-bg-opacity))
}

.message {
    margin-bottom: .5rem;
    display: flex;
    width: 100%;
    align-items: center;
    justify-content: space-between;
    gap: 1rem;
    --tw-bg-opacity: 1;
    background-color: rgb(245 245 244/var(--tw-bg-opacity));
    padding: 1rem;
    font-size: .875rem;
    letter-spacing: .025em;
    font-weight: 600;
    --tw-text-opacity: 1;
    color: rgb(28 25 23/var(--tw-text-opacity));
    --tw-shadow: 0 4px 6px -1px #0000001a,0 2px 4px -2px #0000001a;
    --tw-shadow-colored: 0 4px 6px -1px var(--tw-shadow-color),0 2px 4px -2px var(--tw-shadow-color);
    box-shadow: var(--tw-ring-offset-shadow,0 0 #0000),var(--tw-ring-shadow,0 0 #0000),var(--tw-shadow)
}

@media (min-width: 768px) {
    .message {
        font-size:1rem;
        line-height: 1.5rem
    }
}

.message.error {
    --tw-bg-opacity: 1;
    background-color: rgb(239 68 68/var(--tw-bg-opacity))
}

.message.success {
    --tw-bg-opacity: 1;
    background-color: rgb(0 0 0/var(--tw-bg-opacity))
}

.message.info,.message.notice,.message.warning {
    --tw-bg-opacity: 1;
    background-color: rgb(255 255 255/var(--tw-bg-opacity));
    --tw-shadow: 0 0 #0000!important;
    --tw-shadow-colored: 0 0 #0000!important;
    box-shadow: var(--tw-ring-offset-shadow,0 0 #0000),var(--tw-ring-shadow,0 0 #0000),var(--tw-shadow)!important
}

.message a {
    text-decoration-line: underline
}

.product-item .price-container {
    display: block
}

[data-content-type$=block] .product-item .price-container p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

.product-item .price-container .price {
    font-weight: 400
}

.product-item .price-container .price,.product-item .price-container .price-label {
    font-size: .875rem;
    letter-spacing: .025em
}

.product-item .special-price .price-container .price-label {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip: rect(0,0,0,0);
    white-space: nowrap;
    border-width: 0
}

.product-item .old-price .price-container {
    --tw-text-opacity: 1;
    color: rgb(107 114 128/var(--tw-text-opacity))
}

.product-item .old-price .price-container .price {
    font-size: 1rem;
    line-height: 1.5rem;
    font-weight: 400
}

.product-item .price-box .price-label {
    display: none
}

.page-product-bundle .price-final_price .price-from .price-container,.page-product-bundle .price-final_price .price-to .price-container {
    margin-bottom: 1rem;
    display: block;
    --tw-text-opacity: 1;
    color: rgb(55 65 81/var(--tw-text-opacity))
}

[data-content-type$=block] .page-product-bundle .price-final_price .price-from .price-container p:last-child,[data-content-type$=block] .page-product-bundle .price-final_price .price-to .price-container p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

.page-product-bundle .price-final_price .price-from .price-container .price-label,.page-product-bundle .price-final_price .price-to .price-container .price-label {
    display: block;
    font-size: 1.125rem;
    line-height: 1.75rem;
    font-weight: 500
}

[data-content-type$=block] .page-product-bundle .price-final_price .price-from .price-container .price-label p:last-child,[data-content-type$=block] .page-product-bundle .price-final_price .price-to .price-container .price-label p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

.page-product-bundle .price-final_price .price-from .price-container .price,.page-product-bundle .price-final_price .price-to .price-container .price {
    font-size: 1.5rem;
    line-height: 2rem;
    font-weight: 600;
    line-height: 1.25;
    --tw-text-opacity: 1;
    color: rgb(31 41 55/var(--tw-text-opacity))
}

.page-product-bundle .price-final_price .price-from .price-including-tax+.price-excluding-tax,.page-product-bundle .price-final_price .price-to .price-including-tax+.price-excluding-tax {
    margin-top: .25rem
}

.page-product-bundle .price-final_price .price-from .price-including-tax+.price-excluding-tax .price,.page-product-bundle .price-final_price .price-to .price-including-tax+.price-excluding-tax .price {
    font-size: 1rem;
    line-height: 1.5rem
}

.page-product-bundle .price-final_price .price-from .old-price .price-container .price,.page-product-bundle .price-final_price .price-from .old-price .price-container .price-label,.page-product-bundle .price-final_price .price-to .old-price .price-container .price,.page-product-bundle .price-final_price .price-to .old-price .price-container .price-label {
    display: inline;
    font-size: 1rem;
    line-height: 1.5rem;
    font-weight: 400;
    --tw-text-opacity: 1;
    color: rgb(107 114 128/var(--tw-text-opacity))
}

#thumbnails .is-active {
    border-width: 1px;
    --tw-border-opacity: 1;
    border-color: rgb(52 181 208/var(--tw-border-opacity))
}

.my-slider-progress {
    position: absolute;
    top: 0;
    left: -8px;
    height: 100%
}

.my-slider-progress-bar {
    height: 0;
    width: 1px;
    --tw-bg-opacity: 1;
    background-color: rgb(52 181 208/var(--tw-bg-opacity));
    transition-property: height;
    transition-duration: .3s;
    transition-timing-function: cubic-bezier(.4,0,.2,1)
}

.catalog-product-view .page-main {
    overflow-x: hidden
}

.v-full-video {
    position: relative;
    right: 50%;
    left: 50%;
    margin-left: -50vw;
    margin-right: -50vw;
    width: 100vw
}

.wishlist-widget .price-box .old-price,.wishlist-widget .price-box .price-label {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip: rect(0,0,0,0);
    white-space: nowrap;
    border-width: 0
}

.backdrop {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    display: flex;
    background-color: rgb(0 0 0/var(--tw-bg-opacity));
    --tw-bg-opacity: 0.25
}

.snap {
    scroll-snap-type: x mandatory;
    -ms-overflow-style: none;
    scroll-behavior: smooth;
    scrollbar-width: none
}

.snap::-webkit-scrollbar {
    display: none
}

.snap>div {
    scroll-snap-align: start
}

body {
    overflow-y: scroll
}

.clearfix:after {
    content: "";
    display: block;
    clear: both
}

.flex-columns-wrapper {
    display: flex;
    flex-direction: column
}

@media (min-width: 768px) {
    .flex-columns-wrapper {
        flex-direction:row
    }
}

.columns {
    width: 100%;
    margin-right: auto;
    margin-left: auto;
    padding-right: 1.5rem;
    padding-left: 1.5rem
}

@media (min-width: 640px) {
    .columns {
        max-width:640px
    }
}

@media (min-width: 768px) {
    .columns {
        max-width:768px
    }
}

@media (min-width: 1024px) {
    .columns {
        max-width:1024px
    }
}

@media (min-width: 1280px) {
    .columns {
        max-width:1280px
    }
}

@media (min-width: 1536px) {
    .columns {
        max-width:1536px
    }
}

.columns {
    display: grid;
    grid-template-columns: repeat(1,minmax(0,1fr));
    -moz-column-gap: 0;
    column-gap: 0;
    row-gap: 1rem
}

.catalog-category-view .category-view.columns {
    margin-left: auto;
    margin-right: auto;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 1rem 0;
    max-width: 100%;
    --tw-bg-opacity: 1;
    background-color: rgb(240 239 235/var(--tw-bg-opacity))
}

.columns {
    grid-template-rows: auto minmax(0,1fr)
}

.columns .main {
    order: 2
}

.columns .sidebar {
    order: 1
}

.product-main-full-width .columns {
    max-width: none
}

.page-main-full-width .columns {
    max-width: none;
    padding-left: 0;
    padding-right: 0
}

.page-with-filter .columns .sidebar-main {
    order: 1
}

@media (min-width: 640px) {
    .page-layout-2columns-left .columns,.page-layout-2columns-right .columns,.page-layout-3columns .columns {
        grid-template-columns:repeat(1,minmax(0,1fr))
    }

    .page-layout-2columns-left .columns .main,.page-layout-2columns-right .columns .main,.page-layout-3columns .columns .main {
        grid-column: span 2/span 2
    }

    .page-layout-2columns-left .columns .sidebar,.page-layout-2columns-right .columns .sidebar,.page-layout-3columns .columns .sidebar {
        order: 1
    }

    .page-with-filter .columns .sidebar-main {
        order: 1;
        grid-column: span 2/span 2
    }
}

@media (min-width: 768px) {
    .page-layout-2columns-left .columns,.page-layout-2columns-right .columns,.page-layout-3columns .columns {
        grid-template-columns:repeat(3,minmax(0,1fr));
        -moz-column-gap: 2rem;
        column-gap: 2rem
    }

    .page-layout-2columns-left .columns .main,.page-layout-2columns-right .columns .main,.page-layout-3columns .columns .main {
        grid-row: span 2/span 2
    }

    .page-layout-2columns-left .columns .sidebar,.page-layout-2columns-right .columns .sidebar,.page-layout-3columns .columns .sidebar {
        grid-column: span 1/span 1
    }

    .page-layout-2columns-left .columns .main,.page-layout-3columns .columns .main {
        grid-column-start: 2!important
    }

    .page-layout-2columns-left .columns .sidebar,.page-layout-3columns .columns .sidebar {
        order: 1
    }

    .page-layout-2columns-left .columns .sidebar~.sidebar-additional,.page-layout-2columns-right .sidebar-main,.page-layout-2columns-right.page-with-filter .sidebar-main,.page-layout-3columns .columns .sidebar~.sidebar-additional {
        order: 3
    }
}

@media (min-width: 1024px) {
    .page-layout-2columns-left .columns,.page-layout-2columns-right .columns,.page-layout-3columns .columns {
        grid-template-columns:repeat(4,minmax(0,1fr))
    }

    .page-layout-2columns-left .columns .main,.page-layout-2columns-right .columns .main {
        grid-column: span 3/span 3
    }

    .page-layout-3columns .columns .sidebar-additional {
        grid-column-start: 4
    }
}

.product-image-container {
    width: 100%!important
}

.product-image-container img {
    width: 100%
}

.checkout-onepage-success .columns {
    margin: 0;
    max-width: none;
    padding: 0
}

.swatch-attribute .swatch-attribute-options {
    display: flex;
    flex-direction: row;
    flex-wrap: wrap
}

.swatch-attribute .swatch-attribute-options .swatch-option {
    margin: .25rem;
    display: flex;
    justify-content: center;
    border-width: 1px;
    padding: .25rem .5rem;
    min-width: 40px
}

body {
    --tw-bg-opacity: 1;
    background-color: rgb(255 255 255/var(--tw-bg-opacity));
    --tw-gradient-from-position: 0%;
    --tw-gradient-to-position: 100%
}

:focus-visible {
    outline: 2px solid #0000;
    outline-offset: 2px;
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(2px + var(--tw-ring-offset-width)) var(--tw-ring-color);
    box-shadow: var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow,0 0 #0000);
    --tw-ring-opacity: 1;
    --tw-ring-color: rgb(52 181 208/var(--tw-ring-opacity))
}

#cart-drawer {
    --tw-text-opacity: 1;
    color: rgb(0 0 0/var(--tw-text-opacity))
}

[x-cloak] {
    display: none!important
}

.input {
    margin-right: .5rem;
    width: auto;
    border-radius: .25rem;
    border-width: 1px;
    padding: .5rem 1rem;
    font-size: 1rem;
    line-height: 1.5rem
}

@media (min-width: 768px) {
    .input {
        margin-right:1rem
    }
}

@media (min-width: 1024px) {
    .input {
        margin-right:0
    }
}

@media (min-width: 1280px) {
    .input {
        margin-right:1rem
    }
}

.input-light {
    --tw-border-opacity: 1;
    border-color: rgb(156 163 175/var(--tw-border-opacity));
    --tw-bg-opacity: 1;
    background-color: rgb(255 255 255/var(--tw-bg-opacity))
}

.input-light:focus {
    --tw-border-opacity: 1;
    border-color: rgb(0 0 0/var(--tw-border-opacity));
    outline: 2px solid #0000;
    outline-offset: 2px
}

.card {
    border-width: 0;
    --tw-bg-opacity: 1;
    padding: 1rem;
    --tw-shadow: 0 0 #0000;
    --tw-shadow-colored: 0 0 #0000;
    box-shadow: var(--tw-ring-offset-shadow,0 0 #0000),var(--tw-ring-shadow,0 0 #0000),var(--tw-shadow)
}

.card,.card-interactive:hover {
    background-color: rgb(255 255 255/var(--tw-bg-opacity))
}

.card-interactive:hover {
    --tw-bg-opacity: 1
}

.product-label {
    padding-top: .25rem;
    padding-bottom: .25rem;
    font-size: .875rem;
    letter-spacing: .025em;
    font-weight: 600;
    --tw-text-opacity: 1;
    color: rgb(120 113 108/var(--tw-text-opacity))
}

@media (min-width: 1536px) {
    .product-label {
        font-size:1rem;
        line-height: 1.5rem
    }
}

.product-label-exclusive {
    width: -moz-fit-content;
    width: fit-content;
    border-width: 1px;
    --tw-border-opacity: 1;
    border-color: rgb(68 64 60/var(--tw-border-opacity));
    padding: .25rem .5rem;
    font-size: .875rem;
    letter-spacing: .025em;
    font-weight: 600;
    --tw-text-opacity: 1;
    color: rgb(120 113 108/var(--tw-text-opacity))
}

@media (min-width: 1536px) {
    .product-label-exclusive {
        font-size:1rem;
        line-height: 1.5rem
    }
}

.campaign-label {
    border-width: 1px;
    --tw-border-opacity: 1;
    border-color: rgb(185 28 28/var(--tw-border-opacity));
    padding: .25rem .5rem;
    font-size: .875rem;
    letter-spacing: .025em;
    font-weight: 500;
    text-transform: uppercase;
    --tw-text-opacity: 1;
    color: rgb(185 28 28/var(--tw-text-opacity))
}

.hover-custom:hover>svg {
    display: none
}

.hover-custom:hover>.hidden-hover {
    display: block!important
}

[data-content-type$=block] .hover-custom:hover>.hidden-hover p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

.openCollapsible:before {
    --tw-content: "";
    content: var(--tw-content);
    position: fixed;
    left: 0;
    top: 0;
    z-index: 40;
    height: 100vh;
    width: 100%;
    --tw-bg-opacity: 1;
    background-color: rgb(0 0 0/var(--tw-bg-opacity));
    opacity: .5
}

.processing,.processing_to_shipment {
    --tw-text-opacity: 1;
    color: rgb(34 211 238/var(--tw-text-opacity))
}

.error_exporting_to_smartie,.fraud,.ready_to_export_jp {
    --tw-text-opacity: 1;
    color: rgb(251 146 60/var(--tw-text-opacity))
}

.exported_to_smartie,.payment_review,.pending,.pending_cashondelivery,.pending_payment,.pending_paypal,.pending_sequra {
    --tw-text-opacity: 1;
    color: rgb(251 191 36/var(--tw-text-opacity))
}

.approved_sequra,.complete,.holded,.paypal_reversed,.refund,.synced_with_smartie {
    --tw-text-opacity: 1;
    color: rgb(21 128 61/var(--tw-text-opacity))
}

.canceled,.canceled_from_erp,.closed,.lengow_technical_error,.paypal_canceled_reversal {
    --tw-text-opacity: 1;
    color: rgb(220 38 38/var(--tw-text-opacity))
}

.grecaptcha-badge {
    display: none
}

#CybotCookiebotDialogHeaderLogosWrapper,#CybotCookiebotDialogPoweredByText {
    display: none!important
}

.is-loading>:not(.loader) {
    visibility: hidden
}

.page-wrapper {
    --tw-bg-opacity: 1;
    background-color: rgb(255 255 255/var(--tw-bg-opacity))
}

#livechat-wrapper {
    display: none
}

.duration-200 {
    transition-duration: .2s
}

.ease-in {
    transition-timing-function: cubic-bezier(.4,0,1,1)
}

.ease-out {
    transition-timing-function: cubic-bezier(0,0,.2,1)
}

.transition {
    transition: transform .25s ease,color .25s ease
}

.transform-180 {
    transform: rotate(-180deg)
}

html {
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale
}

body {
    font-size: 1rem;
    line-height: 1.5rem;
    line-height: 1.5;
    letter-spacing: 0;
    --tw-text-opacity: 1;
    color: rgb(0 0 0/var(--tw-text-opacity))
}

@font-face {
    font-display: swap;
    font-family: Noto Sans;
    font-style: normal;
    font-weight: 400;
    src: url(../fonts/noto-sans-v30-latin-regular.woff2) format("woff2"),url(../fonts/noto-sans-v30-latin-regular.woff) format("woff")
}

@font-face {
    font-display: swap;
    font-family: Noto Sans;
    font-style: normal;
    font-weight: 500;
    src: url(../fonts/noto-sans-v30-latin-500.woff2) format("woff2"),url(../fonts/noto-sans-v30-latin-500.woff) format("woff")
}

@font-face {
    font-display: swap;
    font-family: Noto Sans;
    font-style: normal;
    font-weight: 600;
    src: url(../fonts/noto-sans-v30-latin-600.woff2) format("woff2"),url(../fonts/noto-sans-v30-latin-600.woff) format("woff")
}

@font-face {
    font-display: swap;
    font-family: Noto Sans;
    font-style: normal;
    font-weight: 700;
    src: url(../fonts/noto-sans-v30-latin-700.woff2) format("woff2"),url(../fonts/noto-sans-v30-latin-700.woff) format("woff")
}

@font-face {
    font-display: swap;
    font-family: "Noto Serif";
    font-style: normal;
    font-weight: 400;
    src: url(../fonts/noto-serif-v22-latin-regular.woff2) format("woff2"),url(../fonts/noto-serif-v22-latin-regular.woff) format("woff")
}

@font-face {
    font-display: swap;
    font-family: "Noto Serif";
    font-style: normal;
    font-weight: 700;
    src: url(../fonts/noto-serif-v22-latin-700.woff2) format("woff2"),url(../fonts/noto-serif-v22-latin-700.woff) format("woff")
}

[data-content-type=row] {
    box-sizing: border-box
}

[data-content-type=row][data-appearance=contained] {
    width: 100%;
    padding-right: 1.5rem;
    padding-left: 1.5rem
}

@media (min-width: 640px) {
    [data-content-type=row][data-appearance=contained] {
        max-width:640px
    }
}

@media (min-width: 768px) {
    [data-content-type=row][data-appearance=contained] {
        max-width:768px
    }
}

@media (min-width: 1024px) {
    [data-content-type=row][data-appearance=contained] {
        max-width:1024px
    }
}

@media (min-width: 1280px) {
    [data-content-type=row][data-appearance=contained] {
        max-width:1280px
    }
}

@media (min-width: 1536px) {
    [data-content-type=row][data-appearance=contained] {
        max-width:1536px
    }
}

.catalog-category-view .category-view[data-content-type=row][data-appearance=contained] {
    margin-left: auto;
    margin-right: auto;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 1rem 0;
    max-width: 100%;
    --tw-bg-opacity: 1;
    background-color: rgb(240 239 235/var(--tw-bg-opacity))
}

[data-content-type=row][data-appearance=contained] {
    margin-left: auto;
    margin-right: auto;
    box-sizing: border-box
}

[data-content-type=row][data-appearance=contained] [data-element=inner] {
    box-sizing: border-box;
    background-attachment: scroll!important
}

[data-content-type=row][data-appearance=full-bleed],[data-content-type=row][data-appearance=full-width] {
    background-attachment: scroll!important
}

[data-content-type=row][data-appearance=full-width]>.row-full-width-inner {
    width: 100%;
    margin-right: auto;
    margin-left: auto;
    padding-right: 1.5rem;
    padding-left: 1.5rem
}

@media (min-width: 640px) {
    [data-content-type=row][data-appearance=full-width]>.row-full-width-inner {
        max-width:640px
    }
}

@media (min-width: 768px) {
    [data-content-type=row][data-appearance=full-width]>.row-full-width-inner {
        max-width:768px
    }
}

@media (min-width: 1024px) {
    [data-content-type=row][data-appearance=full-width]>.row-full-width-inner {
        max-width:1024px
    }
}

@media (min-width: 1280px) {
    [data-content-type=row][data-appearance=full-width]>.row-full-width-inner {
        max-width:1280px
    }
}

@media (min-width: 1536px) {
    [data-content-type=row][data-appearance=full-width]>.row-full-width-inner {
        max-width:1536px
    }
}

.catalog-category-view .category-view[data-content-type=row][data-appearance=full-width]>.row-full-width-inner {
    margin-left: auto;
    margin-right: auto;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 1rem 0;
    max-width: 100%;
    --tw-bg-opacity: 1;
    background-color: rgb(240 239 235/var(--tw-bg-opacity))
}

[data-content-type=column-group],[data-content-type=column-line] {
    flex-wrap: wrap
}

@media (min-width: 768px) {
    [data-content-type=column-group],[data-content-type=column-line] {
        flex-wrap:nowrap
    }
}

[data-content-type=column] {
    box-sizing: border-box;
    width: 100%;
    max-width: 100%;
    background-attachment: scroll!important;
    flex-basis: 100%
}

@media (min-width: 768px) {
    [data-content-type=column] {
        flex-basis:auto
    }
}

[data-content-type=tabs] .tabs-navigation {
    margin-bottom: -1px;
    display: block;
    padding: 0;
    --tw-shadow: 0 1px 3px 0 #0000001a,0 1px 2px -1px #0000001a;
    --tw-shadow-colored: 0 1px 3px 0 var(--tw-shadow-color),0 1px 2px -1px var(--tw-shadow-color);
    box-shadow: var(--tw-ring-offset-shadow,0 0 #0000),var(--tw-ring-shadow,0 0 #0000),var(--tw-shadow)
}

[data-content-type$=block] [data-content-type=tabs] .tabs-navigation p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

[data-content-type=tabs] .tabs-navigation li.tab-header {
    position: relative;
    margin: 0 0 0 -1px;
    display: inline-block;
    max-width: 100%;
    overflow-wrap: break-word;
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
    border-width: 1px 1px 0;
    border-style: solid;
    --tw-border-opacity: 1;
    border-color: rgb(209 213 219/var(--tw-border-opacity));
    --tw-bg-opacity: 1;
    background-color: rgb(243 244 246/var(--tw-bg-opacity))
}

[data-content-type=tabs] .tabs-navigation li.tab-header:first-child {
    margin-left: 0
}

[data-content-type=tabs] .tabs-navigation li.tab-header.active {
    z-index: 20;
    --tw-bg-opacity: 1;
    background-color: rgb(255 255 255/var(--tw-bg-opacity));
    border-bottom: 1px solid #fff
}

[data-content-type=tabs] .tabs-navigation li.tab-header a.tab-title {
    position: relative;
    display: block;
    cursor: pointer;
    white-space: normal;
    padding: .75rem 1.25rem;
    vertical-align: middle;
    font-size: .875rem;
    letter-spacing: .025em;
    font-weight: 600
}

[data-content-type$=block] [data-content-type=tabs] .tabs-navigation li.tab-header a.tab-title p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

[data-content-type=tabs] .tabs-navigation li.tab-header a.tab-title span {
    font-weight: 600;
    line-height: 1.25rem;
    --tw-text-opacity: 1;
    color: rgb(0 0 0/var(--tw-text-opacity))
}

[data-content-type=tabs] .tabs-content {
    position: relative;
    z-index: 10;
    box-sizing: border-box;
    overflow: hidden;
    border-radius: .125rem;
    border-width: 1px;
    border-style: solid;
    --tw-border-opacity: 1;
    border-color: rgb(209 213 219/var(--tw-border-opacity));
    --tw-bg-opacity: 1;
    background-color: rgb(250 250 249/var(--tw-bg-opacity));
    --tw-shadow: 0 1px 3px 0 #0000001a,0 1px 2px -1px #0000001a;
    --tw-shadow-colored: 0 1px 3px 0 var(--tw-shadow-color),0 1px 2px -1px var(--tw-shadow-color);
    box-shadow: var(--tw-ring-offset-shadow,0 0 #0000),var(--tw-ring-shadow,0 0 #0000),var(--tw-shadow)
}

[data-content-type=tabs] .tabs-content [data-content-type=tab-item] {
    box-sizing: border-box;
    padding: 2rem;
    min-height: inherit;
    background-attachment: scroll!important
}

[data-content-type=tabs].tab-align-left .tabs-content {
    border-top-left-radius: 0!important
}

[data-content-type=tabs].tab-align-right .tabs-content {
    border-top-right-radius: 0!important
}

[data-content-type=heading],[data-content-type=text] {
    overflow-wrap: break-word
}

[data-content-type=buttons] {
    max-width: 100%
}

[data-content-type=buttons] [data-content-type=button-item] {
    margin-right: .5rem;
    margin-bottom: .5rem;
    max-width: 100%
}

[data-content-type=buttons] [data-content-type=button-item] [data-element=empty_link],[data-content-type=buttons] [data-content-type=button-item] [data-element=link] {
    max-width: 100%;
    overflow-wrap: break-word
}

[data-content-type=buttons] [data-content-type=button-item] [data-element=empty_link] {
    cursor: default
}

[data-content-type=buttons] [data-content-type=button-item] a,[data-content-type=buttons] [data-content-type=button-item] button,[data-content-type=buttons] [data-content-type=button-item] div {
    display: inline-block;
    --tw-shadow: 0 0 #0000;
    --tw-shadow-colored: 0 0 #0000;
    box-shadow: var(--tw-ring-offset-shadow,0 0 #0000),var(--tw-ring-shadow,0 0 #0000),var(--tw-shadow)
}

[data-content-type=buttons] [data-content-type=button-item] a.pagebuilder-button-link,[data-content-type=buttons] [data-content-type=button-item] button.pagebuilder-button-link,[data-content-type=buttons] [data-content-type=button-item] div.pagebuilder-button-link {
    box-sizing: border-box
}

a.pagebuilder-button-primary,button.pagebuilder-button-primary,div.pagebuilder-button-primary {
    display: flex;
    align-items: center;
    background-color: rgb(107 114 128/var(--tw-bg-opacity));
    padding: .5rem 1rem;
    font-size: 1rem;
    line-height: 1.5rem;
    font-weight: 500
}

@media (min-width: 768px) {
    a.pagebuilder-button-primary,button.pagebuilder-button-primary,div.pagebuilder-button-primary {
        padding-left:1.5rem;
        padding-right: 1.5rem;
        font-size: 1.125rem;
        line-height: 1.75rem
    }
}

@media (min-width: 1280px) {
    a.pagebuilder-button-primary,button.pagebuilder-button-primary,div.pagebuilder-button-primary {
        font-size:1rem;
        line-height: 1.5rem
    }
}

a.pagebuilder-button-primary svg,button.pagebuilder-button-primary svg,div.pagebuilder-button-primary svg {
    display: inline-flex
}

a.pagebuilder-button-primary span,button.pagebuilder-button-primary span,div.pagebuilder-button-primary span {
    vertical-align: middle
}

a.pagebuilder-button-primary:hover,button.pagebuilder-button-primary:hover,div.pagebuilder-button-primary:hover {
    background-color: rgb(75 85 99/var(--tw-bg-opacity))
}

a.pagebuilder-button-primary:focus,button.pagebuilder-button-primary:focus,div.pagebuilder-button-primary:focus {
    border-color: #0000;
    outline: 2px solid #0000;
    outline-offset: 2px;
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(4px + var(--tw-ring-offset-width)) var(--tw-ring-color);
    box-shadow: var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow,0 0 #0000);
    --tw-ring-color: rgb(52 181 208/var(--tw-ring-opacity));
    --tw-ring-opacity: 0.5
}

a.pagebuilder-button-primary,button.pagebuilder-button-primary,div.pagebuilder-button-primary {
    --tw-bg-opacity: 1;
    background-color: rgb(0 0 0/var(--tw-bg-opacity));
    --tw-text-opacity: 1;
    color: rgb(255 255 255/var(--tw-text-opacity))
}

a.pagebuilder-button-primary:hover,button.pagebuilder-button-primary:hover,div.pagebuilder-button-primary:hover {
    --tw-bg-opacity: 1;
    background-color: rgb(255 255 255/var(--tw-bg-opacity));
    --tw-text-opacity: 1;
    color: rgb(0 0 0/var(--tw-text-opacity));
    outline-style: solid;
    outline-width: 1px;
    outline-color: #000
}

a.pagebuilder-button-primary:disabled,button.pagebuilder-button-primary:disabled,div.pagebuilder-button-primary:disabled {
    --tw-bg-opacity: 1;
    background-color: rgb(168 162 158/var(--tw-bg-opacity));
    --tw-text-opacity: 1;
    color: rgb(255 255 255/var(--tw-text-opacity));
    outline: 2px solid #0000;
    outline-offset: 2px
}

.hyva_checkout-index-index a.pagebuilder-button-primary[disabled],.hyva_checkout-index-index button.pagebuilder-button-primary[disabled],.hyva_checkout-index-index div.pagebuilder-button-primary[disabled] {
    cursor: not-allowed;
    opacity: .25
}

a.pagebuilder-button-secondary,button.pagebuilder-button-secondary,div.pagebuilder-button-secondary {
    display: flex;
    align-items: center;
    background-color: rgb(107 114 128/var(--tw-bg-opacity));
    padding: .5rem 1rem;
    font-size: 1rem;
    line-height: 1.5rem;
    font-weight: 500;
    color: rgb(255 255 255/var(--tw-text-opacity))
}

@media (min-width: 768px) {
    a.pagebuilder-button-secondary,button.pagebuilder-button-secondary,div.pagebuilder-button-secondary {
        padding-left:1.5rem;
        padding-right: 1.5rem;
        font-size: 1.125rem;
        line-height: 1.75rem
    }
}

@media (min-width: 1280px) {
    a.pagebuilder-button-secondary,button.pagebuilder-button-secondary,div.pagebuilder-button-secondary {
        font-size:1rem;
        line-height: 1.5rem
    }
}

a.pagebuilder-button-secondary svg,button.pagebuilder-button-secondary svg,div.pagebuilder-button-secondary svg {
    display: inline-flex
}

a.pagebuilder-button-secondary span,button.pagebuilder-button-secondary span,div.pagebuilder-button-secondary span {
    vertical-align: middle
}

a.pagebuilder-button-secondary:hover,button.pagebuilder-button-secondary:hover,div.pagebuilder-button-secondary:hover {
    background-color: rgb(75 85 99/var(--tw-bg-opacity))
}

a.pagebuilder-button-secondary:focus,button.pagebuilder-button-secondary:focus,div.pagebuilder-button-secondary:focus {
    outline: 2px solid #0000;
    outline-offset: 2px;
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(4px + var(--tw-ring-offset-width)) var(--tw-ring-color);
    box-shadow: var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow,0 0 #0000);
    --tw-ring-color: rgb(52 181 208/var(--tw-ring-opacity));
    --tw-ring-opacity: 0.5
}

a.pagebuilder-button-secondary,button.pagebuilder-button-secondary,div.pagebuilder-button-secondary {
    border-width: 1px;
    --tw-border-opacity: 1;
    border-color: rgb(0 0 0/var(--tw-border-opacity));
    --tw-bg-opacity: 1;
    background-color: rgb(255 255 255/var(--tw-bg-opacity));
    --tw-text-opacity: 1;
    color: rgb(0 0 0/var(--tw-text-opacity))
}

a.pagebuilder-button-secondary:hover,button.pagebuilder-button-secondary:hover,div.pagebuilder-button-secondary:hover {
    --tw-bg-opacity: 1;
    background-color: rgb(0 0 0/var(--tw-bg-opacity));
    --tw-text-opacity: 1;
    color: rgb(255 255 255/var(--tw-text-opacity))
}

a.pagebuilder-button-secondary:focus,button.pagebuilder-button-secondary:focus,div.pagebuilder-button-secondary:focus {
    border-width: 2px;
    border-color: #0000
}

.hyva_checkout-index-index a.pagebuilder-button-secondary[disabled],.hyva_checkout-index-index button.pagebuilder-button-secondary[disabled],.hyva_checkout-index-index div.pagebuilder-button-secondary[disabled] {
    cursor: not-allowed;
    opacity: .25
}

[data-content-type=html] {
    overflow-wrap: break-word
}

[data-content-type=image] {
    box-sizing: border-box
}

[data-content-type=image]>[data-element=link],[data-content-type=image]>[data-element=link] img {
    border-radius: inherit
}

[data-content-type=image] .pagebuilder-mobile-hidden {
    display: none
}

@media (min-width: 768px) {
    [data-content-type=image] .pagebuilder-mobile-hidden {
        display:block
    }

    [data-content-type=image] .pagebuilder-mobile-only {
        display: none
    }
}

[data-content-type=image] figcaption {
    overflow-wrap: break-word
}

[data-content-type=video] {
    font-size: 0
}

[data-content-type=video] .pagebuilder-video-inner {
    box-sizing: border-box;
    display: inline-block;
    width: 100%
}

[data-content-type=video] .pagebuilder-video-container {
    position: relative;
    overflow: hidden;
    border-radius: inherit;
    padding-top: 56.25%
}

[data-content-type=video] iframe,[data-content-type=video] video {
    position: absolute;
    left: 0;
    top: 0;
    height: 100%;
    width: 100%
}

[data-content-type=banner]>[data-element=empty_link],[data-content-type=banner]>[data-element=empty_link]:hover,[data-content-type=banner]>[data-element=link],[data-content-type=banner]>[data-element=link]:hover {
    color: inherit;
    text-decoration: inherit
}

[data-content-type=banner] .pagebuilder-banner-wrapper {
    box-sizing: border-box;
    overflow-wrap: break-word;
    background-clip: padding-box;
    border-radius: inherit;
    background-attachment: scroll!important
}

[data-content-type=banner] .pagebuilder-banner-wrapper .pagebuilder-overlay {
    position: relative;
    box-sizing: border-box;
    padding: 2rem;
    transition-property: color,background-color,border-color,text-decoration-color,fill,stroke,opacity,box-shadow,transform,filter,-webkit-backdrop-filter;
    transition-property: color,background-color,border-color,text-decoration-color,fill,stroke,opacity,box-shadow,transform,filter,backdrop-filter;
    transition-property: color,background-color,border-color,text-decoration-color,fill,stroke,opacity,box-shadow,transform,filter,backdrop-filter,-webkit-backdrop-filter;
    transition-duration: .5s;
    transition-timing-function: cubic-bezier(.4,0,.2,1);
    transition: transform .25s ease,color .25s ease
}

[data-content-type=banner] .pagebuilder-banner-wrapper .pagebuilder-overlay.pagebuilder-poster-overlay {
    display: flex;
    align-items: center;
    justify-content: center
}

[data-content-type=banner] .pagebuilder-banner-wrapper .pagebuilder-overlay:not(.pagebuilder-poster-overlay) {
    max-width: none
}

@media (min-width: 768px) {
    [data-content-type=banner] .pagebuilder-banner-wrapper .pagebuilder-overlay:not(.pagebuilder-poster-overlay) {
        max-width:36rem
    }
}

[data-content-type=banner] .pagebuilder-banner-wrapper.jarallax .video-overlay {
    z-index: 0
}

[data-content-type=banner] .pagebuilder-banner-wrapper [data-element=content] {
    overflow: auto;
    min-height: 50px
}

[data-content-type=banner] .pagebuilder-banner-wrapper .pagebuilder-banner-button {
    margin: 1.25rem 0 0;
    max-width: 100%;
    overflow-wrap: break-word;
    transition-property: opacity;
    transition-duration: .5s;
    transition-timing-function: cubic-bezier(.4,0,.2,1);
    text-align: inherit
}

[data-content-type=banner] .pagebuilder-banner-wrapper .pagebuilder-poster-content {
    width: 100%
}

[data-content-type=banner][data-appearance=collage-centered] .pagebuilder-banner-wrapper .pagebuilder-overlay {
    margin-left: auto;
    margin-right: auto
}

[data-content-type=banner][data-appearance=collage-left] .pagebuilder-banner-wrapper .pagebuilder-overlay {
    margin-right: auto
}

[data-content-type=banner][data-appearance=collage-right] .pagebuilder-banner-wrapper .pagebuilder-overlay {
    margin-left: auto
}

[data-content-type=slider] {
    visibility: hidden;
    position: relative
}

[data-content-type=slider].glider-initialized {
    visibility: visible
}

[data-content-type=slider] [data-role=glider-content] {
    overflow-y: hidden
}

[data-content-type=slider] a.button {
    color: initial;
    padding: 10px;
    text-decoration: none
}

[data-content-type=slider] .carousel-nav {
    position: absolute;
    bottom: 0;
    margin-bottom: .5rem;
    background-color: rgb(249 250 251/var(--tw-bg-opacity));
    --tw-bg-opacity: 0.75;
    left: 50%;
    transform: translateX(-50%)
}

[data-content-type=slide] {
    box-sizing: border-box;
    overflow: hidden;
    line-height: 1.25rem;
    min-height: inherit
}

[data-content-type=slide]>[data-element=empty_link],[data-content-type=slide]>[data-element=link] {
    color: inherit;
    min-height: inherit;
    text-decoration: inherit
}

[data-content-type=slide]>[data-element=empty_link]:hover,[data-content-type=slide]>[data-element=link]:hover {
    color: inherit;
    text-decoration: inherit
}

[data-content-type=slide]+[data-content-type=slide] {
    height: 0;
    min-height: 0
}

[data-content-type=slide] .pagebuilder-slide-wrapper {
    box-sizing: border-box;
    overflow-wrap: break-word;
    border-radius: inherit;
    min-height: inherit
}

[data-content-type=slide] .pagebuilder-slide-wrapper .jarallax-viewport-element {
    position: absolute;
    top: 0;
    z-index: 50;
    height: 100%;
    width: .125rem;
    left: -15000vw
}

[data-content-type=slide] .pagebuilder-slide-wrapper.jarallax .video-overlay {
    -webkit-transform: unset;
    z-index: 1
}

[data-content-type=slide] .pagebuilder-slide-wrapper.jarallax .pagebuilder-overlay {
    position: relative;
    z-index: 20
}

[data-content-type=slide] .pagebuilder-slide-wrapper.jarallax [id*=jarallax-container]>div,[data-content-type=slide] .pagebuilder-slide-wrapper.jarallax [id*=jarallax-container]>iframe,[data-content-type=slide] .pagebuilder-slide-wrapper.jarallax [id*=jarallax-container]>img,[data-content-type=slide] .pagebuilder-slide-wrapper.jarallax [id*=jarallax-container]>video {
    margin: auto!important;
    transform: none!important
}

[data-content-type=slide] .pagebuilder-slide-wrapper .pagebuilder-overlay {
    box-sizing: border-box;
    padding: 2rem;
    transition-property: color,background-color,border-color,text-decoration-color,fill,stroke;
    transition-timing-function: cubic-bezier(.4,0,.2,1);
    transition-duration: .15s;
    border-radius: inherit
}

[data-content-type=slide] .pagebuilder-slide-wrapper .pagebuilder-overlay.pagebuilder-poster-overlay {
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: inherit
}

[data-content-type=slide] .pagebuilder-slide-wrapper .pagebuilder-overlay:not(.pagebuilder-poster-overlay) {
    max-width: none
}

@media (min-width: 768px) {
    [data-content-type=slide] .pagebuilder-slide-wrapper .pagebuilder-overlay:not(.pagebuilder-poster-overlay) {
        max-width:32rem
    }
}

[data-content-type=slide] .pagebuilder-slide-wrapper [data-element=content] {
    overflow: auto;
    min-height: 50px
}

[data-content-type=slide] .pagebuilder-slide-wrapper .pagebuilder-slide-button {
    margin: 1.25rem 0 0;
    max-width: 100%;
    overflow-wrap: break-word;
    transition-property: opacity;
    transition-timing-function: cubic-bezier(.4,0,.2,1);
    transition-duration: .15s;
    text-align: inherit
}

[data-content-type=slide] .pagebuilder-slide-wrapper .pagebuilder-poster-content {
    width: 100%
}

[data-content-type=slide][data-appearance=collage-centered] .pagebuilder-slide-wrapper .pagebuilder-overlay {
    margin-left: auto;
    margin-right: auto
}

[data-content-type=slide][data-appearance=collage-left] .pagebuilder-slide-wrapper .pagebuilder-overlay {
    margin-right: auto
}

[data-content-type=slide][data-appearance=collage-right] .pagebuilder-slide-wrapper .pagebuilder-overlay {
    margin-left: auto
}

[data-content-type=map] {
    box-sizing: border-box;
    height: 18rem
}

[data-content-type$=block] .block p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

[data-content-type=dynamic_block] [data-content-type=image] img {
    display: inline
}

[data-content-type=dynamic_block] .block-banners .banner-item-content,[data-content-type=dynamic_block] .block-banners-inline .banner-item-content {
    margin-bottom: auto
}

[data-content-type=products][data-appearance=carousel] [data-role=glider-content] {
    grid-template-columns: repeat(100,calc(50% - 1rem))
}

@media (min-width: 768px) {
    [data-content-type=products][data-appearance=carousel] [data-role=glider-content] {
        grid-template-columns:repeat(100,calc(33% - 1rem))
    }
}

@media (min-width: 1024px) {
    [data-content-type=products][data-appearance=carousel] [data-role=glider-content] {
        grid-template-columns:repeat(100,calc(25% - 1rem))
    }
}

.glider-contain {
    position: relative;
    margin: 0 auto;
    width: 100%
}

.glider {
    overflow-y: hidden
}

.glider.draggable {
    cursor: grab
}

.glider.draggable,.glider.draggable .glider-slide img {
    -webkit-user-select: none;
    -moz-user-select: none;
    user-select: none
}

.glider.draggable .glider-slide img {
    pointer-events: none
}

.glider.drag {
    cursor: grabbing
}

.glider::-webkit-scrollbar {
    height: 0;
    opacity: 0
}

.glider .glider-track {
    z-index: 10;
    margin: 0;
    display: flex;
    width: 100%;
    padding: 0
}

.glider-slide {
    margin: .5rem;
    width: 100%;
    -webkit-user-select: none;
    -moz-user-select: none;
    user-select: none;
    align-content: center;
    justify-content: center;
    min-width: 150px
}

.glider-slide img {
    max-width: 100%
}

.glider-hide {
    opacity: 0
}

.glider-next.disabled,.glider-prev.disabled {
    cursor: default;
    --tw-text-opacity: 1;
    color: rgb(107 114 128/var(--tw-text-opacity));
    opacity: .25
}

.glider-dot {
    margin: .25rem;
    display: block;
    height: .75rem;
    width: .75rem;
    cursor: pointer;
    border-radius: 9999px;
    --tw-bg-opacity: 1;
    background-color: rgb(0 0 0/var(--tw-bg-opacity));
    opacity: .25;
    --tw-shadow: 0 1px 3px 0 #0000001a,0 1px 2px -1px #0000001a;
    --tw-shadow-colored: 0 1px 3px 0 var(--tw-shadow-color),0 1px 2px -1px var(--tw-shadow-color);
    box-shadow: var(--tw-ring-offset-shadow,0 0 #0000),var(--tw-ring-shadow,0 0 #0000),var(--tw-shadow)
}

[data-content-type$=block] .glider-dot p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

.glider-dot.active {
    opacity: 1
}

@media (max-width: 36em) {
    .glider::-webkit-scrollbar {
        height:.25rem;
        width: .5rem;
        -webkit-appearance: none;
        appearance: none;
        opacity: 1
    }

    .glider::-webkit-scrollbar-thumb {
        opacity: 1;
        border-radius: 99px;
        background-color: #9c9c9c40;
        box-shadow: 0 0 1px #ffffff40
    }
}

[data-show-arrows=false] .glider-next,[data-show-arrows=false] .glider-prev,[data-show-dots=false] .glider-dots {
    display: none
}

.sr-only {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip: rect(0,0,0,0);
    white-space: nowrap;
    border-width: 0
}

.pointer-events-none {
    pointer-events: none
}

.visible {
    visibility: visible
}

.invisible {
    visibility: hidden
}

.static {
    position: static
}

.fixed {
    position: fixed
}

.absolute {
    position: absolute
}

.relative {
    position: relative
}

.sticky {
    position: sticky
}

.inset-0 {
    top: 0;
    bottom: 0
}

.inset-0,.inset-x-0 {
    right: 0;
    left: 0
}

.inset-y-0 {
    top: 0;
    bottom: 0
}

.inset-x-4 {
    left: 1rem;
    right: 1rem
}

.-top-2\.5 {
    top: -.625rem
}

.bottom-0 {
    bottom: 0
}

.-top-2 {
    top: -.5rem
}

.left-0 {
    left: 0
}

.top-4 {
    top: 1rem
}

.top-\[-4px\] {
    top: -4px
}

.top-\[-2px\] {
    top: -2px
}

.top-0 {
    top: 0
}

.left-\[-28px\] {
    left: -28px
}

.right-6 {
    right: 1.5rem
}

.top-6 {
    top: 1.5rem
}

.-left-6 {
    left: -1.5rem
}

.-right-8 {
    right: -2rem
}

.right-4 {
    right: 1rem
}

.right-0 {
    right: 0
}

.right-3 {
    right: .75rem
}

.top-3 {
    top: .75rem
}

.top-full {
    top: 100%
}

.right-2 {
    right: .5rem
}

.left-\[-56px\] {
    left: -56px
}

.-right-6 {
    right: -1.5rem
}

.-top-3 {
    top: -.75rem
}

.top-\[10vh\] {
    top: 10vh
}

.top-\[146px\] {
    top: 146px
}

.top-\[116px\] {
    top: 116px
}

.bottom-4 {
    bottom: 1rem
}

.-top-1\.5 {
    top: -.375rem
}

.-right-1\.5 {
    right: -.375rem
}

.-top-1 {
    top: -.25rem
}

.-right-1 {
    right: -.25rem
}

.bottom-auto {
    bottom: auto
}

.-right-2\.5 {
    right: -.625rem
}

.-right-2 {
    right: -.5rem
}

.left-auto {
    left: auto
}

.right-2\.5 {
    right: .625rem
}

.bottom-full {
    bottom: 100%
}

.left-1\/4 {
    left: 25%
}

.-bottom-2 {
    bottom: -.5rem
}

.left-2\.5 {
    left: .625rem
}

.left-2 {
    left: .5rem
}

.-left-1 {
    left: -.25rem
}

.-top-px {
    top: -1px
}

.right-1 {
    right: .25rem
}

.top-2\.5 {
    top: .625rem
}

.top-2 {
    top: .5rem
}

.-left-2 {
    left: -.5rem
}

.left-1\/2 {
    left: 50%
}

.-right-3 {
    right: -.75rem
}

.-top-5 {
    top: -1.25rem
}

.left-6 {
    left: 1.5rem
}

.bottom-2 {
    bottom: .5rem
}

.isolate {
    isolation: isolate
}

.z-\[-1\] {
    z-index: -1
}

.z-50 {
    z-index: 50
}

.z-10 {
    z-index: 10
}

.z-30 {
    z-index: 30
}

.z-0 {
    z-index: 0
}

.z-20 {
    z-index: 20
}

.z-40 {
    z-index: 40
}

.-z-10 {
    z-index: -10
}

.z-\[1\] {
    z-index: 1
}

.order-1 {
    order: 1
}

.order-2 {
    order: 2
}

.order-first {
    order: -9999
}

.order-last {
    order: 9999
}

.order-3 {
    order: 3
}

.order-4 {
    order: 4
}

.order-5 {
    order: 5
}

.col-span-6 {
    grid-column: span 6/span 6
}

.col-span-3 {
    grid-column: span 3/span 3
}

.col-span-2 {
    grid-column: span 2/span 2
}

.col-span-5 {
    grid-column: span 5/span 5
}

.col-span-4 {
    grid-column: span 4/span 4
}

.col-span-12 {
    grid-column: span 12/span 12
}

.col-span-1 {
    grid-column: span 1/span 1
}

.row-span-3 {
    grid-row: span 3/span 3
}

.float-left {
    float: left
}

.clear-left {
    clear: left
}

.m-0 {
    margin: 0
}

.m-\[1px\] {
    margin: 1px
}

.m-auto {
    margin: auto
}

.m-1\.5 {
    margin: .375rem
}

.m-1 {
    margin: .25rem
}

.m-2 {
    margin: .5rem
}

.-m-2 {
    margin: -.5rem
}

.m-4 {
    margin: 1rem
}

.-m-4 {
    margin: -1rem
}

.my-4 {
    margin-top: 1rem;
    margin-bottom: 1rem
}

.mx-auto {
    margin-left: auto;
    margin-right: auto
}

.my-8 {
    margin-top: 2rem;
    margin-bottom: 2rem
}

.my-2 {
    margin-top: .5rem;
    margin-bottom: .5rem
}

.my-6 {
    margin-top: 1.5rem;
    margin-bottom: 1.5rem
}

.-mx-1 {
    margin-left: -.25rem;
    margin-right: -.25rem
}

.mx-2 {
    margin-left: .5rem;
    margin-right: .5rem
}

.my-12 {
    margin-top: 3rem;
    margin-bottom: 3rem
}

.mx-\[-24px\] {
    margin-left: -24px;
    margin-right: -24px
}

.mx-6 {
    margin-left: 1.5rem;
    margin-right: 1.5rem
}

.my-1 {
    margin-top: .25rem;
    margin-bottom: .25rem
}

.mx-1 {
    margin-left: .25rem;
    margin-right: .25rem
}

.my-3 {
    margin-top: .75rem;
    margin-bottom: .75rem
}

.-mx-2 {
    margin-left: -.5rem;
    margin-right: -.5rem
}

.mx-4 {
    margin-left: 1rem;
    margin-right: 1rem
}

.-mx-4 {
    margin-left: -1rem;
    margin-right: -1rem
}

.-mx-6 {
    margin-left: -1.5rem;
    margin-right: -1.5rem
}

.-mx-3 {
    margin-left: -.75rem;
    margin-right: -.75rem
}

.-mx-9 {
    margin-left: -2.25rem;
    margin-right: -2.25rem
}

.my-0 {
    margin-top: 0;
    margin-bottom: 0
}

.mx-\[10px\] {
    margin-left: 10px;
    margin-right: 10px
}

.my-2\.5 {
    margin-top: .625rem;
    margin-bottom: .625rem
}

.mx-0 {
    margin-left: 0;
    margin-right: 0
}

.-mx-0\.5 {
    margin-left: -.125rem;
    margin-right: -.125rem
}

.-mx-0 {
    margin-left: 0;
    margin-right: 0
}

.my-5 {
    margin-top: 1.25rem;
    margin-bottom: 1.25rem
}

.mb-1 {
    margin-bottom: .25rem
}

.mt-2\.5 {
    margin-top: .625rem
}

.mt-2 {
    margin-top: .5rem
}

.mt-3 {
    margin-top: .75rem
}

.mb-0 {
    margin-bottom: 0
}

.mt-1 {
    margin-top: .25rem
}

.mb-2 {
    margin-bottom: .5rem
}

.mt-\[4px\] {
    margin-top: 4px
}

.mr-0 {
    margin-right: 0
}

.ml-\[2px\] {
    margin-left: 2px
}

.ml-1 {
    margin-left: .25rem
}

.mb-0\.5 {
    margin-bottom: .125rem
}

.ml-2 {
    margin-left: .5rem
}

.mb-12 {
    margin-bottom: 3rem
}

.mt-4 {
    margin-top: 1rem
}

.mt-6 {
    margin-top: 1.5rem
}

.mr-4 {
    margin-right: 1rem
}

.mb-4 {
    margin-bottom: 1rem
}

.mt-8 {
    margin-top: 2rem
}

.mr-2 {
    margin-right: .5rem
}

.mr-3 {
    margin-right: .75rem
}

.mb-3 {
    margin-bottom: .75rem
}

.ml-auto {
    margin-left: auto
}

.mt-0 {
    margin-top: 0
}

.mb-6 {
    margin-bottom: 1.5rem
}

.mr-1 {
    margin-right: .25rem
}

.ml-4 {
    margin-left: 1rem
}

.ml-10 {
    margin-left: 2.5rem
}

.mb-10 {
    margin-bottom: 2.5rem
}

.mt-10 {
    margin-top: 2.5rem
}

.mt-12 {
    margin-top: 3rem
}

.-mt-1 {
    margin-top: -.25rem
}

.mb-8 {
    margin-bottom: 2rem
}

.mb-24 {
    margin-bottom: 6rem
}

.-ml-px {
    margin-left: -1px
}

.mr-auto {
    margin-right: auto
}

.ml-6 {
    margin-left: 1.5rem
}

.mt-auto {
    margin-top: auto
}

.ml-0 {
    margin-left: 0
}

.-mt-3 {
    margin-top: -.75rem
}

.mr-8 {
    margin-right: 2rem
}

.-mr-1 {
    margin-right: -.25rem
}

.-mt-6 {
    margin-top: -1.5rem
}

.mr-10 {
    margin-right: 2.5rem
}

.-mr-4 {
    margin-right: -1rem
}

.ml-3 {
    margin-left: .75rem
}

.-mt-8 {
    margin-top: -2rem
}

.-mr-2 {
    margin-right: -.5rem
}

.mt-0\.5 {
    margin-top: .125rem
}

.-ml-6 {
    margin-left: -1.5rem
}

.mt-16 {
    margin-top: 4rem
}

.\!mt-0 {
    margin-top: 0!important
}

.mb-5 {
    margin-bottom: 1.25rem
}

.mb-\[18px\] {
    margin-bottom: 18px
}

.mb-\[1\.25rem\] {
    margin-bottom: 1.25rem
}

.mt-\[30px\] {
    margin-top: 30px
}

.mt-5 {
    margin-top: 1.25rem
}

.ml-5 {
    margin-left: 1.25rem
}

.mt-\[3px\] {
    margin-top: 3px
}

.ml-0\.5 {
    margin-left: .125rem
}

.ml-\[5px\] {
    margin-left: 5px
}

.ml-20 {
    margin-left: 5rem
}

.mr-2\.5 {
    margin-right: .625rem
}

.mb-1\.5 {
    margin-bottom: .375rem
}

.ml-7 {
    margin-left: 1.75rem
}

.-mt-2\.5 {
    margin-top: -.625rem
}

.-mt-2 {
    margin-top: -.5rem
}

.-mr-3 {
    margin-right: -.75rem
}

.box-border {
    box-sizing: border-box
}

.box-content {
    box-sizing: initial
}

.block {
    display: block
}

.inline-block {
    display: inline-block
}

.inline {
    display: inline
}

.flex {
    display: flex
}

.inline-flex {
    display: inline-flex
}

.table {
    display: table
}

.table-caption {
    display: table-caption
}

.table-cell {
    display: table-cell
}

.table-row {
    display: table-row
}

.grid {
    display: grid
}

.contents {
    display: contents
}

.hidden {
    display: none
}

.h-\[21px\] {
    height: 21px
}

.h-full {
    height: 100%
}

.h-\[17px\] {
    height: 17px
}

.h-8 {
    height: 2rem
}

.h-64 {
    height: 16rem
}

.h-\[500px\] {
    height: 500px
}

.h-\[80vh\] {
    height: 80vh
}

.h-6 {
    height: 1.5rem
}

.h-5 {
    height: 1.25rem
}

.h-2 {
    height: .5rem
}

.h-4 {
    height: 1rem
}

.h-12 {
    height: 3rem
}

.h-auto {
    height: auto
}

.h-16 {
    height: 4rem
}

.h-9 {
    height: 2.25rem
}

.h-3 {
    height: .75rem
}

.h-10 {
    height: 2.5rem
}

.h-\[36px\] {
    height: 36px
}

.h-screen {
    height: 100vh
}

.h-48 {
    height: 12rem
}

.h-11 {
    height: 2.75rem
}

.h-fit {
    height: -moz-fit-content;
    height: fit-content
}

.h-0\.5 {
    height: .125rem
}

.h-px {
    height: 1px
}

.h-0 {
    height: 0
}

.h-1\/2 {
    height: 50%
}

.h-\[38px\] {
    height: 38px
}

.h-\[100px\] {
    height: 100px
}

.h-\[30px\] {
    height: 30px
}

.h-40 {
    height: 10rem
}

.h-1 {
    height: .25rem
}

.h-7 {
    height: 1.75rem
}

.h-56 {
    height: 14rem
}

.max-h-0 {
    max-height: 0
}

.max-h-\[10rem\] {
    max-height: 10rem
}

.max-h-\[3rem\] {
    max-height: 3rem
}

.max-h-screen {
    max-height: 100vh
}

.max-h-\[90vh\] {
    max-height: 90vh
}

.max-h-\[80vh\] {
    max-height: 80vh
}

.max-h-screen-75 {
    max-height: 75vh
}

.max-h-\[80\%\] {
    max-height: 80%
}

.max-h-full {
    max-height: 100%
}

.max-h-am-75 {
    max-height: 75vh
}

.max-h-40 {
    max-height: 10rem
}

.max-h-96 {
    max-height: 24rem
}

.min-h-\[31px\] {
    min-height: 31px
}

.min-h-\[21px\] {
    min-height: 21px
}

.min-h-\[50vh\] {
    min-height: 50vh
}

.min-h-\[calc\(100vh-1rem\)\] {
    min-height: calc(100vh - 1rem)
}

.min-h-\[80vh\] {
    min-height: 80vh
}

.min-h-\[50\%\] {
    min-height: 50%
}

.min-h-\[72px\] {
    min-height: 72px
}

.min-h-\[20px\] {
    min-height: 20px
}

.min-h-14 {
    min-height: 3.5rem
}

.w-full {
    width: 100%
}

.w-\[60px\] {
    width: 60px
}

.w-\[115px\] {
    width: 115px
}

.w-\[28px\] {
    width: 28px
}

.w-8 {
    width: 2rem
}

.w-3\.5 {
    width: .875rem
}

.w-3 {
    width: .75rem
}

.w-6 {
    width: 1.5rem
}

.w-5 {
    width: 1.25rem
}

.w-2 {
    width: .5rem
}

.w-fit {
    width: -moz-fit-content;
    width: fit-content
}

.w-4 {
    width: 1rem
}

.w-32 {
    width: 8rem
}

.w-1\/2 {
    width: 50%
}

.w-screen {
    width: 100vw
}

.w-\[114px\] {
    width: 114px
}

.w-auto {
    width: auto
}

.w-9 {
    width: 2.25rem
}

.w-10 {
    width: 2.5rem
}

.w-1\/3 {
    width: 33.333333%
}

.w-2\/3 {
    width: 66.666667%
}

.w-20 {
    width: 5rem
}

.w-7\/12 {
    width: 58.333333%
}

.w-5\/12 {
    width: 41.666667%
}

.w-\[480px\] {
    width: 480px
}

.w-80 {
    width: 20rem
}

.w-4\/5 {
    width: 80%
}

.w-24 {
    width: 6rem
}

.w-\[640px\] {
    width: 640px
}

.w-64 {
    width: 16rem
}

.w-40 {
    width: 10rem
}

.w-0 {
    width: 0
}

.w-4\/12 {
    width: 33.333333%
}

.w-8\/12 {
    width: 66.666667%
}

.w-56 {
    width: 14rem
}

.w-44 {
    width: 11rem
}

.w-60 {
    width: 15rem
}

.w-16 {
    width: 4rem
}

.w-1\/4 {
    width: 25%
}

.w-3\/4 {
    width: 75%
}

.w-12 {
    width: 3rem
}

.w-11 {
    width: 2.75rem
}

.w-\[38px\] {
    width: 38px
}

.w-\[100px\] {
    width: 100px
}

.w-10\/12 {
    width: 83.333333%
}

.w-48 {
    width: 12rem
}

.w-2\/5 {
    width: 40%
}

.w-7 {
    width: 1.75rem
}

.min-w-\[120px\] {
    min-width: 120px
}

.min-w-20 {
    min-width: 5rem
}

.min-w-\[theme\(spacing\.16\)\] {
    min-width: 4rem
}

.min-w-\[14rem\] {
    min-width: 14rem
}

.min-w-\[theme\(spacing\.12\)\] {
    min-width: 3rem
}

.min-w-40 {
    min-width: 10rem
}

.min-w-48 {
    min-width: 12rem
}

.min-w-\[90px\] {
    min-width: 90px
}

.min-w-\[100px\] {
    min-width: 100px
}

.min-w-\[30px\] {
    min-width: 30px
}

.max-w-3xl {
    max-width: 48rem
}

.max-w-lg {
    max-width: 32rem
}

.max-w-\[600px\] {
    max-width: 600px
}

.max-w-xl {
    max-width: 36rem
}

.max-w-full {
    max-width: 100%
}

.max-w-md {
    max-width: 28rem
}

.max-w-fit {
    max-width: -moz-fit-content;
    max-width: fit-content
}

.max-w-\[120px\] {
    max-width: 120px
}

.max-w-prose {
    max-width: 80ch
}

.max-w-\[70vh\] {
    max-width: 70vh
}

.max-w-xs {
    max-width: 20rem
}

.max-w-\[theme\(spacing\.20\)\] {
    max-width: 5rem
}

.max-w-4xl {
    max-width: 56rem
}

.max-w-screen-2xl {
    max-width: 1536px
}

.max-w-7xl {
    max-width: 80rem
}

.max-w-2xl {
    max-width: 42rem
}

.max-w-min {
    max-width: -moz-min-content;
    max-width: min-content
}

.max-w-\[320px\] {
    max-width: 320px
}

.max-w-amrel-75 {
    max-width: 75%
}

.flex-none {
    flex: none
}

.flex-1 {
    flex: 1 1 0%
}

.flex-auto {
    flex: 1 1 auto
}

.flex-shrink-0,.shrink-0 {
    flex-shrink: 0
}

.shrink {
    flex-shrink: 1
}

.flex-grow-0 {
    flex-grow: 0
}

.flex-grow,.grow {
    flex-grow: 1
}

.grow-0 {
    flex-grow: 0
}

.table-auto {
    table-layout: auto
}

.origin-\[0\] {
    transform-origin: 0
}

.origin-bottom-left {
    transform-origin: bottom left
}

.origin-top-left {
    transform-origin: top left
}

.origin-top-right {
    transform-origin: top right
}

.-translate-y-6 {
    --tw-translate-y: -1.5rem
}

.-translate-y-6,.translate-x-full {
    transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}

.translate-x-full {
    --tw-translate-x: 100%
}

.translate-x-0 {
    --tw-translate-x: 0px
}

.-translate-y-full,.translate-x-0 {
    transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}

.-translate-y-full {
    --tw-translate-y: -100%
}

.translate-y-0 {
    --tw-translate-y: 0px
}

.translate-x-3,.translate-y-0 {
    transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}

.translate-x-3 {
    --tw-translate-x: 0.75rem
}

.translate-y-1\/2 {
    --tw-translate-y: 50%
}

.translate-x-2,.translate-y-1\/2 {
    transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}

.translate-x-2 {
    --tw-translate-x: 0.5rem
}

.translate-y-full {
    --tw-translate-y: 100%
}

.-translate-x-full,.translate-y-full {
    transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}

.-translate-x-full {
    --tw-translate-x: -100%
}

.-translate-y-8 {
    --tw-translate-y: -2rem
}

.-translate-x-1\/2,.-translate-y-8 {
    transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}

.-translate-x-1\/2 {
    --tw-translate-x: -50%
}

.-translate-x-5 {
    --tw-translate-x: -1.25rem
}

.-translate-x-5,.translate-y-20 {
    transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}

.translate-y-20 {
    --tw-translate-y: 5rem
}

.-translate-x-20 {
    --tw-translate-x: -5rem
}

.-translate-x-20,.-translate-y-20 {
    transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}

.-translate-y-20 {
    --tw-translate-y: -5rem
}

.translate-x-20 {
    --tw-translate-x: 5rem
}

.-translate-x-1\/3,.translate-x-20 {
    transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}

.-translate-x-1\/3 {
    --tw-translate-x: -33.333333%
}

.-translate-y-1\/2 {
    --tw-translate-y: -50%
}

.-translate-x-1,.-translate-y-1\/2 {
    transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}

.-translate-x-1 {
    --tw-translate-x: -0.25rem
}

.translate-y-1 {
    --tw-translate-y: 0.25rem
}

.rotate-45,.translate-y-1 {
    transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}

.rotate-45 {
    --tw-rotate: 45deg
}

.rotate-90 {
    --tw-rotate: 90deg
}

.rotate-180,.rotate-90 {
    transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}

.rotate-180 {
    --tw-rotate: 180deg
}

.rotate-0 {
    --tw-rotate: 0deg
}

.-rotate-45,.rotate-0 {
    transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}

.-rotate-45 {
    --tw-rotate: -45deg
}

.scale-75 {
    --tw-scale-x: .75;
    --tw-scale-y: .75
}

.scale-100,.scale-75 {
    transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}

.scale-100 {
    --tw-scale-x: 1;
    --tw-scale-y: 1
}

.scale-0 {
    --tw-scale-x: 0;
    --tw-scale-y: 0
}

.scale-0,.transform {
    transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}

@keyframes spin {
    to {
        transform: rotate(1turn)
    }
}

.animate-spin {
    animation: spin 1s linear infinite
}

@keyframes bounce {
    0%,to {
        transform: translateY(-25%);
        animation-timing-function: cubic-bezier(.8,0,1,1)
    }

    50% {
        transform: none;
        animation-timing-function: cubic-bezier(0,0,.2,1)
    }
}

.animate-bounce {
    animation: bounce 1s infinite
}

@keyframes ping {
    75%,to {
        transform: scale(2);
        opacity: 0
    }
}

.animate-ping {
    animation: ping 1s cubic-bezier(0,0,.2,1) infinite
}

.cursor-pointer {
    cursor: pointer
}

.cursor-not-allowed {
    cursor: not-allowed
}

.cursor-default {
    cursor: default
}

.select-none {
    -webkit-user-select: none;
    -moz-user-select: none;
    user-select: none
}

.resize-none {
    resize: none
}

.resize-y {
    resize: vertical
}

.resize {
    resize: both
}

.list-none {
    list-style-type: none
}

.list-disc {
    list-style-type: disc
}

.appearance-none {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none
}

.grid-flow-row {
    grid-auto-flow: row
}

.auto-rows-min {
    grid-auto-rows: min-content
}

.grid-cols-6 {
    grid-template-columns: repeat(6,minmax(0,1fr))
}

.grid-cols-5 {
    grid-template-columns: repeat(5,minmax(0,1fr))
}

.grid-cols-2 {
    grid-template-columns: repeat(2,minmax(0,1fr))
}

.grid-cols-1 {
    grid-template-columns: repeat(1,minmax(0,1fr))
}

.grid-cols-7 {
    grid-template-columns: repeat(7,minmax(0,1fr))
}

.grid-cols-4 {
    grid-template-columns: repeat(4,minmax(0,1fr))
}

.grid-cols-12 {
    grid-template-columns: repeat(12,minmax(0,1fr))
}

.grid-cols-3 {
    grid-template-columns: repeat(3,minmax(0,1fr))
}

.flex-row {
    flex-direction: row
}

.flex-row-reverse {
    flex-direction: row-reverse
}

.flex-col {
    flex-direction: column
}

.flex-col-reverse {
    flex-direction: column-reverse
}

.flex-wrap {
    flex-wrap: wrap
}

.flex-nowrap {
    flex-wrap: nowrap
}

.place-items-end {
    place-items: end
}

.place-items-center {
    place-items: center
}

.content-center {
    align-content: center
}

.items-start {
    align-items: flex-start
}

.items-end {
    align-items: flex-end
}

.items-center {
    align-items: center
}

.items-baseline {
    align-items: baseline
}

.items-stretch {
    align-items: stretch
}

.justify-start {
    justify-content: flex-start
}

.justify-end {
    justify-content: flex-end
}

.justify-center {
    justify-content: center
}

.justify-between {
    justify-content: space-between
}

.justify-evenly {
    justify-content: space-evenly
}

.justify-items-end {
    justify-items: end
}

.gap-4 {
    gap: 1rem
}

.gap-2 {
    gap: .5rem
}

.gap-6 {
    gap: 1.5rem
}

.gap-1 {
    gap: .25rem
}

.gap-10 {
    gap: 2.5rem
}

.gap-8 {
    gap: 2rem
}

.gap-3 {
    gap: .75rem
}

.gap-1\.5 {
    gap: .375rem
}

.gap-0\.5 {
    gap: .125rem
}

.gap-0 {
    gap: 0
}

.gap-5 {
    gap: 1.25rem
}

.gap-x-2 {
    -moz-column-gap: .5rem;
    column-gap: .5rem
}

.gap-y-2 {
    row-gap: .5rem
}

.gap-y-6 {
    row-gap: 1.5rem
}

.gap-y-4 {
    row-gap: 1rem
}

.gap-x-4 {
    -moz-column-gap: 1rem;
    column-gap: 1rem
}

.gap-y-0 {
    row-gap: 0
}

.gap-x-1 {
    -moz-column-gap: .25rem;
    column-gap: .25rem
}

.gap-x-6 {
    -moz-column-gap: 1.5rem;
    column-gap: 1.5rem
}

.gap-x-8 {
    -moz-column-gap: 2rem;
    column-gap: 2rem
}

.gap-y-16 {
    row-gap: 4rem
}

.gap-x-7 {
    -moz-column-gap: 1.75rem;
    column-gap: 1.75rem
}

.gap-y-1 {
    row-gap: .25rem
}

.gap-y-8 {
    row-gap: 2rem
}

.gap-x-3 {
    -moz-column-gap: .75rem;
    column-gap: .75rem
}

.space-x-4>:not([hidden])~:not([hidden]) {
    --tw-space-x-reverse: 0;
    margin-right: calc(1rem*var(--tw-space-x-reverse));
    margin-left: calc(1rem*(1 - var(--tw-space-x-reverse)))
}

.space-y-6>:not([hidden])~:not([hidden]) {
    --tw-space-y-reverse: 0;
    margin-top: calc(1.5rem*(1 - var(--tw-space-y-reverse)));
    margin-bottom: calc(1.5rem*var(--tw-space-y-reverse))
}

.space-y-4>:not([hidden])~:not([hidden]) {
    --tw-space-y-reverse: 0;
    margin-top: calc(1rem*(1 - var(--tw-space-y-reverse)));
    margin-bottom: calc(1rem*var(--tw-space-y-reverse))
}

.space-y-2>:not([hidden])~:not([hidden]) {
    --tw-space-y-reverse: 0;
    margin-top: calc(.5rem*(1 - var(--tw-space-y-reverse)));
    margin-bottom: calc(.5rem*var(--tw-space-y-reverse))
}

.space-y-1>:not([hidden])~:not([hidden]) {
    --tw-space-y-reverse: 0;
    margin-top: calc(.25rem*(1 - var(--tw-space-y-reverse)));
    margin-bottom: calc(.25rem*var(--tw-space-y-reverse))
}

.space-y-3>:not([hidden])~:not([hidden]) {
    --tw-space-y-reverse: 0;
    margin-top: calc(.75rem*(1 - var(--tw-space-y-reverse)));
    margin-bottom: calc(.75rem*var(--tw-space-y-reverse))
}

.space-x-0\.5>:not([hidden])~:not([hidden]) {
    --tw-space-x-reverse: 0;
    margin-right: calc(.125rem*var(--tw-space-x-reverse));
    margin-left: calc(.125rem*(1 - var(--tw-space-x-reverse)))
}

.space-x-0>:not([hidden])~:not([hidden]) {
    --tw-space-x-reverse: 0;
    margin-right: calc(0px*var(--tw-space-x-reverse));
    margin-left: calc(0px*(1 - var(--tw-space-x-reverse)))
}

.space-y-5>:not([hidden])~:not([hidden]) {
    --tw-space-y-reverse: 0;
    margin-top: calc(1.25rem*(1 - var(--tw-space-y-reverse)));
    margin-bottom: calc(1.25rem*var(--tw-space-y-reverse))
}

.self-end {
    align-self: flex-end
}

.self-center {
    align-self: center
}

.self-stretch {
    align-self: stretch
}

.overflow-auto {
    overflow: auto
}

.overflow-hidden {
    overflow: hidden
}

.overflow-x-auto {
    overflow-x: auto
}

.overflow-y-auto {
    overflow-y: auto
}

.overflow-x-hidden {
    overflow-x: hidden
}

.overflow-y-hidden {
    overflow-y: hidden
}

.overflow-x-scroll {
    overflow-x: scroll
}

.overscroll-y-contain {
    overscroll-behavior-y: contain
}

.truncate {
    overflow: hidden;
    text-overflow: ellipsis
}

.truncate,.whitespace-nowrap {
    white-space: nowrap
}

.whitespace-pre-line {
    white-space: pre-line
}

.break-words {
    overflow-wrap: break-word
}

.break-all {
    word-break: break-all
}

.rounded-none {
    border-radius: 0
}

.rounded {
    border-radius: .25rem
}

.rounded-md {
    border-radius: .375rem
}

.rounded-lg {
    border-radius: .5rem
}

.rounded-full {
    border-radius: 9999px
}

.rounded-sm {
    border-radius: .125rem
}

.\!rounded-none {
    border-radius: 0!important
}

.rounded-xl {
    border-radius: .75rem
}

.rounded-l-none {
    border-top-left-radius: 0;
    border-bottom-left-radius: 0
}

.rounded-l-md {
    border-top-left-radius: .375rem;
    border-bottom-left-radius: .375rem
}

.rounded-r-md {
    border-top-right-radius: .375rem;
    border-bottom-right-radius: .375rem
}

.rounded-l {
    border-top-left-radius: .25rem;
    border-bottom-left-radius: .25rem
}

.rounded-r {
    border-top-right-radius: .25rem;
    border-bottom-right-radius: .25rem
}

.rounded-b-lg {
    border-bottom-right-radius: .5rem;
    border-bottom-left-radius: .5rem
}

.border-0 {
    border-width: 0
}

.border,.border-\[1px\] {
    border-width: 1px
}

.border-2 {
    border-width: 2px
}

.border-y-2 {
    border-top-width: 2px;
    border-bottom-width: 2px
}

.border-y {
    border-top-width: 1px
}

.border-b,.border-y {
    border-bottom-width: 1px
}

.border-t-2 {
    border-top-width: 2px
}

.border-b-2 {
    border-bottom-width: 2px
}

.border-l-4 {
    border-left-width: 4px
}

.border-t {
    border-top-width: 1px
}

.border-r-0 {
    border-right-width: 0
}

.border-l-0 {
    border-left-width: 0
}

.border-l-2 {
    border-left-width: 2px
}

.border-l {
    border-left-width: 1px
}

.border-b-0 {
    border-bottom-width: 0
}

.border-solid {
    border-style: solid
}

.border-dashed {
    border-style: dashed
}

.border-gray-300 {
    --tw-border-opacity: 1;
    border-color: rgb(209 213 219/var(--tw-border-opacity))
}

.border-gray-400 {
    --tw-border-opacity: 1;
    border-color: rgb(156 163 175/var(--tw-border-opacity))
}

.border-green-700 {
    --tw-border-opacity: 1;
    border-color: rgb(21 128 61/var(--tw-border-opacity))
}

.border-white {
    --tw-border-opacity: 1;
    border-color: rgb(255 255 255/var(--tw-border-opacity))
}

.border-transparent {
    border-color: #0000
}

.border-stone-300 {
    --tw-border-opacity: 1;
    border-color: rgb(214 211 209/var(--tw-border-opacity))
}

.border-secondary {
    --tw-border-opacity: 1;
    border-color: rgb(52 181 208/var(--tw-border-opacity))
}

.border-container {
    --tw-border-opacity: 1;
    border-color: rgb(214 211 209/var(--tw-border-opacity))
}

.border-container-lighter {
    --tw-border-opacity: 1;
    border-color: rgb(245 245 244/var(--tw-border-opacity))
}

.border-gray-200 {
    --tw-border-opacity: 1;
    border-color: rgb(229 231 235/var(--tw-border-opacity))
}

.border-primary {
    --tw-border-opacity: 1;
    border-color: rgb(0 0 0/var(--tw-border-opacity))
}

.border-red-700 {
    --tw-border-opacity: 1;
    border-color: rgb(185 28 28/var(--tw-border-opacity))
}

.border-green {
    --tw-border-opacity: 1;
    border-color: rgb(21 128 61/var(--tw-border-opacity))
}

.border-red {
    --tw-border-opacity: 1;
    border-color: rgb(220 38 38/var(--tw-border-opacity))
}

.border-current {
    border-color: currentColor
}

.border-stone-400 {
    --tw-border-opacity: 1;
    border-color: rgb(168 162 158/var(--tw-border-opacity))
}

.border-red-500 {
    --tw-border-opacity: 1;
    border-color: rgb(239 68 68/var(--tw-border-opacity))
}

.border-blue-400 {
    --tw-border-opacity: 1;
    border-color: rgb(96 165 250/var(--tw-border-opacity))
}

.border-container-darker {
    --tw-border-opacity: 1;
    border-color: rgb(168 162 158/var(--tw-border-opacity))
}

.border-blue-500 {
    --tw-border-opacity: 1;
    border-color: rgb(59 130 246/var(--tw-border-opacity))
}

.border-green-400 {
    --tw-border-opacity: 1;
    border-color: rgb(74 222 128/var(--tw-border-opacity))
}

.border-stone-100 {
    --tw-border-opacity: 1;
    border-color: rgb(245 245 244/var(--tw-border-opacity))
}

.border-black {
    --tw-border-opacity: 1;
    border-color: rgb(0 0 0/var(--tw-border-opacity))
}

.border-gray-600 {
    --tw-border-opacity: 1;
    border-color: rgb(75 85 99/var(--tw-border-opacity))
}

.border-red-600 {
    --tw-border-opacity: 1;
    border-color: rgb(220 38 38/var(--tw-border-opacity))
}

.border-amrel-grey-border {
    --tw-border-opacity: 1;
    border-color: rgb(233 246 255/var(--tw-border-opacity))
}

.border-amrel-grey-border-light {
    --tw-border-opacity: 1;
    border-color: rgb(232 232 232/var(--tw-border-opacity))
}

.border-amrel-blue-border {
    --tw-border-opacity: 1;
    border-color: rgb(57 120 189/var(--tw-border-opacity))
}

.border-amber-600 {
    --tw-border-opacity: 1;
    border-color: rgb(217 119 6/var(--tw-border-opacity))
}

.border-yellow-400 {
    --tw-border-opacity: 1;
    border-color: rgb(251 191 36/var(--tw-border-opacity))
}

.bg-transparent {
    background-color: initial
}

.bg-gray-200 {
    --tw-bg-opacity: 1;
    background-color: rgb(229 231 235/var(--tw-bg-opacity))
}

.bg-gray-100 {
    --tw-bg-opacity: 1;
    background-color: rgb(243 244 246/var(--tw-bg-opacity))
}

.bg-container {
    --tw-bg-opacity: 1;
    background-color: rgb(255 255 255/var(--tw-bg-opacity))
}

.bg-container-lighter {
    --tw-bg-opacity: 1;
    background-color: rgb(250 250 249/var(--tw-bg-opacity))
}

.bg-primary {
    --tw-bg-opacity: 1;
    background-color: rgb(0 0 0/var(--tw-bg-opacity))
}

.bg-container-darker {
    --tw-bg-opacity: 1;
    background-color: rgb(245 245 244/var(--tw-bg-opacity))
}

.bg-white {
    --tw-bg-opacity: 1;
    background-color: rgb(255 255 255/var(--tw-bg-opacity))
}

.bg-black {
    --tw-bg-opacity: 1;
    background-color: rgb(0 0 0/var(--tw-bg-opacity))
}

.bg-white\/60 {
    background-color: #fff9
}

.bg-white\/70 {
    background-color: #ffffffb3
}

.bg-secondary {
    --tw-bg-opacity: 1;
    background-color: rgb(52 181 208/var(--tw-bg-opacity))
}

.bg-red-500 {
    --tw-bg-opacity: 1;
    background-color: rgb(239 68 68/var(--tw-bg-opacity))
}

.bg-stone-100 {
    --tw-bg-opacity: 1;
    background-color: rgb(245 245 244/var(--tw-bg-opacity))
}

.bg-primary-lighter {
    --tw-bg-opacity: 1;
    background-color: rgb(68 64 60/var(--tw-bg-opacity))
}

.bg-slate-100 {
    --tw-bg-opacity: 1;
    background-color: rgb(241 245 249/var(--tw-bg-opacity))
}

.bg-blue-600 {
    --tw-bg-opacity: 1;
    background-color: rgb(37 99 235/var(--tw-bg-opacity))
}

.bg-gray-900 {
    --tw-bg-opacity: 1;
    background-color: rgb(17 24 39/var(--tw-bg-opacity))
}

.bg-white\/25 {
    background-color: #ffffff40
}

.bg-yellow-500 {
    --tw-bg-opacity: 1;
    background-color: rgb(245 158 11/var(--tw-bg-opacity))
}

.bg-blue-50 {
    --tw-bg-opacity: 1;
    background-color: rgb(239 246 255/var(--tw-bg-opacity))
}

.bg-red-50 {
    --tw-bg-opacity: 1;
    background-color: rgb(254 242 242/var(--tw-bg-opacity))
}

.bg-green-500 {
    --tw-bg-opacity: 1;
    background-color: rgb(16 185 129/var(--tw-bg-opacity))
}

.bg-container-lighter\/95 {
    background-color: #fafaf9f2
}

.bg-red-100 {
    --tw-bg-opacity: 1;
    background-color: rgb(254 226 226/var(--tw-bg-opacity))
}

.bg-amrel-red-bg {
    --tw-bg-opacity: 1;
    background-color: rgb(235 87 87/var(--tw-bg-opacity))
}

.bg-amrel-grey-border {
    --tw-bg-opacity: 1;
    background-color: rgb(233 246 255/var(--tw-bg-opacity))
}

.bg-amrel-yellow {
    --tw-bg-opacity: 1;
    background-color: rgb(255 250 229/var(--tw-bg-opacity))
}

.bg-amrel-blue-bg {
    --tw-bg-opacity: 1;
    background-color: rgb(225 241 248/var(--tw-bg-opacity))
}

.bg-gray-500 {
    --tw-bg-opacity: 1;
    background-color: rgb(107 114 128/var(--tw-bg-opacity))
}

.bg-green-600 {
    --tw-bg-opacity: 1;
    background-color: rgb(5 150 105/var(--tw-bg-opacity))
}

.bg-blue-500 {
    --tw-bg-opacity: 1;
    background-color: rgb(59 130 246/var(--tw-bg-opacity))
}

.bg-yellow-100 {
    --tw-bg-opacity: 1;
    background-color: rgb(254 243 199/var(--tw-bg-opacity))
}

.bg-blue-100 {
    --tw-bg-opacity: 1;
    background-color: rgb(219 234 254/var(--tw-bg-opacity))
}

.bg-gray-50 {
    --tw-bg-opacity: 1;
    background-color: rgb(249 250 251/var(--tw-bg-opacity))
}

.bg-opacity-25 {
    --tw-bg-opacity: 0.25
}

.bg-opacity-100 {
    --tw-bg-opacity: 1
}

.bg-opacity-50 {
    --tw-bg-opacity: 0.5
}

.bg-opacity-90 {
    --tw-bg-opacity: 0.9
}

.bg-opacity-75 {
    --tw-bg-opacity: 0.75
}

.bg-opacity-95 {
    --tw-bg-opacity: 0.95
}

.bg-gradient-to-b {
    background-image: linear-gradient(to bottom,var(--tw-gradient-stops))
}

.bg-gradient-to-l {
    background-image: linear-gradient(to left,var(--tw-gradient-stops))
}

.bg-gradient-to-r {
    background-image: linear-gradient(to right,var(--tw-gradient-stops))
}

.bg-none {
    background-image: none
}

.from-white {
    --tw-gradient-from: #fff;
    --tw-gradient-to: #fff0;
    --tw-gradient-stops: var(--tw-gradient-from),var(--tw-gradient-to)
}

.from-\[\#f0efeb\] {
    --tw-gradient-from: #f0efeb;
    --tw-gradient-to: #f0efeb00;
    --tw-gradient-stops: var(--tw-gradient-from),var(--tw-gradient-to)
}

.via-\[\#FFFFFF\] {
    --tw-gradient-to: #fff0;
    --tw-gradient-stops: var(--tw-gradient-from),#fff,var(--tw-gradient-to)
}

.via-\[\#f0efeb\] {
    --tw-gradient-to: #f0efeb00;
    --tw-gradient-stops: var(--tw-gradient-from),#f0efeb,var(--tw-gradient-to)
}

.to-gray-300 {
    --tw-gradient-to: #d1d5db
}

.to-transparent {
    --tw-gradient-to: #0000
}

.fill-current {
    fill: currentColor
}

.fill-secondary {
    fill: #34b5d0
}

.fill-black\/20 {
    fill: #0003
}

.fill-amrel-grey-blue {
    fill: #cbd5e0
}

.fill-amrel-star-yellow {
    fill: #f8ce0b
}

.stroke-stone-400 {
    stroke: #a8a29e
}

.stroke-current {
    stroke: currentColor
}

.stroke-white\/75 {
    stroke: #ffffffbf
}

.stroke-secondary {
    stroke: #34b5d0
}

.stroke-1 {
    stroke-width: 1
}

.stroke-2 {
    stroke-width: 2
}

.object-contain {
    -o-object-fit: contain;
    object-fit: contain
}

.object-cover {
    -o-object-fit: cover;
    object-fit: cover
}

.object-center {
    -o-object-position: center;
    object-position: center
}

.p-0 {
    padding: 0
}

.p-4 {
    padding: 1rem
}

.p-2 {
    padding: .5rem
}

.p-10 {
    padding: 2.5rem
}

.p-6 {
    padding: 1.5rem
}

.p-3 {
    padding: .75rem
}

.p-1 {
    padding: .25rem
}

.p-8 {
    padding: 2rem
}

.p-5 {
    padding: 1.25rem
}

.p-1\.5 {
    padding: .375rem
}

.p-2\.5 {
    padding: .625rem
}

.p-\[5px\] {
    padding: 5px
}

.py-1 {
    padding-top: .25rem;
    padding-bottom: .25rem
}

.py-6 {
    padding-top: 1.5rem;
    padding-bottom: 1.5rem
}

.px-3 {
    padding-left: .75rem;
    padding-right: .75rem
}

.py-4 {
    padding-top: 1rem;
    padding-bottom: 1rem
}

.py-2 {
    padding-top: .5rem;
    padding-bottom: .5rem
}

.px-2 {
    padding-left: .5rem;
    padding-right: .5rem
}

.px-6 {
    padding-left: 1.5rem;
    padding-right: 1.5rem
}

.px-0 {
    padding-left: 0;
    padding-right: 0
}

.py-3 {
    padding-top: .75rem;
    padding-bottom: .75rem
}

.py-20 {
    padding-top: 5rem;
    padding-bottom: 5rem
}

.py-8 {
    padding-top: 2rem;
    padding-bottom: 2rem
}

.py-10 {
    padding-top: 2.5rem;
    padding-bottom: 2.5rem
}

.px-1 {
    padding-left: .25rem;
    padding-right: .25rem
}

.px-10 {
    padding-left: 2.5rem;
    padding-right: 2.5rem
}

.px-4 {
    padding-left: 1rem;
    padding-right: 1rem
}

.px-8 {
    padding-left: 2rem;
    padding-right: 2rem
}

.py-0 {
    padding-top: 0;
    padding-bottom: 0
}

.px-12 {
    padding-left: 3rem;
    padding-right: 3rem
}

.px-5 {
    padding-left: 1.25rem;
    padding-right: 1.25rem
}

.py-16 {
    padding-top: 4rem;
    padding-bottom: 4rem
}

.px-0\.5 {
    padding-left: .125rem;
    padding-right: .125rem
}

.px-\[5px\] {
    padding-left: 5px;
    padding-right: 5px
}

.py-5 {
    padding-top: 1.25rem;
    padding-bottom: 1.25rem
}

.py-\[15px\] {
    padding-top: 15px;
    padding-bottom: 15px
}

.py-\[5px\] {
    padding-top: 5px;
    padding-bottom: 5px
}

.px-\[15px\] {
    padding-left: 15px;
    padding-right: 15px
}

.pl-0 {
    padding-left: 0
}

.pb-0 {
    padding-bottom: 0
}

.pr-4 {
    padding-right: 1rem
}

.pb-8 {
    padding-bottom: 2rem
}

.pb-2 {
    padding-bottom: .5rem
}

.pb-3 {
    padding-bottom: .75rem
}

.pt-6 {
    padding-top: 1.5rem
}

.pl-2 {
    padding-left: .5rem
}

.pt-1 {
    padding-top: .25rem
}

.pb-6 {
    padding-bottom: 1.5rem
}

.pb-4 {
    padding-bottom: 1rem
}

.pb-1 {
    padding-bottom: .25rem
}

.pl-1 {
    padding-left: .25rem
}

.pr-1 {
    padding-right: .25rem
}

.pt-4 {
    padding-top: 1rem
}

.pb-12 {
    padding-bottom: 3rem
}

.pt-8 {
    padding-top: 2rem
}

.pt-2 {
    padding-top: .5rem
}

.pt-3 {
    padding-top: .75rem
}

.pr-3 {
    padding-right: .75rem
}

.pl-6 {
    padding-left: 1.5rem
}

.pr-2 {
    padding-right: .5rem
}

.pb-16 {
    padding-bottom: 4rem
}

.pl-4 {
    padding-left: 1rem
}

.pt-10 {
    padding-top: 2.5rem
}

.pr-8 {
    padding-right: 2rem
}

.pb-1\.5 {
    padding-bottom: .375rem
}

.pr-6 {
    padding-right: 1.5rem
}

.pt-5 {
    padding-top: 1.25rem
}

.pt-16 {
    padding-top: 4rem
}

.pl-5 {
    padding-left: 1.25rem
}

.pl-3 {
    padding-left: .75rem
}

.pb-10 {
    padding-bottom: 2.5rem
}

.pb-20 {
    padding-bottom: 5rem
}

.pt-0 {
    padding-top: 0
}

.pt-2\.5 {
    padding-top: .625rem
}

.pl-8 {
    padding-left: 2rem
}

.pr-10 {
    padding-right: 2.5rem
}

.text-left {
    text-align: left
}

.text-center {
    text-align: center
}

.text-right {
    text-align: right
}

.text-justify {
    text-align: justify
}

.text-start {
    text-align: start
}

.align-top {
    vertical-align: top
}

.align-middle {
    vertical-align: middle
}

.align-bottom {
    vertical-align: bottom
}

.text-xs {
    font-size: .75rem;
    letter-spacing: .05em
}

.text-base {
    font-size: 1rem;
    line-height: 1.5rem
}

.text-\[12px\] {
    font-size: 12px
}

.text-2xl {
    font-size: 1.5rem;
    line-height: 2rem
}

.text-sm {
    font-size: .875rem;
    letter-spacing: .025em
}

.text-3xl {
    font-size: 2rem;
    line-height: 2.5rem
}

.text-xl {
    font-size: 1.25rem
}

.text-lg,.text-xl {
    line-height: 1.75rem
}

.text-lg {
    font-size: 1.125rem
}

.text-4xl {
    font-size: 2.5rem;
    line-height: 3rem
}

.text-\[14px\] {
    font-size: 14px
}

.text-\[90px\] {
    font-size: 90px
}

.text-\[30px\] {
    font-size: 30px
}

.font-bold {
    font-weight: 700
}

.font-thin {
    font-weight: 100
}

.font-semibold {
    font-weight: 600
}

.font-medium {
    font-weight: 500
}

.font-normal {
    font-weight: 400
}

.font-extrabold {
    font-weight: 800
}

.uppercase {
    text-transform: uppercase
}

.lowercase {
    text-transform: lowercase
}

.italic {
    font-style: italic
}

.not-italic {
    font-style: normal
}

.tabular-nums {
    --tw-numeric-spacing: tabular-nums;
    font-variant-numeric: var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)
}

.leading-5 {
    line-height: 1.25rem
}

.leading-6 {
    line-height: 1.5rem
}

.leading-relaxed {
    line-height: 1.625
}

.leading-7 {
    line-height: 1.75rem
}

.leading-none {
    line-height: 1
}

.leading-loose {
    line-height: 2
}

.leading-normal {
    line-height: 1.5
}

.leading-tight {
    line-height: 1.25
}

.leading-4 {
    line-height: 1rem
}

.leading-9 {
    line-height: 2.25rem
}

.leading-\[100px\] {
    line-height: 100px
}

.leading-8 {
    line-height: 2rem
}

.tracking-widest {
    letter-spacing: .1em
}

.tracking-wide {
    letter-spacing: .025em
}

.tracking-wider {
    letter-spacing: .05em
}

.tracking-tight {
    letter-spacing: -.025em
}

.text-blue-600 {
    --tw-text-opacity: 1;
    color: rgb(37 99 235/var(--tw-text-opacity))
}

.text-inherit {
    color: inherit
}

.text-red-500 {
    --tw-text-opacity: 1;
    color: rgb(239 68 68/var(--tw-text-opacity))
}

.text-green-500 {
    --tw-text-opacity: 1;
    color: rgb(34 197 94/var(--tw-text-opacity))
}

.text-gray-600 {
    --tw-text-opacity: 1;
    color: rgb(75 85 99/var(--tw-text-opacity))
}

.text-gray-500 {
    --tw-text-opacity: 1;
    color: rgb(107 114 128/var(--tw-text-opacity))
}

.text-yellow-400 {
    --tw-text-opacity: 1;
    color: rgb(251 191 36/var(--tw-text-opacity))
}

.text-gray-400 {
    --tw-text-opacity: 1;
    color: rgb(156 163 175/var(--tw-text-opacity))
}

.text-white {
    --tw-text-opacity: 1;
    color: rgb(255 255 255/var(--tw-text-opacity))
}

.text-primary-lighter {
    --tw-text-opacity: 1;
    color: rgb(41 37 36/var(--tw-text-opacity))
}

.text-primary {
    --tw-text-opacity: 1;
    color: rgb(28 25 23/var(--tw-text-opacity))
}

.text-red {
    --tw-text-opacity: 1;
    color: rgb(220 38 38/var(--tw-text-opacity))
}

.text-gray-900 {
    --tw-text-opacity: 1;
    color: rgb(17 24 39/var(--tw-text-opacity))
}

.text-red-700 {
    --tw-text-opacity: 1;
    color: rgb(185 28 28/var(--tw-text-opacity))
}

.text-\[var\(--message\)\] {
    color: var(--message)
}

.text-secondary,.text-stone-500 {
    --tw-text-opacity: 1;
    color: rgb(120 113 108/var(--tw-text-opacity))
}

.text-gray-700 {
    --tw-text-opacity: 1;
    color: rgb(55 65 81/var(--tw-text-opacity))
}

.text-black {
    --tw-text-opacity: 1;
    color: rgb(0 0 0/var(--tw-text-opacity))
}

.text-green {
    --tw-text-opacity: 1;
    color: rgb(21 128 61/var(--tw-text-opacity))
}

.text-gray-300 {
    --tw-text-opacity: 1;
    color: rgb(209 213 219/var(--tw-text-opacity))
}

.text-gray-800 {
    --tw-text-opacity: 1;
    color: rgb(31 41 55/var(--tw-text-opacity))
}

.text-secondary-darker {
    --tw-text-opacity: 1;
    color: rgb(87 83 78/var(--tw-text-opacity))
}

.text-red-600 {
    --tw-text-opacity: 1;
    color: rgb(220 38 38/var(--tw-text-opacity))
}

.text-slate-500 {
    --tw-text-opacity: 1;
    color: rgb(100 116 139/var(--tw-text-opacity))
}

.text-stone-600 {
    --tw-text-opacity: 1;
    color: rgb(87 83 78/var(--tw-text-opacity))
}

.text-slate-800 {
    --tw-text-opacity: 1;
    color: rgb(30 41 59/var(--tw-text-opacity))
}

.text-slate-300 {
    --tw-text-opacity: 1;
    color: rgb(203 213 225/var(--tw-text-opacity))
}

.text-slate-600 {
    --tw-text-opacity: 1;
    color: rgb(71 85 105/var(--tw-text-opacity))
}

.text-blue-700 {
    --tw-text-opacity: 1;
    color: rgb(29 78 216/var(--tw-text-opacity))
}

.text-orange-400 {
    --tw-text-opacity: 1;
    color: rgb(251 146 60/var(--tw-text-opacity))
}

.text-gray-200 {
    --tw-text-opacity: 1;
    color: rgb(229 231 235/var(--tw-text-opacity))
}

.text-blue-900 {
    --tw-text-opacity: 1;
    color: rgb(30 58 138/var(--tw-text-opacity))
}

.text-stone-800 {
    --tw-text-opacity: 1;
    color: rgb(41 37 36/var(--tw-text-opacity))
}

.text-stone-200 {
    --tw-text-opacity: 1;
    color: rgb(231 229 228/var(--tw-text-opacity))
}

.text-red-800 {
    --tw-text-opacity: 1;
    color: rgb(153 27 27/var(--tw-text-opacity))
}

.text-green-700 {
    --tw-text-opacity: 1;
    color: rgb(21 128 61/var(--tw-text-opacity))
}

.text-amrel-grey-blue {
    --tw-text-opacity: 1;
    color: rgb(203 213 224/var(--tw-text-opacity))
}

.text-amrel-star-yellow {
    --tw-text-opacity: 1;
    color: rgb(248 206 11/var(--tw-text-opacity))
}

.text-amrel-blue-text {
    --tw-text-opacity: 1;
    color: rgb(109 136 176/var(--tw-text-opacity))
}

.text-purple-700 {
    --tw-text-opacity: 1;
    color: rgb(109 40 217/var(--tw-text-opacity))
}

.text-yellow-600 {
    --tw-text-opacity: 1;
    color: rgb(217 119 6/var(--tw-text-opacity))
}

.underline {
    text-decoration-line: underline
}

.line-through {
    text-decoration-line: line-through
}

.no-underline {
    text-decoration-line: none
}

.opacity-0 {
    opacity: 0
}

.opacity-25 {
    opacity: .25
}

.opacity-100 {
    opacity: 1
}

.opacity-75 {
    opacity: .75
}

.opacity-50 {
    opacity: .5
}

.opacity-5 {
    opacity: .05
}

.opacity-80 {
    opacity: .8
}

.mix-blend-darken {
    mix-blend-mode: darken
}

.shadow-none {
    --tw-shadow: 0 0 #0000;
    --tw-shadow-colored: 0 0 #0000
}

.shadow,.shadow-none {
    box-shadow: var(--tw-ring-offset-shadow,0 0 #0000),var(--tw-ring-shadow,0 0 #0000),var(--tw-shadow)
}

.shadow {
    --tw-shadow: 0 1px 3px 0 #0000001a,0 1px 2px -1px #0000001a;
    --tw-shadow-colored: 0 1px 3px 0 var(--tw-shadow-color),0 1px 2px -1px var(--tw-shadow-color)
}

.shadow-xl {
    --tw-shadow: 0 20px 25px -5px #0000001a,0 8px 10px -6px #0000001a;
    --tw-shadow-colored: 0 20px 25px -5px var(--tw-shadow-color),0 8px 10px -6px var(--tw-shadow-color)
}

.shadow-2xl,.shadow-xl {
    box-shadow: var(--tw-ring-offset-shadow,0 0 #0000),var(--tw-ring-shadow,0 0 #0000),var(--tw-shadow)
}

.shadow-2xl {
    --tw-shadow: 0 25px 50px -12px #00000040;
    --tw-shadow-colored: 0 25px 50px -12px var(--tw-shadow-color)
}

.shadow-sm {
    --tw-shadow: 0 1px 2px 0 #0000000d;
    --tw-shadow-colored: 0 1px 2px 0 var(--tw-shadow-color)
}

.shadow-lg,.shadow-sm {
    box-shadow: var(--tw-ring-offset-shadow,0 0 #0000),var(--tw-ring-shadow,0 0 #0000),var(--tw-shadow)
}

.shadow-lg {
    --tw-shadow: 0 10px 15px -3px #0000001a,0 4px 6px -4px #0000001a;
    --tw-shadow-colored: 0 10px 15px -3px var(--tw-shadow-color),0 4px 6px -4px var(--tw-shadow-color)
}

.shadow-md {
    --tw-shadow: 0 4px 6px -1px #0000001a,0 2px 4px -2px #0000001a;
    --tw-shadow-colored: 0 4px 6px -1px var(--tw-shadow-color),0 2px 4px -2px var(--tw-shadow-color)
}

.shadow-\[0_2px_4px_0_rgba\(16\2c 31\2c 48\2c 0\.2\)\],.shadow-md {
    box-shadow: var(--tw-ring-offset-shadow,0 0 #0000),var(--tw-ring-shadow,0 0 #0000),var(--tw-shadow)
}

.shadow-\[0_2px_4px_0_rgba\(16\2c 31\2c 48\2c 0\.2\)\] {
    --tw-shadow: 0 2px 4px 0 #101f3033;
    --tw-shadow-colored: 0 2px 4px 0 var(--tw-shadow-color)
}

.outline-none {
    outline: 2px solid #0000;
    outline-offset: 2px
}

.outline {
    outline-style: solid
}

.outline-2 {
    outline-width: 2px
}

.outline-offset-2 {
    outline-offset: 2px
}

.outline-amber-600 {
    outline-color: #d97706
}

.ring {
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(3px + var(--tw-ring-offset-width)) var(--tw-ring-color)
}

.ring,.ring-4 {
    box-shadow: var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow,0 0 #0000)
}

.ring-4 {
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(4px + var(--tw-ring-offset-width)) var(--tw-ring-color)
}

.ring-blue-500\/50 {
    --tw-ring-color: #3b82f680
}

.ring-blue-500 {
    --tw-ring-opacity: 1;
    --tw-ring-color: rgb(59 130 246/var(--tw-ring-opacity))
}

.ring-red-500 {
    --tw-ring-opacity: 1;
    --tw-ring-color: rgb(239 68 68/var(--tw-ring-opacity))
}

.ring-primary {
    --tw-ring-opacity: 1;
    --tw-ring-color: rgb(0 0 0/var(--tw-ring-opacity))
}

.ring-primary\/50 {
    --tw-ring-color: #00000080
}

.ring-primary\/75 {
    --tw-ring-color: #000000bf
}

.ring-current {
    --tw-ring-color: currentColor
}

.ring-white {
    --tw-ring-opacity: 1;
    --tw-ring-color: rgb(255 255 255/var(--tw-ring-opacity))
}

.ring-opacity-50 {
    --tw-ring-opacity: 0.5
}

.ring-offset-2 {
    --tw-ring-offset-width: 2px
}

.blur {
    --tw-blur: blur(8px)
}

.blur,.filter {
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}

.\!filter {
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)!important
}

.backdrop-blur-sm {
    --tw-backdrop-blur: blur(4px);
    -webkit-backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}

.transition-all {
    transition-property: all;
    transition-timing-function: cubic-bezier(.4,0,.2,1);
    transition-duration: .15s
}

.transition-colors {
    transition-property: color,background-color,border-color,text-decoration-color,fill,stroke;
    transition-timing-function: cubic-bezier(.4,0,.2,1);
    transition-duration: .15s
}

.transition {
    transition-property: color,background-color,border-color,text-decoration-color,fill,stroke,opacity,box-shadow,transform,filter,-webkit-backdrop-filter;
    transition-property: color,background-color,border-color,text-decoration-color,fill,stroke,opacity,box-shadow,transform,filter,backdrop-filter;
    transition-property: color,background-color,border-color,text-decoration-color,fill,stroke,opacity,box-shadow,transform,filter,backdrop-filter,-webkit-backdrop-filter;
    transition-timing-function: cubic-bezier(.4,0,.2,1);
    transition-duration: .15s
}

.transition-transform {
    transition-property: transform;
    transition-timing-function: cubic-bezier(.4,0,.2,1);
    transition-duration: .15s
}

.transition-none {
    transition-property: none
}

.duration-200 {
    transition-duration: .2s
}

.duration-150 {
    transition-duration: .15s
}

.duration-700 {
    transition-duration: .7s
}

.duration-500 {
    transition-duration: .5s
}

.duration-300 {
    transition-duration: .3s
}

.ease-in-out {
    transition-timing-function: cubic-bezier(.4,0,.2,1)
}

.ease-out {
    transition-timing-function: cubic-bezier(0,0,.2,1)
}

.ease-in {
    transition-timing-function: cubic-bezier(.4,0,1,1)
}

.line-clamp-\[7\] {
    -webkit-line-clamp: 7
}

.line-clamp-2,.line-clamp-\[7\] {
    overflow: hidden;
    display: -webkit-box;
    -webkit-box-orient: vertical
}

.line-clamp-2 {
    -webkit-line-clamp: 2
}

.line-clamp-5 {
    overflow: hidden;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 5
}

.\[--message\: theme\(colors\.green\.700\)\] {
    --message:#047857
}

.\[--message\: theme\(colors\.red\.600\)\] {
    --message:#dc2626
}

.\[wire\:select\] {
    wire: select
}

.\[wire\:model\] {
    wire: model
}

.table-row-items>div.table-row-item {
    --tw-bg-opacity: 1;
    background-color: rgb(245 245 244/var(--tw-bg-opacity))
}

.table-row-items>div.table-row-item:nth-child(odd) {
    --tw-bg-opacity: 1;
    background-color: rgb(250 250 249/var(--tw-bg-opacity))
}

.account-nav ul li a,.account-nav ul li strong {
    display: flex;
    justify-content: space-between;
    padding-top: .25rem;
    padding-bottom: .25rem;
    --tw-text-opacity: 1;
    color: rgb(120 113 108/var(--tw-text-opacity))
}

.account-nav ul li a:hover,.account-nav ul li strong {
    --tw-text-opacity: 1;
    color: rgb(0 0 0/var(--tw-text-opacity))
}

.account-nav ul li strong {
    font-weight: 400;
    text-decoration-line: underline
}

.actions-toolbar {
    margin-top: 1.5rem;
    display: flex;
    flex-direction: row-reverse;
    align-items: center;
    justify-content: space-between;
    border-top-width: 1px;
    --tw-border-opacity: 1;
    border-color: rgb(168 162 158/var(--tw-border-opacity));
    padding-top: 1rem
}

.actions-toolbar a.back {
    --tw-text-opacity: 1;
    color: rgb(87 83 78/var(--tw-text-opacity));
    text-decoration-line: underline
}

body>div>div.grecaptcha-badge {
    display: none;
    height: 0!important;
    width: 0!important
}

.order-items>div:nth-child(2n) {
    --tw-bg-opacity: 1;
    background-color: rgb(255 255 255/var(--tw-bg-opacity))
}

.order-links {
    display: block
}

[data-content-type$=block] .order-links p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

.order-links {
    align-items: center;
    --tw-bg-opacity: 1;
    background-color: rgb(255 255 255/var(--tw-bg-opacity))
}

.order-links li {
    display: inline-block;
    padding: .5rem 1rem;
    cursor: pointer;
    white-space: nowrap
}

.order-links li.current {
    flex-grow: 1;
    --tw-text-opacity: 1;
    color: rgb(28 25 23/var(--tw-text-opacity))
}

.order-links li a {
    text-decoration-line: underline
}

.order-date {
    font-size: .875rem;
    letter-spacing: .025em
}

.order_totals :not(.price) {
    font-weight: 600
}

.order_totals .price {
    font-weight: 400
}

fieldset .field,form .field {
    margin-top: .25rem
}

fieldset .field.field-reserved,form .field.field-reserved {
    margin-bottom: 2rem
}

fieldset .field.field-reserved ul:last-of-type,form .field.field-reserved ul:last-of-type {
    margin-bottom: -1.75rem;
    padding-bottom: .25rem
}

fieldset .field.field-reserved ul,form .field.field-reserved ul {
    font-size: .875rem;
    letter-spacing: .025em
}

fieldset label,form label {
    margin-bottom: .5rem;
    display: block;
    --tw-text-opacity: 1;
    color: rgb(87 83 78/var(--tw-text-opacity))
}

[data-content-type$=block] fieldset label p:last-child,[data-content-type$=block] form label p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

fieldset .field.choice,form .field.choice {
    display: flex;
    align-items: center
}

fieldset .field.choice input,form .field.choice input {
    margin-right: 1rem
}

fieldset .field.choice label,form .field.choice label {
    margin-bottom: 0
}

fieldset .field.field-error .messages,form .field.field-error .messages {
    color: rgb(239 68 68/var(--tw-text-opacity));
    max-width: -moz-fit-content;
    max-width: fit-content
}

fieldset legend,form legend {
    margin-bottom: .75rem;
    font-size: 1.25rem;
    line-height: 1.75rem;
    --tw-text-opacity: 1;
    color: rgb(28 25 23/var(--tw-text-opacity))
}

fieldset legend+br,form legend+br {
    display: none
}

fieldset~fieldset {
    margin-top: 2rem
}

.hyva_checkout-index-index address {
    font-style: normal;
    line-height: 2
}

form .field-customer_type {
    margin-bottom: .5rem!important
}

form .field-email_address,form .field-telephone {
    margin-bottom: 0!important
}

#hyva-checkout-main div.required>div>label:after {
    content: "*";
    position: absolute;
    right: -.5rem;
    top: -1px;
    line-height: 1
}

fieldset .field.field-error .messages,form .field.field-error .messages {
    margin-left: 1rem;
    --tw-text-opacity: 1;
    color: rgb(220 38 38/var(--tw-text-opacity))
}

.field-country_id div.tooltip {
    --tw-bg-opacity: 1;
    background-color: rgb(245 245 244/var(--tw-bg-opacity))
}

#hyva-checkout-main .breadcrumbs .item {
    display: inline-flex;
    align-items: center;
    --tw-text-opacity: 1;
    color: rgb(31 41 55/var(--tw-text-opacity))
}

#hyva-checkout-main .breadcrumbs .item.active>:not([hidden])~:not([hidden]) {
    --tw-space-x-reverse: 0;
    margin-right: calc(.25rem*var(--tw-space-x-reverse));
    margin-left: calc(.25rem*(1 - var(--tw-space-x-reverse)))
}

#hyva-checkout-main .breadcrumbs .item.active {
    font-weight: 700
}

#hyva-checkout-main .breadcrumbs .item.locked {
    cursor: not-allowed;
    --tw-text-opacity: 1;
    color: rgb(156 163 175/var(--tw-text-opacity))
}

#hyva-checkout-main .breadcrumbs .item.completed {
    --tw-text-opacity: 1;
    color: rgb(75 85 99/var(--tw-text-opacity))
}

#hyva-checkout-main [x-cloak] {
    display: none!important
}

#hyva-checkout-main #quote-summary>.price-summary>:not([hidden])~:not([hidden]) {
    --tw-space-y-reverse: 0;
    margin-top: calc(1.5rem*(1 - var(--tw-space-y-reverse)));
    margin-bottom: calc(1.5rem*var(--tw-space-y-reverse))
}

#hyva-checkout-main #quote-summary>.price-summary {
    padding-top: 1.5rem;
    padding-bottom: 1.5rem
}

#hyva-checkout-main {
    display: flex;
    flex-direction: column
}

.hyva-checkout-layout-1column .messages {
    margin-top: 2rem
}

.amlocator-range-wrap {
    position: relative
}

.amlocator-range {
    height: .75rem;
    width: 100%;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border-radius: .125rem;
    --tw-bg-opacity: 1;
    background-color: rgba(247,248,249,var(--tw-bg-opacity))
}

.amlocator-range::-webkit-slider-thumb {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    background: #000;
    height: 12px;
    width: 12px;
    border-radius: 9999px
}

.amlocator-range::-moz-range-thumb {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    background: #000;
    height: 12px;
    width: 12px;
    border-radius: 9999px
}

.amlocator-range::-ms-thumb {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    background: #000;
    height: 12px;
    width: 12px;
    border-radius: 9999px
}

.amlocator-bubble {
    top: -100%;
    left: .5rem;
    display: inline-block;
    width: -moz-max-content;
    width: max-content;
    min-width: 50px;
    --tw-translate-x: -50%;
    transform: var(--tw-transform);
    --tw-bg-opacity: 1;
    padding: .25rem;
    font-size: .75rem;
    line-height: 1rem;
    line-height: 1;
    --tw-text-opacity: 1;
    color: rgba(255,255,255,var(--tw-text-opacity))
}

.amlocator-bubble,.amlocator-bubble:after {
    position: absolute;
    background-color: rgba(0,0,0,var(--tw-bg-opacity))
}

.amlocator-bubble:after {
    bottom: 0;
    left: 50%;
    height: .375rem;
    width: .375rem;
    --tw-bg-opacity: 1;
    content: "";
    transform: translate(-50%,50%) rotate(45deg)
}

.amcform-popup-block .amcform-title,.circle-theme.rendered-form .field .label,.circle-theme.rendered-form .fieldset>.field.form-group .label,.circle-theme.rendered-form .fieldset>.fields>.field.form-group>.label {
    font-weight: 400
}

.amcform-tooltip-wrapper>label {
    position: static
}

.amcform-popup-block .amcform-labels-list,.amform-form .amform-hide-formload,.amform-form .amform-hide-formload.action.primary,.amform-form:not(.default) .kct-handle,.amform-form:not(.default) .kct-off,.amform-form:not(.default) .kct-on,.amform-parent .amform-show-popup.-hidden,.circle-theme .amcform-title-wrap:after,.circle-theme .amcform-title-wrap:before,.fb-googlemap .gm-svpc,.linear-theme .amcform-step,.linear-theme .amcform-title-wrap:after,.linear-theme .amcform-title-wrap:before {
    display: none
}

.amcform-title-wrap.active~.amcform-title-wrap:before,.amform-body .am-picker-year .ui-datepicker-calendar td a.ui-state-highlight {
    --tw-bg-opacity: 1;
    background-color: rgb(229 231 235/var(--tw-bg-opacity))
}

.amcform-button:not(.primary).-disabled,.amcform-button:not(.primary).-disabled:focus {
    pointer-events: none
}

.amcform-title-wrap.-disabled .amcform-step {
    --tw-border-opacity: 1;
    border-color: rgb(229 231 235/var(--tw-border-opacity));
    --tw-bg-opacity: 1;
    background-color: rgb(255 255 255/var(--tw-bg-opacity));
    --tw-text-opacity: 1;
    color: rgb(156 163 175/var(--tw-text-opacity))
}

.amcform-title-wrap.-error .amcform-step {
    --tw-border-opacity: 1;
    border-color: rgb(239 68 68/var(--tw-border-opacity));
    --tw-bg-opacity: 1;
    background-color: rgb(239 68 68/var(--tw-bg-opacity));
    background-position: 50%;
    background-repeat: no-repeat;
    font-size: 0;
    --tw-text-opacity: 1;
    color: rgb(255 255 255/var(--tw-text-opacity));
    background-image: url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0uMjkzIDEuNzA3QTEgMSAwIDAgMSAxLjcwNy4yOTNMNiA0LjU4NiAxMC4yOTMuMjkzYTEgMSAwIDEgMSAxLjQxNCAxLjQxNEw3LjQxNCA2bDQuMjkzIDQuMjkzYTEgMSAwIDAgMS0xLjQxNCAxLjQxNEw2IDcuNDE0bC00LjI5MyA0LjI5M2ExIDEgMCAwIDEtMS40MTQtMS40MTRMNC41ODYgNiAuMjkzIDEuNzA3WiIgZmlsbD0iI2ZmZiIvPjwvc3ZnPg==)
}

.amcform-title-wrap.-disabled .amcform-label {
    --tw-text-opacity: 1;
    color: rgb(156 163 175/var(--tw-text-opacity))
}

.amcform-button.-with-icon:active,.amcform-button.-with-icon:active>.amcform-icon,.amcform-title-wrap.active .amcform-label,.linear-theme.rendered-form .field.-active>.label,.linear-theme.rendered-form .fieldset>.field.form-group.-active>.label,.linear-theme.rendered-form .fieldset>.fields>.field.form-group.-active>.label {
    --tw-text-opacity: 1;
    color: rgb(37 99 235/var(--tw-text-opacity))
}

.amcform-button.-with-icon.-remove:active,.amcform-button.-with-icon:active>.amcform-icon.-remove,.amcform-title-wrap.-error .amcform-label {
    --tw-text-opacity: 1;
    color: rgb(220 38 38/var(--tw-text-opacity))
}

.linear-theme .fieldset-block .input-error-box {
    position: absolute;
    width: 100%
}

.circle-theme.rendered-form .amform-date.mage-error,.circle-theme.rendered-form .amform-time.mage-error,.circle-theme.rendered-form .form-control.mage-error,.linear-theme .amcform-title-wrap.-error .amcform-title,.linear-theme.rendered-form .amform-date.mage-error,.linear-theme.rendered-form .amform-time.mage-error,.linear-theme.rendered-form .form-control.mage-error {
    --tw-border-opacity: 1;
    border-color: rgb(239 68 68/var(--tw-border-opacity))
}

.linear-theme .amcform-page-titles {
    align-items: stretch;
    padding: 0 20px
}

.linear-theme .amcform-title-wrap {
    margin: 0 0 1rem;
    display: block;
    flex: 1 1 0%;
    text-align: left
}

[data-content-type$=block] .linear-theme .amcform-title-wrap p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

.linear-theme .amcform-title-wrap.active .amcform-title {
    --tw-border-opacity: 1;
    border-color: rgb(59 130 246/var(--tw-border-opacity))
}

.linear-theme .amcform-title-wrap.-disabled .amcform-title {
    --tw-border-opacity: 1;
    border-color: rgb(229 231 235/var(--tw-border-opacity))
}

.linear-theme .amcform-title {
    margin: 0;
    display: block;
    min-height: 100%;
    max-width: 100%;
    border-bottom-width: 8px;
    --tw-border-opacity: 1;
    border-color: rgb(147 197 253/var(--tw-border-opacity));
    padding-bottom: .5rem;
    text-align: left
}

[data-content-type$=block] .linear-theme .amcform-title p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

.circle-theme .amcform-page-titles {
    align-items: center
}

.circle-theme .amcform-title {
    display: flex;
    max-width: none;
    align-items: center
}

.circle-theme .amcform-step {
    margin-top: 0;
    margin-right: .75rem;
    margin-bottom: 0;
    max-width: 38px;
    border-radius: 1rem
}

.circle-theme .amcform-label {
    text-align: left
}

.circle-theme .amcform-title-wrap+.amcform-title-wrap {
    margin-left: 30px
}

.circle-theme .amcform-title-wrap:nth-child(3n+1) {
    margin-left: 0
}

.circle-theme .amcform-title-wrap.-disabled .amcform-step {
    --tw-border-opacity: 1;
    border-color: rgb(191 219 254/var(--tw-border-opacity));
    --tw-bg-opacity: 1;
    background-color: rgb(191 219 254/var(--tw-bg-opacity));
    --tw-text-opacity: 1;
    color: rgb(255 255 255/var(--tw-text-opacity))
}

.amcform-table-wrap>.amcform-title {
    margin: 0 0 .75rem;
    font-size: 18px;
    font-weight: 700;
    line-height: 1.5rem;
    --tw-text-opacity: 1;
    color: rgb(55 65 81/var(--tw-text-opacity))
}

.kc-toggle.on .kct-inner {
    left: 0;
    --tw-bg-opacity: 1;
    background-color: rgb(229 231 235/var(--tw-bg-opacity));
    background-image: linear-gradient(to bottom,var(--tw-gradient-stops));
    --tw-gradient-from: #e5e7eb;
    --tw-gradient-to: #e5e7eb00;
    --tw-gradient-stops: var(--tw-gradient-from),var(--tw-gradient-to);
    --tw-gradient-to: #0000
}

.amform-form:not(.default) .kc-toggle input:focus+.kct-inner {
    border-width: 2px;
    border-style: solid;
    --tw-border-opacity: 1;
    border-color: rgb(156 163 175/var(--tw-border-opacity))
}

.amform-form:not(.default) .kc-toggle {
    margin: 0 4px 0 0;
    height: 16px;
    width: 26px;
    border-radius: 9999px;
    border-width: 0;
    --tw-bg-opacity: 1;
    background-color: rgb(229 231 235/var(--tw-bg-opacity))
}

.amform-form:not(.default) .kc-toggle.on {
    --tw-bg-opacity: 1;
    background-color: rgb(37 99 235/var(--tw-bg-opacity))
}

.amform-form:not(.default) .kc-toggle .kct-inner {
    top: 2px;
    left: 2px;
    height: 12px;
    width: 12px;
    border-radius: 9999px;
    border-width: 0;
    --tw-bg-opacity: 1;
    background-color: rgb(255 255 255/var(--tw-bg-opacity))
}

.amform-form:not(.default) .kc-toggle.on .kct-inner {
    left: 12px
}

@media only screen and (max-width: 767px) {
    form:not(.linear-theme) .amcform-title-wrap {
        display:none;
        max-width: 50%
    }

    form:not(.linear-theme) .amcform-title-wrap:before,form:not(.linear-theme) .amcform-title-wrap:not(:last-child):after {
        width: 50%
    }

    form:not(.linear-theme) .amcform-title-wrap:first-child:before {
        display: none
    }

    form:not(.linear-theme) .amcform-title-wrap:after {
        background-color: initial;
        background-image: linear-gradient(to right,var(--tw-gradient-stops));
        --tw-gradient-from: #e5e7eb;
        --tw-gradient-to: #e5e7eb00;
        --tw-gradient-stops: var(--tw-gradient-from),var(--tw-gradient-to);
        --tw-gradient-to: #0000
    }

    .circle-theme .amcform-title-wrap:after,.circle-theme .amcform-title-wrap:before,form:not(.linear-theme) .amcform-title-wrap.active~form:not(.linear-theme) .amcform-title-wrap:nth-last-child(2) {
        display: none
    }

    .linear-theme .amcform-title-wrap.active~.linear-theme .amcform-title-wrap:nth-last-child(2),form:not(.linear-theme) .amcform-title-wrap.-done:nth-last-child(2),form:not(.linear-theme) .amcform-title-wrap.active,form:not(.linear-theme) .amcform-title-wrap.active+.amcform-title-wrap,form:not(.linear-theme) .amcform-title-wrap.active+form:not(.linear-theme) .amcform-title-wrap:nth-last-child(2) {
        display: block
    }

    [data-content-type$=block] .linear-theme .amcform-title-wrap.active~.linear-theme .amcform-title-wrap:nth-last-child(2) p:last-child,[data-content-type$=block] form:not(.linear-theme) .amcform-title-wrap.-done:nth-last-child(2) p:last-child,[data-content-type$=block] form:not(.linear-theme) .amcform-title-wrap.active p:last-child,[data-content-type$=block] form:not(.linear-theme) .amcform-title-wrap.active+.amcform-title-wrap p:last-child,[data-content-type$=block] form:not(.linear-theme) .amcform-title-wrap.active+form:not(.linear-theme) .amcform-title-wrap:nth-last-child(2) p:last-child {
        margin-bottom: 1rem;
        margin-top: 0
    }

    form:not(.linear-theme) .amcform-title-wrap.-done:before,form:not(.linear-theme) .amcform-title-wrap.active:before {
        background-color: initial;
        background-image: linear-gradient(to left,var(--tw-gradient-stops));
        --tw-gradient-from: #93c5fd;
        --tw-gradient-to: #93c5fd00;
        --tw-gradient-stops: var(--tw-gradient-from),var(--tw-gradient-to);
        --tw-gradient-to: #0000
    }

    form:not(.linear-theme) .amcform-title-wrap.-done:nth-last-child(2):after,form:not(.linear-theme) .amcform-title-wrap.active+.amcform-title-wrap:before,form:not(.linear-theme) .amcform-title-wrap.active:after {
        --tw-bg-opacity: 1;
        background-color: rgb(147 197 253/var(--tw-bg-opacity))
    }

    .linear-theme .amcform-page-titles,.linear-theme.rendered-form .fieldset>.field.form-group,.linear-theme.rendered-form .fieldset>.fields>.field.form-group {
        padding: 0 1rem
    }

    .linear-theme .amcform-title-wrap {
        display: block;
        min-width: 50%;
        max-width: 100%
    }

    [data-content-type$=block] .linear-theme .amcform-title-wrap p:last-child {
        margin-bottom: 1rem;
        margin-top: 0
    }

    .circle-theme .amcform-page-titles {
        margin-bottom: 2rem;
        align-items: stretch
    }

    .circle-theme .amcform-title {
        margin: 0;
        display: block
    }

    [data-content-type$=block] .circle-theme .amcform-title p:last-child {
        margin-bottom: 1rem;
        margin-top: 0
    }

    .circle-theme .amcform-label {
        display: block;
        padding: .5rem 0
    }

    [data-content-type$=block] .circle-theme .amcform-label p:last-child {
        margin-bottom: 1rem;
        margin-top: 0
    }

    .circle-theme .amcform-title-wrap {
        margin: 0;
        border-bottom-width: 4px;
        --tw-border-opacity: 1;
        border-color: rgb(147 197 253/var(--tw-border-opacity))
    }

    .circle-theme .amcform-title-wrap+.amcform-title-wrap {
        margin: 0
    }

    .circle-theme .amcform-title-wrap.active {
        --tw-border-opacity: 1;
        border-color: rgb(59 130 246/var(--tw-border-opacity))
    }

    .circle-theme .amcform-title-wrap.-disabled {
        --tw-border-opacity: 1;
        border-color: rgb(229 231 235/var(--tw-border-opacity))
    }

    .circle-theme .amcform-title-wrap.-error {
        --tw-border-opacity: 1;
        border-color: rgb(239 68 68/var(--tw-border-opacity))
    }
}

@media (min-width: 768px),print {
    .amcform-title-wrap:nth-child(3n+1):before {
        display:none
    }

    .linear-theme .amcform-title {
        max-width: 174px
    }

    form:not(.linear-theme):not(.circle-theme) .amcform-title-wrap:nth-child(3n+1):last-child:before {
        display: block;
        width: 50%;
        background-color: initial;
        background-image: linear-gradient(to left,var(--tw-gradient-stops));
        --tw-gradient-from: #e5e7eb;
        --tw-gradient-to: #e5e7eb00;
        --tw-gradient-stops: var(--tw-gradient-from),var(--tw-gradient-to);
        --tw-gradient-to: #0000
    }

    [data-content-type$=block] form:not(.linear-theme):not(.circle-theme) .amcform-title-wrap:nth-child(3n+1):last-child:before p:last-child {
        margin-bottom: 1rem;
        margin-top: 0
    }

    form:not(.linear-theme) .amcform-title-wrap:nth-child(3n+1).active:last-child:before {
        background-color: initial;
        background-image: linear-gradient(to left,var(--tw-gradient-stops));
        --tw-gradient-from: #60a5fa;
        --tw-gradient-to: #60a5fa00;
        --tw-gradient-stops: var(--tw-gradient-from),var(--tw-gradient-to);
        --tw-gradient-to: #0000
    }

    .circle-theme .amcform-title-wrap {
        min-width: 30%
    }

    .circle-theme .amcform-page-titles {
        margin-left: auto;
        max-width: 90%
    }
}

[wire\:dirty]:not(textarea):not(input):not(select),[wire\:loading\.block],[wire\:loading\.delay\.long],[wire\:loading\.delay\.longer],[wire\:loading\.delay\.longest],[wire\:loading\.delay\.short],[wire\:loading\.delay\.shorter],[wire\:loading\.delay\.shortest],[wire\:loading\.delay],[wire\:loading\.flex],[wire\:loading\.grid],[wire\:loading\.inline-block],[wire\:loading\.inline-flex],[wire\:loading\.inline],[wire\:loading\.table],[wire\:loading],[wire\:offline] {
    display: none
}

input:-webkit-autofill,select:-webkit-autofill,textarea:-webkit-autofill {
    animation-duration: 50000s;
    animation-name: livewireautofill
}

#livewire-error iframe {
    background-color: #fff!important;
    border-radius: .375rem!important;
    padding: .75rem 1rem!important
}

.amrelated-cart-bundle {
    width: 100%
}

div[id^=amrelated-block-] .item .product-info>div:last-child {
    margin-top: auto
}

.catalog-product-view .product-info-main>div {
    display: flex;
    flex-direction: column;
    gap: 0
}

@media (min-width: 1024px) {
    .catalog-product-view .product-info-main>div {
        display:grid;
        gap: 2rem
    }
}

.catalog-product-view .product-info-main section[id*=mostviewed] {
    grid-column: span 2/span 2
}

.catalog-product-view .product-info-main section[id*=mostviewed] .amrelated-content-wrapper {
    --tw-shadow: 0 0 #0000;
    --tw-shadow-colored: 0 0 #0000;
    box-shadow: var(--tw-ring-offset-shadow,0 0 #0000),var(--tw-ring-shadow,0 0 #0000),var(--tw-shadow)
}

.catalog-product-view .product-info-main section[id=amrelated_product_content_tab] {
    grid-column: span 2/span 2
}

@media (min-width: 1024px) {
    .amrelated-content-container .amrelated-content-wrapper .amrelated-pack-item-wrapper[data-class=-narrow-wrapper]:last-child .amrelated-pack-item {
        max-width:120px
    }
}

.amrelated-content-container .amrelated-content-wrapper .amrelated-pack-item-wrapper.selected .amrelated-pack-item {
    opacity: 1
}

.amrelated-content-container .amrelated-content-wrapper .amrelated-pack-item-wrapper:not(.selected) .amrelated-pack-item:not(.-main-product) .amrelated-discount.-product {
    opacity: 0
}

@media (min-width: 1024px) {
    .amrelated-content-container .amrelated-content-wrapper .amrelated-pack-item-wrapper:not(:last-child):after {
        content:"+";
        padding: .625rem;
        font-size: 90px;
        line-height: 100px;
        --tw-text-opacity: 1;
        color: rgb(25 121 195/var(--tw-text-opacity))
    }
}

[x-ref=bundlePopup] {
    padding-right: 0
}

[x-ref=bundlePopup] .product-custom-option.form-select,[x-ref=bundlePopup] .product-custom-option.form-textarea {
    width: 100%
}

.amrelated-popup-wrapper-content {
    overflow-y: clip
}

.amrelated-popup-wrapper-content div[id^=amrelated-product-container] .info-container .product-options-bottom>div {
    padding: 1rem
}

@media (min-width: 768px) {
    .amrelated-popup-wrapper-content div[id^=amrelated-product-container] .info-container .product-options-bottom>div {
        width:100%
    }
}

@media (min-width: 1024px) {
    .amrelated-popup-wrapper-content div[id^=amrelated-product-container] .info-container .product-options-bottom>div {
        width:100%
    }
}

.amrelated-popup-wrapper-content div[id^=amrelated-product-container] .info-container .product-options-bottom #product-details,.amrelated-popup-wrapper-content div[id^=amrelated-product-container] .info-container .product-options-bottom .product-description+div,.amrelated-popup-wrapper-content div[id^=amrelated-product-container] .info-container .product-options-bottom div.product-description,.amrelated-popup-wrapper-content div[id^=amrelated-product-container] .info-container .product-options-bottom p.text-gray-900.title-font,.amrelated-popup-wrapper-content div[id^=amrelated-product-container] .info-container .product-options-bottom p.text-gray-900.title-font+.my-2 {
    display: none
}

.amrelated-popup-wrapper-content div[id^=amrelated-product-container] .info-container .product-options-bottom div[x-data="initBundleOptions()"] .nested.options-list .field.choice input {
    margin-top: .25rem
}

.amrelated-popup-wrapper-content div[id^=amrelated-product-container] .info-container .product-options-bottom div[x-data="initBundleOptions()"] .nested.options-list .field.choice .price-container {
    display: inline-block
}

.amrelated-popup-wrapper-content div[id^=amrelated-product-container] .info-container button[id^=product-addtocart] {
    display: none
}

.amrelated-popup-wrapper-content .swatch-attribute .product-option-label {
    width: 100%
}

@media (min-width: 640px) {
    .amrelated-popup-wrapper-content .swatch-attribute .product-option-label {
        width:33.333333%
    }
}

.amrelated-popup-wrapper-content .swatch-attribute .product-option-values {
    width: 100%
}

@media (min-width: 640px) {
    .amrelated-popup-wrapper-content .swatch-attribute .product-option-values {
        width:66.666667%
    }

    .amrelated-popup-container .amrelated-bundle-popup {
        margin: 0 auto;
        width: 400px;
        max-width: none;
        padding: 0 0 13px
    }

    .amrelated-popup-container .amrelated-info.-top {
        margin-top: 15px
    }
}

@media (min-width: 768px) {
    .amrelated-popup-container .amrelated-bundle-popup {
        min-width:700px;
        max-width: none
    }

    .amrelated-popup-container .amrelated-bundle-popup .amrelated-product-info {
        margin-top: 60px;
        min-height: 450px
    }

    .amrelated-product-info .amrelated-info.-top {
        float: right;
        margin: 0;
        width: 50%
    }

    .amrelated-product-info .amrelated-info.-bottom {
        float: right;
        clear: both;
        margin-bottom: 1.25rem;
        width: 50%
    }

    .amrelated-product-info .amrelated-info.-bottom,.amrelated-product-info .amrelated-info.-top {
        box-sizing: border-box;
        padding: 0 0 1.25rem
    }

    .amrelated-product-info .amrelated-image-container {
        position: absolute;
        left: 0;
        margin: 0;
        box-sizing: border-box;
        width: 50%;
        border-width: 0;
        padding: 0 25px
    }

    .amrelated-product-info .amrelated-image-container>.product-item-photo {
        width: 100%;
        border-width: 0
    }

    .amrelated-product-info .amrelated-image-container .product-image-container {
        border-width: 1px;
        --tw-border-opacity: 1;
        border-color: rgb(178 178 178/var(--tw-border-opacity))
    }

    .amrelated-info.-top .amrelated-title {
        margin-bottom: .625rem;
        font-size: 24px
    }

    .amrelated-info.-top .product-reviews-summary {
        margin-bottom: .625rem
    }

    .amrelated-info.-top .product-reviews-summary .action {
        margin-left: .625rem
    }

    .amrelated-info.-bottom .amrelated-description {
        margin: 5px 0 0;
        font-size: 14px
    }

    .amrelated-info.-bottom .product-add-form {
        margin: 0;
        padding: 0
    }
}

@media (min-width: 1024px) {
    .amrelated-pack-wrapper .amrelated-content-wrapper .amrelated-equal,.amrelated-pack-wrapper .amrelated-content-wrapper .amrelated-plus {
        padding:.625rem;
        font-size: 90px
    }

    .amrelated-pack-item.-narrow .product-reviews-summary {
        margin: 0 auto 5px
    }

    .amrelated-popup-container .amrelated-bundle-popup {
        width: 820px
    }

    .amrelated-product-info .amrelated-info.-bottom,.amrelated-product-info .amrelated-info.-top {
        padding: 35px 0 0
    }

    .amrelated-product-info .amrelated-image-container .amrelated-image-container {
        padding: 0 25px 0 35px
    }

    .amrelated-product-info .amrelated-image-container>.product-item-photo {
        text-align: left
    }
}

#amrelated_product_content_tab .block-title {
    display: none
}

.amrelated-grid-wrapper .slick-arrow {
    z-index: 999
}

.amrelated-grid-wrapper .slick-slide {
    margin: 0 5px
}

.amrelated-grid-wrapper .slick-track {
    display: flex
}

.amrelated-grid-wrapper .slick-dots .slick-active button {
    background-color: initial
}

.amrelated-grid-wrapper .slick-dots button,.amrelated-grid-wrapper .slick-dots button:active,.amrelated-grid-wrapper .slick-dots button:focus,.amrelated-grid-wrapper .slick-dots button:hover {
    border-width: 0
}

.amrelated-grid-wrapper .products-grid .product-item-info:hover {
    z-index: 3
}

.amrelated-sidebar-wrap {
    width: 100%
}

.amrelated-cart-message {
    position: relative;
    margin: 0 0 .625rem;
    display: block;
    --tw-bg-opacity: 1;
    background-color: rgb(233 246 255/var(--tw-bg-opacity));
    padding: 5px 25px;
    text-align: center;
    font-size: 1.6rem;
    line-height: 42px;
    --tw-text-opacity: 1;
    color: rgb(51 51 51/var(--tw-text-opacity))
}

[data-content-type$=block] .amrelated-cart-message p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

.amrelated-cart-message:before {
    content: "";
    background-image: url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzAiIGhlaWdodD0iMzAiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGNpcmNsZSBjeD0iMTUiIGN5PSIxNSIgcj0iMTUiIGZpbGw9IiNFQjU3NTciLz48cGF0aCBkPSJNOS44OTggMTAuODEzYzAtLjY4OC4yMjItMS4yNS42NjUtMS42ODguNDQyLS40NDMgMS4wMjMtLjY2NCAxLjc0Mi0uNjY0LjcyOSAwIDEuMzEyLjIyMSAxLjc1LjY2NC40NDIuNDM4LjY2NCAxLjAxMy42NjQgMS43Mjd2LjU2MmMwIC42ODItLjIyMiAxLjI0Mi0uNjY0IDEuNjgtLjQzOC40MzctMS4wMTYuNjU2LTEuNzM1LjY1Ni0uNzAzIDAtMS4yODQtLjIxMy0xLjc0Mi0uNjQtLjQ1My0uNDMzLS42OC0xLjAxNC0uNjgtMS43NDN2LS41NTVabTEuMzI5LjYwMWMwIC4zNi4wOTguNjUxLjI5Ni44NzUuMjA0LjIxOS40Ny4zMjguNzk3LjMyOC4zMjMgMCAuNTg0LS4xMS43ODItLjMyOC4xOTctLjIyNC4yOTYtLjUyNi4yOTYtLjkwNnYtLjU3YzAtLjM2LS4xMDEtLjY1Mi0uMzA0LS44NzYtLjE5OC0uMjIzLS40NjEtLjMzNS0uNzktLjMzNS0uMzI3IDAtLjU5LjExNC0uNzg4LjM0My0uMTkzLjIyNC0uMjkuNTIxLS4yOS44OXYuNThabTQuMTQgNS43OTdjMC0uNjk4LjIyNy0xLjI2My42OC0xLjY5NS40NTMtLjQzMyAxLjAzMS0uNjQ5IDEuNzM0LS42NDkuNzA5IDAgMS4yODcuMjE2IDEuNzM1LjY0OS40NTMuNDMyLjY4IDEuMDE1LjY4IDEuNzV2LjU1NGMwIC42NzctLjIyIDEuMjM3LS42NTcgMS42OC0uNDMyLjQzOC0xLjAxMy42NTYtMS43NDIuNjU2LS43MyAwLTEuMzE4LS4yMTYtMS43NjYtLjY0OC0uNDQyLS40MzgtLjY2NC0xLjAxMy0uNjY0LTEuNzI3di0uNTdabTEuMzI4LjYxYzAgLjM1My4xMDIuNjQ1LjMwNS44NzQuMjA4LjIyNC40NzQuMzM2Ljc5Ny4zMzYuMzMzIDAgLjU5NC0uMTA3Ljc4MS0uMzIuMTkzLS4yMTkuMjktLjUyMy4yOS0uOTE0di0uNTg2YzAtLjM2NS0uMTAyLS42NTYtLjMwNS0uODc1YTEuMDE5IDEuMDE5IDAgMCAwLS43ODItLjMyOGMtLjMyMyAwLS41ODYuMTEtLjc4OS4zMjgtLjE5OC4yMTktLjI5Ny41Mi0uMjk3LjkwNnYuNTc4Wm0tMy45ODQgMS4zMjctLjk3Ny0uNTYyIDUuNTU1LTguODkuOTc3LjU2Mi01LjU1NSA4Ljg5WiIgZmlsbD0iI2ZmZiIvPjwvc3ZnPg==);
    position: relative;
    top: .5rem;
    margin-right: .125rem;
    display: inline-block;
    height: 30px;
    width: 30px
}

.amrelated-photo-container .amrelated-label {
    top: -5px;
    left: -5px
}

.amrelated-photo-container .amrelated-checkbox:checked+.amrelated-label {
    background: #3978bd url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTAgMmEyIDIgMCAwIDEgMi0yaDE2YTIgMiAwIDAgMSAyIDJ2MTZhMiAyIDAgMCAxLTIgMkgyYTIgMiAwIDAgMS0yLTJWMnoiIGZpbGw9IiMzOTc4QkQiLz48cGF0aCBkPSJtNSAxMCA0LjUgNEwxNSA3IiBzdHJva2U9IiNmZmYiIHN0cm9rZS13aWR0aD0iMiIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+PC9zdmc+) no-repeat 50%;
    background-size: contain
}

.amrelated-photo-container .amrelated-checkbox:checked~.amrelated-discount {
    display: block
}

[data-content-type$=block] .amrelated-photo-container .amrelated-checkbox:checked~.amrelated-discount p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

.amrelated-pack-item .product-reviews-summary {
    margin: 0 0 5px
}

.amrelated-pack-item .product-reviews-summary .reviews-actions {
    display: none
}

.amrelated-pack-item .price-final_price [data-price-type=finalPrice] .price {
    display: block;
    font-size: 18px;
    font-weight: 700;
    --tw-text-opacity: 1;
    color: rgb(0 0 0/var(--tw-text-opacity))
}

[data-content-type$=block] .amrelated-pack-item .price-final_price [data-price-type=finalPrice] .price p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

.amrelated-pack-item.-main .amrelated-discount {
    display: block
}

[data-content-type$=block] .amrelated-pack-item.-main .amrelated-discount p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

.amrelated-product-container {
    position: relative
}

.amrelated-product-container:after {
    content: "";
    position: absolute;
    left: 0;
    bottom: 0;
    margin-left: 16%;
    display: block;
    height: 1px;
    width: 68%;
    --tw-bg-opacity: 1;
    background-color: rgb(197 197 197/var(--tw-bg-opacity))
}

[data-content-type$=block] .amrelated-product-container:after p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

.amrelated-product-container .amrelated-product-message,.amrelated-product-container:last-child:after {
    display: none
}

.amrelated-product-container .amrelated-image-wrapper {
    margin: 15px auto;
    max-width: 150px
}

.amrelated-product-info {
    width: 100%
}

.amrelated-product-info .amrelated-info.-bottom,.amrelated-product-info .amrelated-info.-top {
    padding: 0 1.25rem;
    text-align: left
}

.amrelated-product-info .action.back.customization,.amrelated-product-info .block-bundle-summary,.amrelated-product-info .box-tocart .actions,.amrelated-product-info .tocart {
    display: none
}

.amrelated-product-info .bundle-options-wrapper {
    margin-top: 25px
}

.amrelated-product-info .bundle-options-wrapper input[type=radio] {
    width: "15px"
}

.amrelated-product-info .bundle-options-wrapper p.required {
    --tw-text-opacity: 1;
    color: rgb(224 43 39/var(--tw-text-opacity))
}

.amrelated-product-info .bundle-options-wrapper .field.qty>.label {
    margin: .625rem 0 .5rem;
    display: inline-block;
    font-weight: 600
}

.amrelated-product-info .bundle-options-wrapper .input-text.qty {
    width: 54px;
    text-align: center
}

.amrelated-product-info .bundle-options-wrapper .product-info-price .price-box .price-container .price,.amrelated-product-info .bundle-options-wrapper .product-options-bottom .price-box .price-container .price {
    font-size: 22px;
    font-weight: 600;
    line-height: 22px
}

.amrelated-product-info .bundle-options-wrapper.giftcard .amrelated-price {
    display: none
}

.amrelated-product-info .bundle-options-wrapper.giftcard .amrelated-info.-bottom .product-options-bottom .price-box {
    display: block
}

[data-content-type$=block] .amrelated-product-info .bundle-options-wrapper.giftcard .amrelated-info.-bottom .product-options-bottom .price-box p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

.amrelated-image-container {
    margin: 0 25px .625rem;
    box-sizing: border-box;
    width: auto;
    border-width: 1px;
    --tw-border-opacity: 1;
    border-color: rgb(178 178 178/var(--tw-border-opacity))
}

.amrelated-image-container>.product-item-photo {
    margin: auto;
    display: block;
    width: 60%
}

[data-content-type$=block] .amrelated-image-container>.product-item-photo p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

.amrelated-image-container .product-image-container {
    vertical-align: middle
}

.amrelated-info.-top {
    margin: 0
}

.amrelated-info.-top>.amrelated-title {
    margin-bottom: 5px;
    font-size: 20px
}

.amrelated-info.-top>.amrelated-rating .rating-summary {
    vertical-align: text-bottom
}

.amrelated-info.-top>.amrelated-price,.amrelated-info.-top>.amrelated-price .price {
    font-size: 24px;
    font-weight: 700
}

.amrelated-info.-top .reviews-actions .action {
    margin-left: 15px;
    font-size: 14px;
    --tw-text-opacity: 1;
    color: rgb(0 0 0/var(--tw-text-opacity))
}

.amrelated-info.-bottom>.amrelated-description {
    margin: 0 25px;
    font-size: 12px
}

.amrelated-info.-bottom .swatch-attribute {
    margin-bottom: 1.25rem
}

.amrelated-info.-bottom .product-options-bottom .price-box {
    display: none
}

.amrelated-info.-bottom .product-options-bottom .grouped .price-box {
    display: block
}

[data-content-type$=block] .amrelated-info.-bottom .product-options-bottom .grouped .price-box p:last-child {
    margin-bottom: 1rem;
    margin-top: 0
}

#hyva-checkout-container [id*=paypal-messages] {
    display: inline-block;
    border-radius: .5rem;
    border-width: 1px;
    --tw-border-opacity: 1;
    border-color: rgb(229 231 235/var(--tw-border-opacity));
    padding: 1rem;
    text-align: center
}

#hyva-checkout-container [id*=payment-method-view]>[id*=paypal-button-] {
    padding-top: 1rem;
    padding-bottom: 1rem
}

.pp-stored-cards .pp-card-view {
    cursor: pointer;
    transition-property: color,background-color,border-color,text-decoration-color,fill,stroke,opacity,box-shadow,transform,filter,-webkit-backdrop-filter;
    transition-property: color,background-color,border-color,text-decoration-color,fill,stroke,opacity,box-shadow,transform,filter,backdrop-filter;
    transition-property: color,background-color,border-color,text-decoration-color,fill,stroke,opacity,box-shadow,transform,filter,backdrop-filter,-webkit-backdrop-filter;
    transition-timing-function: cubic-bezier(.4,0,.2,1);
    transition-duration: .15s;
    transition: transform .25s ease,color .25s ease
}

.pp-stored-cards .pp-card-view:hover {
    --tw-shadow: 0 10px 15px -3px #0000001a,0 4px 6px -4px #0000001a;
    --tw-shadow-colored: 0 10px 15px -3px var(--tw-shadow-color),0 4px 6px -4px var(--tw-shadow-color);
    box-shadow: var(--tw-ring-offset-shadow,0 0 #0000),var(--tw-ring-shadow,0 0 #0000),var(--tw-shadow)
}

.pp-stored-cards .pp-card-view:active {
    opacity: .7
}

.pp-stored-cards input[type=radio] {
    display: none;
    cursor: pointer
}

.pp-stored-cards input[type=radio]:checked+.pp-card-view {
    cursor: default;
    --tw-shadow: 0 0 0 4px #a1a1a1;
    --tw-shadow-colored: 0 0 0 4px var(--tw-shadow-color);
    box-shadow: var(--tw-ring-offset-shadow,0 0 #0000),var(--tw-ring-shadow,0 0 #0000),var(--tw-shadow)
}

.backdrop\:bg-black\/25::backdrop {
    background-color: #00000040
}

.backdrop\:bg-black\/75::backdrop {
    background-color: #000000bf
}

.backdrop\:backdrop-blur-sm::backdrop {
    --tw-backdrop-blur: blur(4px);
    -webkit-backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}

.before\:absolute:before {
    content: var(--tw-content);
    position: absolute
}

.before\:top-\[17px\]:before {
    content: var(--tw-content);
    top: 17px
}

.before\:right-\[51\%\]:before {
    content: var(--tw-content);
    right: 51%
}

.before\:-left-2:before {
    content: var(--tw-content);
    left: -.5rem
}

.before\:top-1\/2:before {
    content: var(--tw-content);
    top: 50%
}

.before\:top-0:before {
    content: var(--tw-content);
    top: 0
}

.before\:bottom-0:before {
    content: var(--tw-content);
    bottom: 0
}

.before\:right-0:before {
    content: var(--tw-content);
    right: 0
}

.before\:left-0:before {
    content: var(--tw-content);
    left: 0
}

.before\:m-auto:before {
    content: var(--tw-content);
    margin: auto
}

.before\:block:before {
    content: var(--tw-content);
    display: block
}

.before\:h-3:before {
    content: var(--tw-content);
    height: .75rem
}

.before\:h-\[4px\]:before {
    content: var(--tw-content);
    height: 4px
}

.before\:h-4:before {
    content: var(--tw-content);
    height: 1rem
}

.before\:w-3:before {
    content: var(--tw-content);
    width: .75rem
}

.before\:w-full:before {
    content: var(--tw-content);
    width: 100%
}

.before\:w-4:before {
    content: var(--tw-content);
    width: 1rem
}

.before\:shrink-0:before {
    content: var(--tw-content);
    flex-shrink: 0
}

.before\:-translate-y-1\/2:before {
    --tw-translate-y: -50%
}

.before\:-translate-y-1\/2:before,.before\:rotate-45:before {
    content: var(--tw-content);
    transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}

.before\:rotate-45:before {
    --tw-rotate: 45deg
}

.before\:rounded-full:before {
    content: var(--tw-content);
    border-radius: 9999px
}

.before\:rounded:before {
    content: var(--tw-content);
    border-radius: .25rem
}

.before\:border:before {
    content: var(--tw-content);
    border-width: 1px
}

.before\:border-container:before {
    content: var(--tw-content);
    --tw-border-opacity: 1;
    border-color: rgb(214 211 209/var(--tw-border-opacity))
}

.before\:bg-green-500:before {
    content: var(--tw-content);
    --tw-bg-opacity: 1;
    background-color: rgb(16 185 129/var(--tw-bg-opacity))
}

.before\:bg-red-500:before {
    content: var(--tw-content);
    --tw-bg-opacity: 1;
    background-color: rgb(239 68 68/var(--tw-bg-opacity))
}

.before\:bg-blue-400:before {
    content: var(--tw-content);
    --tw-bg-opacity: 1;
    background-color: rgb(96 165 250/var(--tw-bg-opacity))
}

.before\:bg-container-lighter:before {
    content: var(--tw-content);
    --tw-bg-opacity: 1;
    background-color: rgb(250 250 249/var(--tw-bg-opacity))
}

.before\:bg-primary:before {
    content: var(--tw-content);
    --tw-bg-opacity: 1;
    background-color: rgb(0 0 0/var(--tw-bg-opacity))
}

.before\:text-\[11px\]:before {
    content: var(--tw-content);
    font-size: 11px
}

.before\:font-normal:before {
    content: var(--tw-content);
    font-weight: 400
}

.before\:shadow-xl:before {
    content: var(--tw-content);
    --tw-shadow: 0 20px 25px -5px #0000001a,0 8px 10px -6px #0000001a;
    --tw-shadow-colored: 0 20px 25px -5px var(--tw-shadow-color),0 8px 10px -6px var(--tw-shadow-color);
    box-shadow: var(--tw-ring-offset-shadow,0 0 #0000),var(--tw-ring-shadow,0 0 #0000),var(--tw-shadow)
}

.before\:content-\[\\\'x\\\'\]:before{--tw-content:\'x\';content:var(--tw-content)}.after\:absolute:after{content:var(--tw-content);position:absolute}.after\:top-\[17px\]:after{content:var(--tw-content);top:17px}.after\:right-auto:after{content:var(--tw-content);right:auto}.after\:left-1\/2:after{content:var(--tw-content);left:50%}.after\:ml-0\.5:after{content:var(--tw-content);margin-left:.125rem}.after\:ml-0:after{content:var(--tw-content);margin-left:0}.after\:block:after{content:var(--tw-content);display:block}.after\:h-\[4px\]:after{content:var(--tw-content);height:4px}.after\:w-full:after{content:var(--tw-content);width:100%}.after\:bg-gray-200:after{content:var(--tw-content);--tw-bg-opacity:1;background-color:rgb(229 231 235/var(--tw-bg-opacity))}.after\:text-red-500:after{content:var(--tw-content);--tw-text-opacity:1;color:rgb(239 68 68/var(--tw-text-opacity))}.after\:text-red-600:after{content:var(--tw-content);--tw-text-opacity:1;color:rgb(220 38 38/var(--tw-text-opacity))}.after\:content-\[\'\*\'\]:after{--tw-content:"*";content:var(--tw-content)}.first\:mt-0:first-child{margin-top:0}.first\:before\:hidden:first-child:before{content:var(--tw-content);display:none}.last\:mr-0:last-child{margin-right:0}.last\:mb-6:last-child{margin-bottom:1.5rem}.last\:mb-0:last-child{margin-bottom:0}.last\:border-0:last-child{border-width:0}.last\:border-b:last-child{border-bottom-width:1px}.last\:border-b-0:last-child{border-bottom-width:0}.last\:pb-2:last-child{padding-bottom:.5rem}.last\:pb-0:last-child{padding-bottom:0}.last\:after\:hidden:last-child:after{content:var(--tw-content);display:none}.even\:bg-container:nth-child(2n){--tw-bg-opacity:1;background-color:rgb(255 255 255/var(--tw-bg-opacity))}.even\:bg-container-darker:nth-child(2n){--tw-bg-opacity:1;background-color:rgb(245 245 244/var(--tw-bg-opacity))}.checked\:border:checked{border-width:1px}.checked\:border-gray-300:checked{--tw-border-opacity:1;border-color:rgb(209 213 219/var(--tw-border-opacity))}.checked\:bg-inherit:checked{background-color:inherit}.checked\:bg-none:checked{background-image:none}.checked\:before\:absolute:checked:before{content:var(--tw-content);position:absolute}.checked\:before\:inline-block:checked:before{content:var(--tw-content);display:inline-block}.checked\:before\:h-4:checked:before{content:var(--tw-content);height:1rem}.checked\:before\:h-3\.5:checked:before{content:var(--tw-content);height:.875rem}.checked\:before\:h-3:checked:before{content:var(--tw-content);height:.75rem}.checked\:before\:w-4:checked:before{content:var(--tw-content);width:1rem}.checked\:before\:w-3\.5:checked:before{content:var(--tw-content);width:.875rem}.checked\:before\:w-3:checked:before{content:var(--tw-content);width:.75rem}.invalid\:border-red-500:invalid{--tw-border-opacity:1;border-color:rgb(239 68 68/var(--tw-border-opacity))}.invalid\:ring-2:invalid{--tw-ring-offset-shadow:var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);--tw-ring-shadow:var(--tw-ring-inset) 0 0 0 calc(2px + var(--tw-ring-offset-width)) var(--tw-ring-color);box-shadow:var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow,0 0 #0000)}.invalid\:ring-red-500:invalid{--tw-ring-opacity:1;--tw-ring-color:rgb(239 68 68/var(--tw-ring-opacity))}.focus-within\:border-primary:focus-within{--tw-border-opacity:1;border-color:rgb(0 0 0/var(--tw-border-opacity))}.focus-within\:opacity-100:focus-within{opacity:1}.focus-within\:ring-2:focus-within{--tw-ring-offset-shadow:var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);--tw-ring-shadow:var(--tw-ring-inset) 0 0 0 calc(2px + var(--tw-ring-offset-width)) var(--tw-ring-color)}.focus-within\:ring-2:focus-within,.focus-within\:ring-4:focus-within{box-shadow:var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow,0 0 #0000)}.focus-within\:ring-4:focus-within{--tw-ring-offset-shadow:var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);--tw-ring-shadow:var(--tw-ring-inset) 0 0 0 calc(4px + var(--tw-ring-offset-width)) var(--tw-ring-color)}.focus-within\:ring-1:focus-within{--tw-ring-offset-shadow:var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);--tw-ring-shadow:var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color);box-shadow:var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow,0 0 #0000)}.focus-within\:ring-indigo-500:focus-within{--tw-ring-opacity:1;--tw-ring-color:rgb(99 102 241/var(--tw-ring-opacity))}.focus-within\:ring-offset-2:focus-within{--tw-ring-offset-width:2px}.focus-within\:ring-offset-gray-100:focus-within{--tw-ring-offset-color:#f3f4f6}.hover\:z-20:hover{z-index:20}.hover\:scale-105:hover{--tw-scale-x:1.05;--tw-scale-y:1.05;transform:translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))}.hover\:cursor-pointer:hover{cursor:pointer}.hover\:border:hover{border-width:1px}.hover\:border-black:hover,.hover\:border-primary:hover{--tw-border-opacity:1;border-color:rgb(0 0 0/var(--tw-border-opacity))}.hover\:border-secondary:hover{--tw-border-opacity:1;border-color:rgb(52 181 208/var(--tw-border-opacity))}.hover\:border-gray-300:hover{--tw-border-opacity:1;border-color:rgb(209 213 219/var(--tw-border-opacity))}.hover\:bg-gray-100:hover{--tw-bg-opacity:1;background-color:rgb(243 244 246/var(--tw-bg-opacity))}.hover\:bg-container-darker:hover{--tw-bg-opacity:1;background-color:rgb(245 245 244/var(--tw-bg-opacity))}.hover\:bg-white:hover{--tw-bg-opacity:1;background-color:rgb(255 255 255/var(--tw-bg-opacity))}.hover\:bg-blue-700:hover{--tw-bg-opacity:1;background-color:rgb(29 78 216/var(--tw-bg-opacity))}.hover\:bg-primary\/10:hover{background-color:#0000001a}.hover\:bg-stone-100:hover{--tw-bg-opacity:1;background-color:rgb(245 245 244/var(--tw-bg-opacity))}.hover\:bg-green-500:hover{--tw-bg-opacity:1;background-color:rgb(16 185 129/var(--tw-bg-opacity))}.hover\:bg-gray-200:hover{--tw-bg-opacity:1;background-color:rgb(229 231 235/var(--tw-bg-opacity))}.hover\:fill-secondary:hover{fill:#34b5d0}.hover\:text-secondary-lighter:hover{--tw-text-opacity:1;color:rgb(52 181 208/var(--tw-text-opacity))}.hover\:text-black:hover{--tw-text-opacity:1;color:rgb(0 0 0/var(--tw-text-opacity))}.hover\:text-secondary-darker:hover{--tw-text-opacity:1;color:rgb(87 83 78/var(--tw-text-opacity))}.hover\:text-yellow-500:hover{--tw-text-opacity:1;color:rgb(245 158 11/var(--tw-text-opacity))}.hover\:text-gray-300:hover{--tw-text-opacity:1;color:rgb(209 213 219/var(--tw-text-opacity))}.hover\:text-slate-500:hover{--tw-text-opacity:1;color:rgb(100 116 139/var(--tw-text-opacity))}.hover\:text-primary:hover{--tw-text-opacity:1;color:rgb(28 25 23/var(--tw-text-opacity))}.hover\:text-gray-400:hover{--tw-text-opacity:1;color:rgb(156 163 175/var(--tw-text-opacity))}.hover\:text-gray-500:hover{--tw-text-opacity:1;color:rgb(107 114 128/var(--tw-text-opacity))}.hover\:text-red-600:hover{--tw-text-opacity:1;color:rgb(220 38 38/var(--tw-text-opacity))}.hover\:text-gray-600:hover{--tw-text-opacity:1;color:rgb(75 85 99/var(--tw-text-opacity))}.hover\:text-blue-600:hover{--tw-text-opacity:1;color:rgb(37 99 235/var(--tw-text-opacity))}.hover\:text-green-700:hover{--tw-text-opacity:1;color:rgb(21 128 61/var(--tw-text-opacity))}.hover\:underline:hover{text-decoration-line:underline}.hover\:line-through:hover{text-decoration-line:line-through}.hover\:no-underline:hover{text-decoration-line:none}.hover\:opacity-100:hover{opacity:1}.hover\:opacity-75:hover{opacity:.75}.hover\:shadow-lg:hover{--tw-shadow:0 10px 15px -3px #0000001a,0 4px 6px -4px #0000001a;--tw-shadow-colored:0 10px 15px -3px var(--tw-shadow-color),0 4px 6px -4px var(--tw-shadow-color)}.hover\:shadow-lg:hover,.hover\:shadow-sm:hover{box-shadow:var(--tw-ring-offset-shadow,0 0 #0000),var(--tw-ring-shadow,0 0 #0000),var(--tw-shadow)}.hover\:shadow-sm:hover{--tw-shadow:0 1px 2px 0 #0000000d;--tw-shadow-colored:0 1px 2px 0 var(--tw-shadow-color)}.hover\:outline:hover{outline-style:solid}.hover\:outline-2:hover{outline-width:2px}.hover\:outline-gray-300:hover{outline-color:#d1d5db}.hover\:outline-gray-200:hover{outline-color:#e5e7eb}.checked\:hover\:border-gray-300:hover:checked{--tw-border-opacity:1;border-color:rgb(209 213 219/var(--tw-border-opacity))}.checked\:hover\:bg-inherit:hover:checked{background-color:inherit}.focus\:not-sr-only:focus{position:static;width:auto;height:auto;padding:0;margin:0;overflow:visible;clip:auto;white-space:normal}.focus\:absolute:focus{position:absolute}.focus\:z-10:focus{z-index:10}.focus\:z-40:focus{z-index:40}.focus\:z-30:focus{z-index:30}.focus\:border-0:focus{border-width:0}.focus\:border-gray-500:focus{--tw-border-opacity:1;border-color:rgb(107 114 128/var(--tw-border-opacity))}.focus\:border-primary-lighter:focus{--tw-border-opacity:1;border-color:rgb(28 25 23/var(--tw-border-opacity))}.focus\:border-transparent:focus{border-color:#0000}.focus\:border-red-500:focus{--tw-border-opacity:1;border-color:rgb(239 68 68/var(--tw-border-opacity))}.focus\:border-blue-300:focus{--tw-border-opacity:1;border-color:rgb(147 197 253/var(--tw-border-opacity))}.focus\:border-primary:focus{--tw-border-opacity:1;border-color:rgb(0 0 0/var(--tw-border-opacity))}.focus\:bg-white:focus{--tw-bg-opacity:1;background-color:rgb(255 255 255/var(--tw-bg-opacity))}.focus\:text-slate-500:focus{--tw-text-opacity:1;color:rgb(100 116 139/var(--tw-text-opacity))}.focus\:text-gray-600:focus{--tw-text-opacity:1;color:rgb(75 85 99/var(--tw-text-opacity))}.focus\:outline-none:focus{outline:2px solid #0000;outline-offset:2px}.focus\:ring-0:focus{--tw-ring-offset-shadow:var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);--tw-ring-shadow:var(--tw-ring-inset) 0 0 0 calc(var(--tw-ring-offset-width)) var(--tw-ring-color);box-shadow:var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow,0 0 #0000)}.focus\:ring-red-500:focus{--tw-ring-opacity:1;--tw-ring-color:rgb(239 68 68/var(--tw-ring-opacity))}.focus\:ring-blue-200:focus{--tw-ring-opacity:1;--tw-ring-color:rgb(191 219 254/var(--tw-ring-opacity))}.checked\:focus\:border-gray-300:focus:checked{--tw-border-opacity:1;border-color:rgb(209 213 219/var(--tw-border-opacity))}.checked\:focus\:bg-inherit:focus:checked{background-color:inherit}.active\:bg-gray-100:active{--tw-bg-opacity:1;background-color:rgb(243 244 246/var(--tw-bg-opacity))}.active\:bg-blue-700:active{--tw-bg-opacity:1;background-color:rgb(29 78 216/var(--tw-bg-opacity))}.active\:text-primary:active{--tw-text-opacity:1;color:rgb(28 25 23/var(--tw-text-opacity))}.active\:text-gray-500:active{--tw-text-opacity:1;color:rgb(107 114 128/var(--tw-text-opacity))}.active\:text-gray-700:active{--tw-text-opacity:1;color:rgb(55 65 81/var(--tw-text-opacity))}.active\:shadow:active{--tw-shadow:0 1px 3px 0 #0000001a,0 1px 2px -1px #0000001a;--tw-shadow-colored:0 1px 3px 0 var(--tw-shadow-color),0 1px 2px -1px var(--tw-shadow-color);box-shadow:var(--tw-ring-offset-shadow,0 0 #0000),var(--tw-ring-shadow,0 0 #0000),var(--tw-shadow)}.active\:ring-0:active{--tw-ring-offset-shadow:var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);--tw-ring-shadow:var(--tw-ring-inset) 0 0 0 calc(var(--tw-ring-offset-width)) var(--tw-ring-color);box-shadow:var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow,0 0 #0000)}.disabled\:pointer-events-none:disabled{pointer-events:none}.disabled\:cursor-not-allowed:disabled{cursor:not-allowed}.disabled\:border-slate-200:disabled{--tw-border-opacity:1;border-color:rgb(226 232 240/var(--tw-border-opacity))}.disabled\:bg-white:disabled{--tw-bg-opacity:1;background-color:rgb(255 255 255/var(--tw-bg-opacity))}.disabled\:bg-gray-100:disabled{--tw-bg-opacity:1;background-color:rgb(243 244 246/var(--tw-bg-opacity))}.disabled\:text-slate-600:disabled{--tw-text-opacity:1;color:rgb(71 85 105/var(--tw-text-opacity))}.disabled\:opacity-10:disabled{opacity:.1}.disabled\:opacity-75:disabled{opacity:.75}.disabled\:opacity-25:disabled{opacity:.25}.disabled\:opacity-70:disabled{opacity:.7}.disabled\:shadow-none:disabled{--tw-shadow:0 0 #0000;--tw-shadow-colored:0 0 #0000;box-shadow:var(--tw-ring-offset-shadow,0 0 #0000),var(--tw-ring-shadow,0 0 #0000),var(--tw-shadow)}.group:hover .group-hover\:pointer-events-auto{pointer-events:auto}.group:hover .group-hover\:scale-110{--tw-scale-x:1.1;--tw-scale-y:1.1;transform:translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))}.group:hover .group-hover\:bg-gray-300{--tw-bg-opacity:1;background-color:rgb(209 213 219/var(--tw-bg-opacity))}.group:hover .group-hover\:text-gray-600{--tw-text-opacity:1;color:rgb(75 85 99/var(--tw-text-opacity))}.group:hover .group-hover\:opacity-100{opacity:1}.group:hover .group-hover\:opacity-75{opacity:.75}.group:focus .group-focus\:ring{--tw-ring-offset-shadow:var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);--tw-ring-shadow:var(--tw-ring-inset) 0 0 0 calc(3px + var(--tw-ring-offset-width)) var(--tw-ring-color);box-shadow:var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow,0 0 #0000)}.peer:focus~.peer-focus\:left-0{left:0}.peer:focus~.peer-focus\:-translate-y-6{--tw-translate-y:-1.5rem}.peer:focus~.peer-focus\:-translate-y-6,.peer:focus~.peer-focus\:scale-75{transform:translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))}.peer:focus~.peer-focus\:scale-75{--tw-scale-x:.75;--tw-scale-y:.75}.peer:focus~.peer-focus\:font-medium{font-weight:500}.peer:focus~.peer-focus\:text-secondary{--tw-text-opacity:1;color:rgb(120 113 108/var(--tw-text-opacity))}.peer:focus~.peer-focus\:ring-2{--tw-ring-offset-shadow:var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);--tw-ring-shadow:var(--tw-ring-inset) 0 0 0 calc(2px + var(--tw-ring-offset-width)) var(--tw-ring-color);box-shadow:var(--tw-ring-offset-shadow),var(--tw-ring-shadow),var(--tw-shadow,0 0 #0000)}.peer.empty~.peer-\[\.empty\]\:translate-y-0{--tw-translate-y:0px}.peer.empty~.peer-\[\.empty\]\:translate-y-0,.peer.empty~.peer-\[\.empty\]\:translate-y-1{transform:translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))}.peer.empty~.peer-\[\.empty\]\:translate-y-1{--tw-translate-y:0.25rem}.peer.empty~.peer-\[\.empty\]\:scale-100{--tw-scale-x:1;--tw-scale-y:1;transform:translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))}.peer.empty~.peer-\[\.empty\]\:text-black{--tw-text-opacity:1;color:rgb(0 0 0/var(--tw-text-opacity))}.aria-\[current\=page\]\:underline[aria-current=page]{text-decoration-line:underline}.data-\[active\]\:border-primary[data-active]{--tw-border-opacity:1;border-color:rgb(0 0 0/var(--tw-border-opacity))}@media (min-width:640px){.sm\:order-2{order:2}.sm\:order-1{order:1}.sm\:order-3{order:3}.sm\:col-span-6{grid-column:span 6/span 6}.sm\:col-span-2{grid-column:span 2/span 2}.sm\:mx-0{margin-left:0;margin-right:0}.sm\:-mx-8{margin-left:-2rem;margin-right:-2rem}.sm\:mt-0{margin-top:0}.sm\:ml-6{margin-left:1.5rem}.sm\:ml-3{margin-left:.75rem}.sm\:mr-8{margin-right:2rem}.sm\:mb-0{margin-bottom:0}.sm\:ml-2{margin-left:.5rem}.sm\:mt-4{margin-top:1rem}.sm\:block{display:block}.sm\:flex{display:flex}.sm\:h-72{height:18rem}.sm\:w-1\/2{width:50%}.sm\:w-1\/3{width:33.333333%}.sm\:w-20{width:5rem}.sm\:w-48{width:12rem}.sm\:w-96{width:24rem}.sm\:w-5\/6{width:83.333333%}.sm\:w-auto{width:auto}.sm\:min-w-\[theme\(spacing\.24\)\]{min-width:6rem}.sm\:max-w-\[theme\(spacing\.32\)\]{max-width:8rem}.sm\:table-fixed{table-layout:fixed}.sm\:grid-cols-2{grid-template-columns:repeat(2,minmax(0,1fr))}.sm\:grid-cols-8{grid-template-columns:repeat(8,minmax(0,1fr))}.sm\:grid-cols-3{grid-template-columns:repeat(3,minmax(0,1fr))}.sm\:flex-row{flex-direction:row}.sm\:flex-nowrap{flex-wrap:nowrap}.sm\:items-start{align-items:flex-start}.sm\:justify-end{justify-content:flex-end}.sm\:justify-center{justify-content:center}.sm\:gap-8{gap:2rem}.sm\:gap-x-6{-moz-column-gap:1.5rem;column-gap:1.5rem}.sm\:overflow-hidden{overflow:hidden}.sm\:rounded-2xl{border-radius:1rem}.sm\:px-6{padding-left:1.5rem;padding-right:1.5rem}.sm\:py-24{padding-top:6rem;padding-bottom:6rem}.sm\:py-1{padding-top:.25rem;padding-bottom:.25rem}.sm\:px-3{padding-left:.75rem;padding-right:.75rem}.sm\:px-8{padding-left:2rem;padding-right:2rem}.sm\:py-5{padding-top:1.25rem;padding-bottom:1.25rem}.sm\:pb-0{padding-bottom:0}.sm\:text-left{text-align:left}.sm\:text-center{text-align:center}.sm\:text-right{text-align:right}.sm\:text-2xl{font-size:1.5rem;line-height:2rem}.sm\:text-4xl{font-size:2.5rem;line-height:3rem}.sm\:text-5xl{font-size:3rem;line-height:1}.sm\:text-3xl{font-size:2rem;line-height:2.5rem}.sm\:text-xl{font-size:1.25rem;line-height:1.75rem}.sm\:duration-700{transition-duration:.7s}}@media (min-width:768px){.md\:container{width:100%;margin-right:auto;margin-left:auto;padding-right:1.5rem;padding-left:1.5rem}@media (min-width:640px){.md\:container{max-width:640px}}@media (min-width:768px){.md\:container{max-width:768px}}.md\:pointer-events-none{pointer-events:none}@media (min-width:1024px){.md\:container{max-width:1024px}}@media (min-width:1280px){.md\:container{max-width:1280px}}@media (min-width:1536px){.md\:container{max-width:1536px}}.md\:absolute{position:absolute}.md\:relative{position:relative}.md\:left-0{left:0}.md\:left-auto{left:auto}.md\:bottom-auto{bottom:auto}.md\:top-0{top:0}.md\:right-5{right:1.25rem}.md\:right-auto{right:auto}.md\:left-1\/2{left:50%}.md\:order-3{order:3}.md\:col-span-3{grid-column:span 3/span 3}.md\:col-span-6{grid-column:span 6/span 6}.md\:col-span-9{grid-column:span 9/span 9}.md\:col-span-12{grid-column:span 12/span 12}.md\:col-span-1{grid-column:span 1/span 1}.md\:col-start-1{grid-column-start:1}.md\:row-span-2{grid-row:span 2/span 2}.md\:row-start-1{grid-row-start:1}.md\:m-0{margin:0}.md\:my-8{margin-top:2rem;margin-bottom:2rem}.md\:my-4{margin-top:1rem;margin-bottom:1rem}.md\:mx-0{margin-left:0;margin-right:0}.md\:mx-auto{margin-left:auto;margin-right:auto}.md\:mx-10{margin-left:2.5rem;margin-right:2.5rem}.md\:-mx-4{margin-left:-1rem;margin-right:-1rem}.md\:mx-4{margin-left:1rem;margin-right:1rem}.md\:my-0{margin-top:0;margin-bottom:0}.md\:mt-8{margin-top:2rem}.md\:mt-2{margin-top:.5rem}.md\:mb-24{margin-bottom:6rem}.md\:mt-20{margin-top:5rem}.md\:mb-0{margin-bottom:0}.md\:mt-0{margin-top:0}.md\:mr-5{margin-right:1.25rem}.md\:mr-0{margin-right:0}.md\:ml-0{margin-left:0}.md\:ml-auto{margin-left:auto}.md\:mb-10{margin-bottom:2.5rem}.md\:mt-5{margin-top:1.25rem}.md\:mt-4{margin-top:1rem}.md\:-mr-1{margin-right:-.25rem}.md\:mb-2\.5{margin-bottom:.625rem}.md\:mb-2{margin-bottom:.5rem}.md\:ml-5{margin-left:1.25rem}.md\:ml-4{margin-left:1rem}.md\:block{display:block}.md\:inline-block{display:inline-block}.md\:flex{display:flex}.md\:grid{display:grid}.md\:hidden{display:none}.md\:h-16{height:4rem}.md\:h-\[44px\]{height:44px}.md\:h-6{height:1.5rem}.md\:h-\[76px\]{height:76px}.md\:h-auto{height:auto}.md\:h-24{height:6rem}.md\:h-96{height:24rem}.md\:h-\[95px\]{height:95px}.md\:h-44{height:11rem}.md\:max-h-full{max-height:100%}.md\:w-1\/2{width:50%}.md\:w-auto{width:auto}.md\:w-48{width:12rem}.md\:w-6{width:1.5rem}.md\:w-1\/4{width:25%}.md\:w-2\/4{width:50%}.md\:w-3\/4{width:75%}.md\:w-2\/6{width:33.333333%}.md\:w-full{width:100%}.md\:w-\[640px\]{width:640px}.md\:w-fit{width:-moz-fit-content;width:fit-content}.md\:w-2\/3{width:66.666667%}.md\:w-1\/3{width:33.333333%}.md\:w-24{width:6rem}.md\:w-\[73\%\]{width:73%}.md\:w-2\/5{width:40%}.md\:w-3\/5{width:60%}.md\:w-\[180px\]{width:180px}.md\:w-96{width:24rem}.md\:w-72{width:18rem}.md\:w-11\/12{width:91.666667%}.md\:min-w-\[30\%\]{min-width:30%}.md\:min-w-\[120px\]{min-width:120px}.md\:max-w-xs{max-width:20rem}.md\:max-w-lg{max-width:32rem}.md\:max-w-\[60vw\]{max-width:60vw}.md\:max-w-sm{max-width:24rem}.md\:max-w-amrel-60{max-width:60%}.md\:shrink-0{flex-shrink:0}.md\:flex-grow-0{flex-grow:0}.md\:translate-y-0{--tw-translate-y:0px}.md\:translate-x-full,.md\:translate-y-0{transform:translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))}.md\:translate-x-full{--tw-translate-x:100%}.md\:translate-x-0{--tw-translate-x:0px}.md\:-translate-x-1\/3,.md\:translate-x-0{transform:translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))}.md\:-translate-x-1\/3{--tw-translate-x:-33.333333%}.md\:-translate-x-1\/2{--tw-translate-x:-50%;transform:translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))}.md\:grid-cols-2{grid-template-columns:repeat(2,minmax(0,1fr))}.md\:grid-cols-4{grid-template-columns:repeat(4,minmax(0,1fr))}.md\:grid-cols-1{grid-template-columns:repeat(1,minmax(0,1fr))}.md\:grid-cols-3{grid-template-columns:repeat(3,minmax(0,1fr))}.md\:grid-cols-\[42\%_minmax\(0\2c _1fr\)\]{grid-template-columns:42% minmax(0,1fr)}.md\:grid-rows-\[min-content_minmax\(0\2c _1fr\)\]{grid-template-rows:min-content minmax(0,1fr)}.md\:flex-row{flex-direction:row}.md\:flex-col{flex-direction:column}.md\:flex-col-reverse{flex-direction:column-reverse}.md\:flex-wrap{flex-wrap:wrap}.md\:flex-nowrap{flex-wrap:nowrap}.md\:items-start{align-items:flex-start}.md\:items-center{align-items:center}.md\:justify-start{justify-content:flex-start}.md\:justify-end{justify-content:flex-end}.md\:justify-center{justify-content:center}.md\:justify-between{justify-content:space-between}.md\:gap-6{gap:1.5rem}.md\:gap-4{gap:1rem}.md\:gap-0{gap:0}.md\:gap-1{gap:.25rem}.md\:gap-y-0{row-gap:0}.md\:gap-x-0{-moz-column-gap:0;column-gap:0}.md\:gap-x-2{-moz-column-gap:.5rem;column-gap:.5rem}.md\:gap-x-5{-moz-column-gap:1.25rem;column-gap:1.25rem}.md\:gap-x-6{-moz-column-gap:1.5rem;column-gap:1.5rem}.md\:space-x-4>:not([hidden])~:not([hidden]){--tw-space-x-reverse:0;margin-right:calc(1rem*var(--tw-space-x-reverse));margin-left:calc(1rem*(1 - var(--tw-space-x-reverse)))}.md\:space-y-0>:not([hidden])~:not([hidden]){--tw-space-y-reverse:0;margin-top:calc(0px*(1 - var(--tw-space-y-reverse)));margin-bottom:calc(0px*var(--tw-space-y-reverse))}.md\:space-x-6>:not([hidden])~:not([hidden]){--tw-space-x-reverse:0;margin-right:calc(1.5rem*var(--tw-space-x-reverse));margin-left:calc(1.5rem*(1 - var(--tw-space-x-reverse)))}.md\:overflow-hidden{overflow:hidden}.md\:border-0{border-width:0}.md\:border-\[3px\]{border-width:3px}.md\:border-b-0{border-bottom-width:0}.md\:border-t-0{border-top-width:0}.md\:border-l{border-left-width:1px}.md\:border-b{border-bottom-width:1px}.md\:border-dashed{border-style:dashed}.md\:border-secondary{--tw-border-opacity:1;border-color:rgb(52 181 208/var(--tw-border-opacity))}.md\:border-amrel-grey-border{--tw-border-opacity:1;border-color:rgb(233 246 255/var(--tw-border-opacity))}.md\:border-gray-200{--tw-border-opacity:1;border-color:rgb(229 231 235/var(--tw-border-opacity))}.md\:bg-transparent{background-color:initial}.md\:p-10{padding:2.5rem}.md\:p-0{padding:0}.md\:p-\[15px\]{padding:15px}.md\:p-\[5px\]{padding:5px}.md\:p-12{padding:3rem}.md\:px-4{padding-left:1rem;padding-right:1rem}.md\:py-0{padding-top:0;padding-bottom:0}.md\:px-0{padding-left:0;padding-right:0}.md\:py-4{padding-top:1rem;padding-bottom:1rem}.md\:py-3{padding-top:.75rem;padding-bottom:.75rem}.md\:px-1{padding-left:.25rem;padding-right:.25rem}.md\:px-6{padding-left:1.5rem;padding-right:1.5rem}.md\:py-6{padding-top:1.5rem;padding-bottom:1.5rem}.md\:px-8{padding-left:2rem;padding-right:2rem}.md\:px-10{padding-left:2.5rem;padding-right:2.5rem}.md\:pb-0{padding-bottom:0}.md\:pt-6{padding-top:1.5rem}.md\:pt-0{padding-top:0}.md\:pl-16{padding-left:4rem}.md\:pl-6{padding-left:1.5rem}.md\:pr-4{padding-right:1rem}.md\:text-left{text-align:left}.md\:text-center{text-align:center}.md\:text-base{font-size:1rem;line-height:1.5rem}.md\:text-2xl{font-size:1.5rem;line-height:2rem}.md\:text-sm{font-size:.875rem;letter-spacing:.025em}.md\:text-xl{font-size:1.25rem;line-height:1.75rem}.md\:text-lg{font-size:1.125rem;line-height:1.75rem}.md\:text-3xl{font-size:2rem;line-height:2.5rem}.md\:text-6xl{font-size:3.75rem;line-height:1}.md\:font-normal{font-weight:400}.md\:font-bold{font-weight:700}.md\:after\:hidden:after{content:var(--tw-content);display:none}}@media (min-width:1024px){.lg\:sr-only{width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0,0,0,0);white-space:nowrap;border-width:0}.lg\:absolute,.lg\:sr-only{position:absolute}.lg\:relative{position:relative}.lg\:sticky{position:sticky}.lg\:inset-y-0{top:0;bottom:0}.lg\:bottom-auto{bottom:auto}.lg\:right-auto{right:auto}.lg\:top-\[var\(--msrp-block-offset\)\]{top:var(--msrp-block-offset)}.lg\:left-\[var\(--msrp-inline-offset\)\]{left:var(--msrp-inline-offset)}.lg\:right-0{right:0}.lg\:left-0{left:0}.lg\:order-1{order:1}.lg\:order-2{order:2}.lg\:col-span-3{grid-column:span 3/span 3}.lg\:col-span-2{grid-column:span 2/span 2}.lg\:col-span-6{grid-column:span 6/span 6}.lg\:col-start-2{grid-column-start:2}.lg\:float-right{float:right}.lg\:my-8{margin-top:2rem;margin-bottom:2rem}.lg\:mx-0{margin-left:0;margin-right:0}.lg\:mt-10{margin-top:2.5rem}.lg\:mt-4{margin-top:1rem}.lg\:ml-2{margin-left:.5rem}.lg\:ml-0{margin-left:0}.lg\:mt-3{margin-top:.75rem}.lg\:ml-5{margin-left:1.25rem}.lg\:mt-8{margin-top:2rem}.lg\:mr-4{margin-right:1rem}.lg\:mt-auto{margin-top:auto}.lg\:block{display:block}.lg\:inline-block{display:inline-block}.lg\:inline{display:inline}.lg\:flex{display:flex}.lg\:table-cell{display:table-cell}.lg\:table-header-group{display:table-header-group}.lg\:table-row{display:table-row}.lg\:grid{display:grid}.lg\:hidden{display:none}.lg\:h-full{height:100%}.lg\:max-h-fit{max-height:-moz-fit-content;max-height:fit-content}.lg\:max-h-\[80\%\]{max-height:80%}.lg\:max-h-am-75{max-height:75vh}.lg\:w-1\/3{width:33.333333%}.lg\:w-2\/3{width:66.666667%}.lg\:w-7\/12{width:58.333333%}.lg\:w-3\/5{width:60%}.lg\:w-1\/4{width:25%}.lg\:w-3\/4{width:75%}.lg\:w-auto{width:auto}.lg\:w-1\/2{width:50%}.lg\:w-56{width:14rem}.lg\:w-\[320px\]{width:320px}.lg\:w-\[200px\]{width:200px}.lg\:max-w-2xl{max-width:42rem}.lg\:max-w-\[700px\]{max-width:700px}.lg\:max-w-xs{max-width:20rem}.lg\:max-w-none{max-width:none}.lg\:max-w-\[calc\(90\%-180px\)\]{max-width:calc(90% - 180px)}.lg\:flex-auto{flex:1 1 auto}.lg\:table-auto{table-layout:auto}.lg\:-translate-y-0{--tw-translate-y:-0px;transform:translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))}.lg\:grid-cols-4{grid-template-columns:repeat(4,minmax(0,1fr))}.lg\:grid-cols-8{grid-template-columns:repeat(8,minmax(0,1fr))}.lg\:grid-cols-3{grid-template-columns:repeat(3,minmax(0,1fr))}.lg\:grid-cols-2{grid-template-columns:repeat(2,minmax(0,1fr))}.lg\:grid-cols-6{grid-template-columns:repeat(6,minmax(0,1fr))}.lg\:flex-row{flex-direction:row}.lg\:flex-col{flex-direction:column}.lg\:flex-nowrap{flex-wrap:nowrap}.lg\:items-center{align-items:center}.lg\:justify-start{justify-content:flex-start}.lg\:justify-end{justify-content:flex-end}.lg\:justify-between{justify-content:space-between}.lg\:gap-6{gap:1.5rem}.lg\:gap-y-4{row-gap:1rem}.lg\:gap-y-10{row-gap:2.5rem}.lg\:gap-x-10{-moz-column-gap:2.5rem;column-gap:2.5rem}.lg\:gap-y-8{row-gap:2rem}.lg\:space-y-8>:not([hidden])~:not([hidden]){--tw-space-y-reverse:0;margin-top:calc(2rem*(1 - var(--tw-space-y-reverse)));margin-bottom:calc(2rem*var(--tw-space-y-reverse))}.lg\:border-0{border-width:0}.lg\:border-b{border-bottom-width:1px}.lg\:border-t{border-top-width:1px}.lg\:border-b-0{border-bottom-width:0}.lg\:border-r-2{border-right-width:2px}.lg\:border-none{border-style:none}.lg\:border-amrel-grey-border{--tw-border-opacity:1;border-color:rgb(233 246 255/var(--tw-border-opacity))}.lg\:px-0{padding-left:0;padding-right:0}.lg\:py-4{padding-top:1rem;padding-bottom:1rem}.lg\:py-6{padding-top:1.5rem;padding-bottom:1.5rem}.lg\:px-32{padding-left:8rem;padding-right:8rem}.lg\:px-5{padding-left:1.25rem;padding-right:1.25rem}.lg\:py-2{padding-top:.5rem;padding-bottom:.5rem}.lg\:px-8{padding-left:2rem;padding-right:2rem}.lg\:py-32{padding-top:8rem;padding-bottom:8rem}.lg\:px-16{padding-left:4rem;padding-right:4rem}.lg\:py-8{padding-top:2rem;padding-bottom:2rem}.lg\:py-48{padding-top:12rem;padding-bottom:12rem}.lg\:pt-4{padding-top:1rem}.lg\:pl-6{padding-left:1.5rem}.lg\:pr-6{padding-right:1.5rem}.lg\:pr-8{padding-right:2rem}.lg\:pl-24{padding-left:6rem}.lg\:pt-2{padding-top:.5rem}.lg\:pb-0{padding-bottom:0}.lg\:pt-8{padding-top:2rem}.lg\:pt-0{padding-top:0}.lg\:text-left{text-align:left}.lg\:text-center{text-align:center}.lg\:text-right{text-align:right}.lg\:text-xl{font-size:1.25rem;line-height:1.75rem}.lg\:text-base{font-size:1rem;line-height:1.5rem}.lg\:text-sm{font-size:.875rem;letter-spacing:.025em}.lg\:text-6xl{font-size:3.75rem;line-height:1}.lg\:text-5xl{font-size:3rem;line-height:1}.lg\:leading-8{line-height:2rem}.lg\:text-gray-300{--tw-text-opacity:1;color:rgb(209 213 219/var(--tw-text-opacity))}.lg\:text-amrel-grey-border{--tw-text-opacity:1;color:rgb(233 246 255/var(--tw-text-opacity))}.lg\:shadow-lg{--tw-shadow:0 10px 15px -3px #0000001a,0 4px 6px -4px #0000001a;--tw-shadow-colored:0 10px 15px -3px var(--tw-shadow-color),0 4px 6px -4px var(--tw-shadow-color);box-shadow:var(--tw-ring-offset-shadow,0 0 #0000),var(--tw-ring-shadow,0 0 #0000),var(--tw-shadow)}}@media (min-width:1280px){.xl\:absolute{position:absolute}.xl\:bottom-0{bottom:0}.xl\:order-none{order:0}.xl\:order-1{order:1}.xl\:order-2{order:2}.xl\:order-3{order:3}.xl\:order-4{order:4}.xl\:order-5{order:5}.xl\:order-first{order:-9999}.xl\:order-last{order:9999}.xl\:col-span-2{grid-column:span 2/span 2}.xl\:m-0{margin:0}.xl\:my-12{margin-top:3rem;margin-bottom:3rem}.xl\:mt-0{margin-top:0}.xl\:mt-2{margin-top:.5rem}.xl\:mt-4{margin-top:1rem}.xl\:mt-6{margin-top:1.5rem}.xl\:mr-0{margin-right:0}.xl\:ml-20{margin-left:5rem}.xl\:mt-10{margin-top:2.5rem}.xl\:-mt-12{margin-top:-3rem}.xl\:block{display:block}.xl\:inline{display:inline}.xl\:flex{display:flex}.xl\:hidden{display:none}.xl\:h-screen{height:100vh}.xl\:h-auto{height:auto}.xl\:h-\[116px\]{height:116px}.xl\:max-h-\[80vh\]{max-height:80vh}.xl\:w-1\/3{width:33.333333%}.xl\:w-2\/3{width:66.666667%}.xl\:w-1\/4{width:25%}.xl\:w-\[200px\]{width:200px}.xl\:w-full{width:100%}.xl\:w-7\/12{width:58.333333%}.xl\:w-auto{width:auto}.xl\:w-5\/12{width:41.666667%}.xl\:w-1\/2{width:50%}.xl\:max-w-\[140px\]{max-width:140px}.xl\:flex-1{flex:1 1 0%}.xl\:grow{flex-grow:1}.xl\:grid-cols-4{grid-template-columns:repeat(4,minmax(0,1fr))}.xl\:grid-cols-3{grid-template-columns:repeat(3,minmax(0,1fr))}.xl\:flex-row{flex-direction:row}.xl\:flex-wrap{flex-wrap:wrap}.xl\:items-center{align-items:center}.xl\:justify-end{justify-content:flex-end}.xl\:justify-center{justify-content:center}.xl\:gap-4{gap:1rem}.xl\:gap-6{gap:1.5rem}.xl\:gap-x-8{-moz-column-gap:2rem;column-gap:2rem}.xl\:space-x-4>:not([hidden])~:not([hidden]){--tw-space-x-reverse:0;margin-right:calc(1rem*var(--tw-space-x-reverse));margin-left:calc(1rem*(1 - var(--tw-space-x-reverse)))}.xl\:space-y-0>:not([hidden])~:not([hidden]){--tw-space-y-reverse:0;margin-top:calc(0px*(1 - var(--tw-space-y-reverse)));margin-bottom:calc(0px*var(--tw-space-y-reverse))}.xl\:whitespace-nowrap{white-space:nowrap}.xl\:rounded-none{border-radius:0}.xl\:rounded-l-md{border-top-left-radius:.375rem;border-bottom-left-radius:.375rem}.xl\:rounded-r-md{border-top-right-radius:.375rem;border-bottom-right-radius:.375rem}.xl\:border-r-0{border-right-width:0}.xl\:border-none{border-style:none}.xl\:py-8{padding-top:2rem;padding-bottom:2rem}.xl\:py-0{padding-top:0;padding-bottom:0}.xl\:px-4{padding-left:1rem;padding-right:1rem}.xl\:px-2{padding-left:.5rem;padding-right:.5rem}.xl\:pr-0{padding-right:0}.xl\:pl-12{padding-left:3rem}.xl\:pr-8{padding-right:2rem}.xl\:pt-0{padding-top:0}.xl\:pt-12{padding-top:3rem}.xl\:pb-0{padding-bottom:0}.xl\:pr-16{padding-right:4rem}.xl\:pl-16{padding-left:4rem}.xl\:text-left{text-align:left}.xl\:text-center{text-align:center}.xl\:text-2xl{font-size:1.5rem;line-height:2rem}.xl\:text-base{font-size:1rem;line-height:1.5rem}.xl\:text-xl{font-size:1.25rem;line-height:1.75rem}.xl\:text-sm{font-size:.875rem;letter-spacing:.025em}.xl\:text-6xl{font-size:3.75rem;line-height:1}.xl\:font-semibold{font-weight:600}.xl\:duration-500{transition-duration:.5s}}@media (min-width:1536px){.\32xl\:left-\[-64px\]{left:-64px}.\32xl\:block{display:block}.\32xl\:w-12{width:3rem}.\32xl\:max-w-none{max-width:none}.\32xl\:px-12{padding-left:3rem;padding-right:3rem}.\32xl\:px-6{padding-left:1.5rem;padding-right:1.5rem}.\32xl\:pl-14{padding-left:3.5rem}.\32xl\:text-xl{font-size:1.25rem;line-height:1.75rem}.\32xl\:text-base{font-size:1rem;line-height:1.5rem}.\32xl\:text-2xl{font-size:1.5rem;line-height:2rem}}.\[\&_\>\*\]\:px-2>*{padding-left:.5rem;padding-right:.5rem}.\[\&_\.price\]\:font-normal .price{font-weight:400}.\[\&\>\:not\(\.loader\)\]\:invisible>:not(.loader){visibility:hidden}

@media (min-width: 640px) {
.cmsp294-container {
max-width: 640px
}
}
@media (min-width: 768px) {
.cmsp294-container {
max-width: 768px
}
}
@media (min-width: 1024px) {
.cmsp294-container {
max-width: 1024px
}
}
@media (min-width: 1280px) {
.cmsp294-container {
max-width: 1280px
}
}
@media (min-width: 1536px) {
.cmsp294-container {
max-width: 1536px
}
}
.cmsp294-sr-only {
position: absolute;
width: 1px;
height: 1px;
padding: 0;
margin: -1px;
overflow: hidden;
clip: rect(0, 0, 0, 0);
white-space: nowrap;
border-width: 0
}
.cmsp294-absolute {
position: absolute
}
.cmsp294-relative {
position: relative
}
.cmsp294-inset-x-0 {
left: 0px;
right: 0px
}
.cmsp294-bottom-0 {
bottom: 0px
}
.cmsp294-left-0 {
left: 0px
}
.cmsp294-right-0 {
right: 0px
}
.cmsp294-z-10 {
z-index: 10
}
.cmsp294-col-span-12 {
grid-column: span 12 / span 12
}
.cmsp294-m-0 {
margin: 0px
}
.cmsp294-mx-auto {
margin-left: auto;
margin-right: auto
}
.cmsp294-flex {
display: flex
}
.cmsp294-grid {
display: grid
}
.cmsp294-hidden {
display: none
}
.cmsp294-h-\[30\%\] {
height: 30%
}
.cmsp294-w-2\/4 {
width: 50%
}
.cmsp294-w-full {
width: 100%
}
.cmsp294-grid-cols-12 {
grid-template-columns: repeat(12, minmax(0, 1fr))
}
.cmsp294-flex-row {
flex-direction: row
}
.cmsp294-flex-col {
flex-direction: column
}
.cmsp294-items-center {
align-items: center
}
.cmsp294-gap-1 {
gap: 0.25rem
}
.cmsp294-gap-2 {
gap: 0.5rem
}
.cmsp294-gap-4 {
gap: 1rem
}
.cmsp294-gap-8 {
gap: 2rem
}
.cmsp294-border-b {
border-bottom-width: 1px
}
.cmsp294-border-l {
border-left-width: 1px
}
.cmsp294-border-r {
border-right-width: 1px
}
.cmsp294-border-t {
border-top-width: 1px
}
.cmsp294-border-white {
--tw-border-opacity: 1;
border-color: rgb(255 255 255 / var(--tw-border-opacity))
}
.cmsp294-bg-gradient-to-t {
background-image: linear-gradient(to top, var(--tw-gradient-stops))
}
.cmsp294-from-black\/50 {
--tw-gradient-from: rgb(0 0 0 / 0.5) var(--tw-gradient-from-position);
--tw-gradient-to: rgb(0 0 0 / 0) var(--tw-gradient-to-position);
--tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to)
}
.cmsp294-to-transparent {
--tw-gradient-to: transparent var(--tw-gradient-to-position)
}
.cmsp294-p-0 {
padding: 0px
}
.cmsp294-p-6 {
padding: 1.5rem
}
.cmsp294-px-6 {
padding-left: 1.5rem;
padding-right: 1.5rem
}
.cmsp294-py-8 {
padding-top: 2rem;
padding-bottom: 2rem
}
.cmsp294-pl-px {
padding-left: 1px
}
.cmsp294-text-left {
text-align: left
}
.cmsp294-text-center {
text-align: center
}
.cmsp294-text-right {
text-align: right
}
.cmsp294-text-base {
font-size: 1rem;
line-height: 1.5rem
}
.cmsp294-text-sm {
font-size: 0.875rem;
line-height: 1.25rem
}
.cmsp294-text-xl {
font-size: 1.25rem;
line-height: 1.75rem
}
.cmsp294-font-medium {
font-weight: 500
}
.cmsp294-font-semibold {
font-weight: 600
}
.cmsp294-uppercase {
text-transform: uppercase
}
.cmsp294-text-white {
--tw-text-opacity: 1;
color: rgb(255 255 255 / var(--tw-text-opacity))
}
.cmsp294-ring-\[\#34B5D0\] {
--tw-ring-opacity: 1;
--tw-ring-color: rgb(52 181 208 / var(--tw-ring-opacity))
}
.cmsp294-group:hover .group-hover\:underline {
text-decoration-line: underline
}
.cmsp294-group:focus .group-focus\:ring {
--tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
--tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(3px + var(--tw-ring-offset-width)) var(--tw-ring-color);
box-shadow: var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow, 0 0 #0000)
}
@media (min-width: 768px) {
.cmsp294-md\:col-span-4 {
grid-column: span 4 / span 4
}
.cmsp294-md\:w-full {
width: 100%
}
.cmsp294-md\:max-w-\[80\%\] {
max-width: 80%
}
.cmsp294-md\:flex-col {
flex-direction: column
}
.cmsp294-md\:items-center {
align-items: center
}
.cmsp294-md\:gap-2 {
gap: 0.5rem
}
.cmsp294-md\:gap-6 {
gap: 1.5rem
}
.cmsp294-md\:py-16 {
padding-top: 4rem;
padding-bottom: 4rem
}
.cmsp294-md\:pr-px {
padding-right: 1px
}
.cmsp294-md\:text-center {
text-align: center
}
.cmsp294-md\:text-2xl {
font-size: 1.5rem;
line-height: 2rem
}
.cmsp294-md\:text-base {
font-size: 1rem;
line-height: 1.5rem
}
.cmsp294-md\:text-xl {
font-size: 1.25rem;
line-height: 1.75rem
}
}
@media (min-width: 1024px) {
.cmsp294-lg\:block {
display: block
}
.cmsp294-lg\:hidden {
display: none
}
.cmsp294-lg\:max-w-\[70\%\] {
max-width: 70%
}
.cmsp294-lg\:items-start {
align-items: flex-start
}
.cmsp294-lg\:items-end {
align-items: flex-end
}
.cmsp294-lg\:p-10 {
padding: 2.5rem
}
.cmsp294-lg\:text-left {
text-align: left
}
.cmsp294-lg\:text-right {
text-align: right
}
}
@media (min-width: 1280px) {
.cmsp294-xl\:w-2\/4 {
width: 50%
}
.cmsp294-xl\:flex-row {
flex-direction: row
}
.cmsp294-xl\:border-l {
border-left-width: 1px
}
.cmsp294-xl\:border-r {
border-right-width: 1px
}
}</style>
<style>#html-body [data-pb-style=JUPILWP]{justify-content:flex-start;display:flex;flex-direction:column;background-position:left top;background-size:cover;background-repeat:no-repeat;background-attachment:scroll;text-align:center;margin:0;padding:0}#html-body [data-pb-style=MS44R6R]{padding-top:1px;padding-bottom:1px}#html-body [data-pb-style=LM6SCGC],#html-body [data-pb-style=PE0QNQW]{justify-content:flex-start;display:flex;flex-direction:column;background-size:cover;background-repeat:no-repeat;background-attachment:scroll;margin:0;padding:0}#html-body [data-pb-style=PE0QNQW]{background-position:left top;text-align:center}#html-body [data-pb-style=LM6SCGC]{background-position:center center;width:50%;align-self:stretch}#html-body [data-pb-style=CUJE4PL]{margin:0;padding:1px 0}#html-body [data-pb-style=B8PEM1Q]{justify-content:flex-start;display:flex;flex-direction:column;background-position:center center;background-size:cover;background-repeat:no-repeat;background-attachment:scroll;text-align:center;width:50%;margin:0;padding:0;align-self:stretch}#html-body [data-pb-style=WP7IAGY]{margin:0;padding:1px 0}#html-body [data-pb-style=MG7FE72]{justify-content:flex-start;display:flex;flex-direction:column;background-position:left top;background-size:cover;background-repeat:no-repeat;background-attachment:scroll}#html-body [data-pb-style=G1356OX],#html-body [data-pb-style=PT3ML35],#html-body [data-pb-style=XR4F1UH]{margin:0;padding:1px 0}#html-body [data-pb-style=V84ECJP]{text-align:center;margin:0;padding:0}#html-body [data-pb-style=D51I0UL]{padding-top:1px;padding-bottom:1px}#html-body [data-pb-style=BYX82H5]{margin:0;padding:1px 0}#html-body [data-pb-style=XB04PDG]{justify-content:flex-start;display:flex;flex-direction:column;background-position:left top;background-size:cover;background-repeat:no-repeat;background-attachment:scroll}#html-body [data-pb-style=USYRRX1]{margin:0;padding:1px 0}</style><div data-content-type="row" data-appearance="full-bleed" data-enable-parallax="0" data-parallax-speed="0.5" data-background-images="{}" data-background-type="image" data-video-loop="true" data-video-play-only-visible="true" data-video-lazy-load="true" data-video-fallback-src="" data-element="main" data-pb-style="JUPILWP"><div data-content-type="html" data-appearance="default" data-element="main" data-pb-style="MS44R6R" data-decoded="true"><h1 class="cmsp294-sr-only">Lladró, art porcelain figurines and sculptures</h1>
<!-- Banner Jade Purple-->
{/literal}
<a href="https://www.lladro.com/en_us/the-guest-jade-purple-brown/">
    <div class="cmsp294-relative cmsp294-w-full cmsp294-group">

      
      <img width="1920" height="980" class="cmsp294-w-full cmsp294-hidden cmsp294-lg:block" src="https://www.lladro.com/media/wysiwyg/banners/home/23_10/banner1.jpg" alt="Know latest The Guest by Jade Purple">
      <img width="1242" height="2208" class="cmsp294-w-full cmsp294-lg:hidden nolazy" loading="eager" fetchpriority="high" src="https://www.lladro.com/media/wysiwyg/banners/home/23_10/banner1-mobile.jpg" alt="Know latest The Guest by Jade Purple">
      
      
    </div>
</a></div></div><div class="cmsp294-m-0 cmsp294-p-0" data-content-type="row" data-appearance="full-bleed" data-enable-parallax="0" data-parallax-speed="0.5" data-background-images="{}" data-background-type="image" data-video-loop="true" data-video-play-only-visible="true" data-video-lazy-load="true" data-video-fallback-src="" data-element="main" data-pb-style="PE0QNQW"><div class="pagebuilder-column-group" style="display: flex;" data-content-type="column-group" data-grid-size="12" data-element="main"><div class="pagebuilder-column" data-content-type="column" data-appearance="full-height" data-background-images="{}" data-element="main" data-pb-style="LM6SCGC"><div class="cmsp294-md:pr-px" data-content-type="html" data-appearance="default" data-element="main" data-pb-style="CUJE4PL" data-decoded="true"><!-- Heritage --><a href="https://www.lladro.com/en_us/the-guest-jade-purple-brown/">

</a><a class="cmsp294-group" href="https://www.lladro.com/en_us/classic">
    <div class="cmsp294-relative cmsp294-w-full cmsp294-border-r cmsp294-border-white">
        <div class="cmsp294-absolute cmsp294-inset-x-0 cmsp294-bottom-0 cmsp294-h-[30%] cmsp294-bg-gradient-to-t cmsp294-from-black/50 cmsp294-to-transparent cmsp294-z-10"></div>
        
        <img width="958" height="980" loading="lazy" class="cmsp294-w-full nolazy" src="https://www.lladro.com/media/wysiwyg/banners/home/23_10/heritage.jpg" alt="Heritage collection">
    
        <div class="cmsp294-w-full cmsp294-lg:max-w-[70%] cmsp294-flex cmsp294-flex-col cmsp294-items-center cmsp294-lg:items-end cmsp294-p-6 cmsp294-lg:p-10 cmsp294-gap-1 cmsp294-md:gap-2 cmsp294-z-10 cmsp294-absolute cmsp294-bottom-0 cmsp294-right-0">
        <h2 class="cmsp294-text-xl cmsp294-md:text-2xl cmsp294-text-right cmsp294-font-medium cmsp294-text-white group-focus:ring cmsp294-ring-[#34B5D0] group-hover:underline">Heritage</h2>
        <span class="cmsp294-text-sm cmsp294-md:text-base cmsp294-text-center cmsp294-lg:text-right cmsp294-text-white">Universal sentiments, traditions and culture</span>
        </div>
    </div>
    </a></div></div><div class="pagebuilder-column" data-content-type="column" data-appearance="full-height" data-background-images="{}" data-element="main" data-pb-style="B8PEM1Q"><div class="cmsp294-pl-px" data-content-type="html" data-appearance="default" data-element="main" data-pb-style="WP7IAGY" data-decoded="true"><!-- Design -->

<a class="cmsp294-group" href="https://www.lladro.com/en_us/design">
  <div class="cmsp294-relative cmsp294-w-full cmsp294-border-l cmsp294-border-white">
    <div class="cmsp294-absolute cmsp294-inset-x-0 cmsp294-bottom-0 cmsp294-h-[30%] cmsp294-bg-gradient-to-t cmsp294-from-black/50 cmsp294-to-transparent cmsp294-z-10"></div>
    <img width="958" height="980" loading="lazy" class="cmsp294-w-full nolazy" src="https://www.lladro.com/media/wysiwyg/banners/home/23_10/design.jpg" alt="Design collection">
    <div class="cmsp294-w-full cmsp294-md:max-w-[80%] cmsp294-flex cmsp294-flex-col cmsp294-items-center cmsp294-lg:items-start cmsp294-p-6 cmsp294-lg:p-10 cmsp294-gap-1 cmsp294-md:gap-2 cmsp294-z-10 cmsp294-absolute cmsp294-bottom-0 cmsp294-left-0">
      <h2 class="cmsp294-text-xl cmsp294-md:text-2xl cmsp294-text-white cmsp294-text-left cmsp294-font-medium group-focus:ring cmsp294-ring-[#34B5D0] group-hover:underline">Design</h2>
      <span class="cmsp294-text-white cmsp294-text-sm cmsp294-md:text-base cmsp294-text-center cmsp294-lg:text-left">Innovation, experimentation and design</span>
    </div>
    
  </div>
</a></div></div></div></div><div data-content-type="row" data-appearance="full-bleed" data-enable-parallax="0" data-parallax-speed="0.5" data-background-images="{}" data-background-type="image" data-video-loop="true" data-video-play-only-visible="true" data-video-lazy-load="true" data-video-fallback-src="" data-element="main" data-pb-style="MG7FE72"><div data-content-type="html" data-appearance="default" data-element="main" data-pb-style="PT3ML35" data-decoded="true"><!-- art editions -->

<a class="cmsp294-group" href="https://www.lladro.com/en_us/little-devil-cat">
  <div class="cmsp294-relative cmsp294-w-full cmsp294-group">
    <div class="cmsp294-absolute cmsp294-inset-x-0 cmsp294-bottom-0 cmsp294-h-[30%] cmsp294-bg-gradient-to-t cmsp294-from-black/50 cmsp294-to-transparent cmsp294-z-10"></div>
    <img width="1920" height="980" class="cmsp294-w-full cmsp294-hidden cmsp294-lg:block" src="https://www.lladro.com/media/wysiwyg/banners/home/23_10/art-editions.jpg" alt="Art Editions by Javier Calleja">
    <img width="1242" height="2208" loading="lazy" class="cmsp294-w-full nolazy cmsp294-lg:hidden" src="https://www.lladro.com/media/wysiwyg/banners/home/23_10/art-editions-mobile.jpg" alt="Art Editions by Javier Calleja">
    <div class="cmsp294-flex cmsp294-flex-col cmsp294-items-center cmsp294-p-6 cmsp294-lg:p-10 cmsp294-gap-1 cmsp294-md:gap-2 cmsp294-z-10 cmsp294-absolute cmsp294-bottom-0 cmsp294-inset-x-0">
      <h2 class=" cmsp294-text-xl cmsp294-md:text-2xl cmsp294-text-white cmsp294-font-semibold cmsp294-text-center cmsp294-uppercase group-hover:underline group-focus:ring cmsp294-ring-[#34B5D0]">Little Devil Cat</h2>
      <span class="cmsp294-text-white cmsp294-text-sm cmsp294-md:text-base">Nueva creación del artista Javier Calleja</span>
    </div>
    
  </div>
</a></div><div data-content-type="html" data-appearance="default" data-element="main" data-pb-style="G1356OX" data-decoded="true"><!-- High Porcelain -->

<a class="cmsp294-group" href="https://www.lladro.com/en_us/high-porcelain">
  <div class="cmsp294-relative cmsp294-w-full cmsp294-group">
    <div class="cmsp294-absolute cmsp294-inset-x-0 cmsp294-bottom-0 cmsp294-h-[30%] cmsp294-bg-gradient-to-t cmsp294-from-black/50 cmsp294-to-transparent cmsp294-z-10"></div>
    <img width="1920" height="980" class="cmsp294-w-full cmsp294-hidden cmsp294-lg:block" src="https://www.lladro.com/media/wysiwyg/banners/home/23_10/high-porcelain.jpg" alt="High Porcelain collection">
    <img width="1242" height="2208" loading="lazy" class="cmsp294-w-full nolazy cmsp294-lg:hidden" src="https://www.lladro.com/media/wysiwyg/banners/home/23_10/high-porcelain-mobile.jpg" alt="High Porcelain - collection">
    <div class="cmsp294-flex cmsp294-flex-col cmsp294-items-center cmsp294-p-6 cmsp294-lg:p-10 cmsp294-gap-1 cmsp294-md:gap-2 cmsp294-z-10 cmsp294-absolute cmsp294-bottom-0 cmsp294-inset-x-0">
      <h2 class="cmsp294-text-xl cmsp294-md:text-2xl cmsp294-text-white cmsp294-font-medium group-focus:ring cmsp294-ring-[#34B5D0] group-hover:underline">High Porcelain</h2>
      <span class="cmsp294-text-white cmsp294-text-sm cmsp294-md:text-base cmsp294-text-center">Mastery and excellence, the most exquisite and extraordinary creations</span>
    </div>
    
  </div>
</a></div><div data-content-type="html" data-appearance="default" data-element="main" data-pb-style="XR4F1UH" data-decoded="true"><!-- Light and Scent-->

<a class="cmsp294-group" href="https://www.lladro.com/en_us/light-scent">
  <div class="cmsp294-relative cmsp294-w-full">
    
    <div class="cmsp294-absolute cmsp294-inset-x-0 cmsp294-bottom-0 cmsp294-h-[30%] cmsp294-bg-gradient-to-t cmsp294-from-black/50 cmsp294-to-transparent cmsp294-z-10"></div>
    
    <div class="cmsp294-flex cmsp294-flex-col cmsp294-xl:flex-row">
      <img class="cmsp294-w-full cmsp294-xl:w-2/4 cmsp294-border-b cmsp294-xl:border-r cmsp294-border-white nolazy" width="980" height="980" loading="lazy" src="https://www.lladro.com/media/wysiwyg/banners/home/23_10/light.jpg" alt="Light and Scent collections">
      <img class="cmsp294-w-full cmsp294-xl:w-2/4 cmsp294-border-t cmsp294-xl:border-l cmsp294-border-white nolazy" width="980" height="980" loading="lazy" src="https://www.lladro.com/media/wysiwyg/banners/home/23_10/scent.jpg" alt="Light and Scent collections">
    </div>
    
    <div class="cmsp294-flex cmsp294-flex-col cmsp294-items-center cmsp294-p-6 cmsp294-lg:p-10 cmsp294-gap-1 cmsp294-md:gap-2 cmsp294-z-10 cmsp294-absolute cmsp294-bottom-0 cmsp294-inset-x-0">
      <h2 class="cmsp294-text-xl cmsp294-md:text-2xl cmsp294-text-white cmsp294-font-medium group-focus:ring cmsp294-ring-[#34B5D0] group-hover:underline">Light and Scent</h2>
      <span class="cmsp294-text-white cmsp294-text-sm cmsp294-md:text-base cmsp294-text-center">Wireless lights and home fragances</span>
    </div>
    
  </div>
</a>  </div><div data-content-type="html" data-appearance="default" data-element="main" data-pb-style="V84ECJP" data-decoded="true"><!-- Licenses -->

<a class="cmsp294-group" href="https://www.lladro.com/en_us/licenses">
  <div class="cmsp294-relative cmsp294-w-full">
    <div class="cmsp294-absolute cmsp294-inset-x-0 cmsp294-bottom-0 cmsp294-h-[30%] cmsp294-bg-gradient-to-t cmsp294-from-black/50 cmsp294-to-transparent cmsp294-z-10"></div>
    <img class="cmsp294-w-full cmsp294-hidden cmsp294-lg:block" width="1920" height="1080" src="https://www.lladro.com/media/wysiwyg/banners/home/23_10/licenses.jpg" alt="License collection">
    <img class="cmsp294-w-full  nolazy cmsp294-lg:hidden" width="780" height="1280" loading="lazy" src="https://www.lladro.com/media/wysiwyg/banners/home/23_10/licenses-mobile.jpg" alt="License collection">

      <div class="cmsp294-flex cmsp294-flex-col cmsp294-items-center cmsp294-p-6 cmsp294-lg:p-10 cmsp294-gap-1 cmsp294-md:gap-2 cmsp294-z-10 cmsp294-absolute cmsp294-bottom-0 cmsp294-inset-x-0">
        <h2 class="cmsp294-text-xl cmsp294-md:text-2xl cmsp294-text-white cmsp294-font-medium group-focus:ring cmsp294-ring-[#34B5D0] group-hover:underline">Iconic characters</h2>
        <span class="cmsp294-text-white cmsp294-text-sm cmsp294-md:text-base cmsp294-text-center">Connect with the magic</span>
      </div>
    
  </div>
</a></div><div data-content-type="html" data-appearance="default" data-element="main" data-pb-style="D51I0UL" data-decoded="true"><!-- Jewelry-->

<a class="cmsp294-group" href="https://www.lladro.com/en_us/jewelry">
  <div class="cmsp294-relative cmsp294-w-full">
    
    <div class="cmsp294-absolute cmsp294-inset-x-0 cmsp294-bottom-0 cmsp294-h-[30%] cmsp294-bg-gradient-to-t cmsp294-from-black/50 cmsp294-to-transparent cmsp294-z-10"></div>

    <img width="1920" height="980" class="cmsp294-w-full cmsp294-hidden cmsp294-lg:block" src="https://www.lladro.com/media/wysiwyg/banners/home/23_10/jewelry.jpg" alt="Jewelry collections">
    <img width="1242" height="2208" loading="lazy" class="cmsp294-w-full nolazy cmsp294-lg:hidden" src="https://www.lladro.com/media/wysiwyg/banners/home/23_10/jewelry-mobile.jpg" alt="Jewelry collections">

      <div class="cmsp294-flex cmsp294-flex-col cmsp294-items-center cmsp294-p-6 cmsp294-lg:p-10 cmsp294-gap-1 cmsp294-md:gap-2 cmsp294-z-10 cmsp294-absolute cmsp294-bottom-0 cmsp294-inset-x-0">
        <h2 class="cmsp294-text-xl cmsp294-md:text-2xl cmsp294-text-right cmsp294-font-medium cmsp294-text-white group-focus:ring cmsp294-ring-[#34B5D0] group-hover:underline">Jewelry</h2>
        <span class="cmsp294-text-white cmsp294-text-sm cmsp294-md:text-base cmsp294-text-center">Porcelain to wear. Jewelry with a sign of identity</span>
      </div>
  </div>
</a>  </div><div data-content-type="html" data-appearance="default" data-element="main" data-pb-style="BYX82H5" data-decoded="true"><!-- Lighting-->

<a class="cmsp294-group" href="https://www.lladro.com/en_us/lighting">
  <div class="cmsp294-relative cmsp294-w-full">
    
    <div class="cmsp294-absolute cmsp294-inset-x-0 cmsp294-bottom-0 cmsp294-h-[30%] cmsp294-bg-gradient-to-t cmsp294-from-black/50 cmsp294-to-transparent cmsp294-z-10"></div>

    <img width="1920" height="980" class="cmsp294-w-full cmsp294-hidden cmsp294-lg:block" src="https://www.lladro.com/media/wysiwyg/banners/home/23_10/lighting.jpg" alt="lighting collections">
    <img width="1242" height="2208" loading="lazy" class="cmsp294-w-full nolazy cmsp294-lg:hidden" src="https://www.lladro.com/media/wysiwyg/banners/home/23_10/lighting-mobile.jpg" alt="lighting collections">

      <div class="cmsp294-flex cmsp294-flex-col cmsp294-items-center cmsp294-p-6 cmsp294-lg:p-10 cmsp294-gap-1 cmsp294-md:gap-2 cmsp294-z-10 cmsp294-absolute cmsp294-bottom-0 cmsp294-inset-x-0">
        <h2 class="cmsp294-text-xl cmsp294-md:text-2xl cmsp294-text-right cmsp294-font-medium cmsp294-text-white group-focus:ring cmsp294-ring-[#34B5D0] group-hover:underline">Lighting</h2>
        <span class="cmsp294-text-white cmsp294-text-sm cmsp294-md:text-base cmsp294-text-center">Surprising lights, with decorative strength and organic inspiration</span>
      </div>
  </div>
</a>  </div></div><div data-content-type="row" data-appearance="full-bleed" data-enable-parallax="0" data-parallax-speed="0.5" data-background-images="{}" data-background-type="image" data-video-loop="true" data-video-play-only-visible="true" data-video-lazy-load="true" data-video-fallback-src="" data-element="main" data-pb-style="XB04PDG"><div data-content-type="html" data-appearance="default" data-element="main" data-pb-style="USYRRX1" data-decoded="true"><!-- corporate gifts-->

<a class="cmsp294-group" href="https://www.lladro.com/en_us/corporate-gifts-and-special-occasions/">
    <div class="cmsp294-relative cmsp294-w-full">
      <div class="cmsp294-absolute cmsp294-inset-x-0 cmsp294-bottom-0 cmsp294-h-[30%] cmsp294-bg-gradient-to-t cmsp294-from-black/50 cmsp294-to-transparent cmsp294-z-10"></div>
      
      <img width="1920" height="980" class="cmsp294-w-full cmsp294-hidden cmsp294-lg:block" src="https://www.lladro.com/media/wysiwyg/banners/home/corporate_gifts.jpg" alt="Purchase Corporate gifts">
      <img width="1242" height="2208" loading="lazy" class="cmsp294-w-full nolazy cmsp294-lg:hidden" src="https://www.lladro.com/media/wysiwyg/banners/home/corporate_gifts_mobile.jpg" alt="Purchase Corporate gifts">
      
      <div class="cmsp294-flex cmsp294-flex-col cmsp294-items-center cmsp294-p-6 cmsp294-lg:p-10 cmsp294-gap-1 cmsp294-md:gap-2 cmsp294-z-10 cmsp294-absolute cmsp294-bottom-0 cmsp294-inset-x-0">
        <h2 class="cmsp294-text-xl cmsp294-md:text-2xl cmsp294-text-white cmsp294-font-medium group-focus:ring cmsp294-ring-[#34B5D0] group-hover:underline">Corporate gifts</h2>
        <span class="cmsp294-text-white cmsp294-text-sm cmsp294-md:text-base cmsp294-text-center">Creations to celebrate any special occasion<span>
      </span></span></div>
    </div>
  </a>
</div><div class="cmsp294-w-full" data-content-type="html" data-appearance="default" data-element="main" data-decoded="true"><!-- Universo Lladró -->

<div class="cmsp294-container cmsp294-mx-auto cmsp294-flex cmsp294-flex-col cmsp294-gap-8 cmsp294-items-center cmsp294-py-8 cmsp294-md:py-16 cmsp294-px-6">
  <h2 class="cmsp294-text-xl cmsp294-md:text-2xl cmsp294-font-semibold">World of Lladró</h2>
  <div class="cmsp294-grid cmsp294-grid-cols-12 cmsp294-gap-4 cmsp294-md:gap-6">
    
    <a class="cmsp294-col-span-12 cmsp294-md:col-span-4 cmsp294-flex cmsp294-flex-row cmsp294-md:flex-col cmsp294-items-center cmsp294-gap-4 cmsp294-group" href="https://www.lladro.com/en_us/the-guest-collection/">
      <div class="cmsp294-w-2/4 cmsp294-md:w-full">
        <img width="902" height="740" src="https://www.lladro.com/media/wysiwyg/banners/home/15_08/universo1.jpg" alt="">
      </div>
      <div class="cmsp294-w-2/4 cmsp294-md:w-full cmsp294-flex cmsp294-flex-col cmsp294-md:items-center cmsp294-gap-2">
        <h3 class="cmsp294-text-base cmsp294-text-center cmsp294-md:text-xl cmsp294-font-medium group-hover:underline">New The Guest indigo blue</h3>
        <p class="cmsp294-md:text-center cmsp294-text-sm cmsp294-md:text-base">Don't miss it</p>
      </div>
    </a>
    
    <a class="cmsp294-col-span-12 cmsp294-md:col-span-4 cmsp294-flex cmsp294-flex-row cmsp294-md:flex-col cmsp294-items-center cmsp294-gap-4 cmsp294-group" href="https://www.perfumesloewe.com/loewe-x-lladro/discover-the-collection/">
      <div class="cmsp294-w-2/4 cmsp294-md:w-full">
        <img width="902" height="740" src="https://www.lladro.com/media/wysiwyg/banners/home/16_09/universo2.jpg" alt="">
      </div>
      <div class="cmsp294-w-2/4 cmsp294-md:w-full cmsp294-flex cmsp294-flex-col cmsp294-md:items-center cmsp294-gap-2">
        <h3 class="cmsp294-text-base cmsp294-text-center cmsp294-md:text-xl cmsp294-font-medium group-hover:underline">Introducing LOEWE x LLADRÓ</h3>
        <p class="cmsp294-md:text-center cmsp294-text-sm cmsp294-md:text-base">An exclusive and surprising launch</p>
      </div>
    </a>
    
    <a class="cmsp294-col-span-12 cmsp294-md:col-span-4 cmsp294-flex cmsp294-flex-row cmsp294-md:flex-col cmsp294-items-center cmsp294-gap-4 cmsp294-group" href="https://www.lladro.com/magazine/lladro-collaborates-with-the-manises-school-of-ceramics-in-the-third-porcelain-manufacturing-techniques-course/">
      <div class="cmsp294-w-2/4 cmsp294-md:w-full">
        <img width="902" height="740" src="https://www.lladro.com/media/wysiwyg/banners/home/16_09/universo3.jpg" alt="">
      </div>
      <div class="cmsp294-w-2/4 cmsp294-md:w-full cmsp294-flex cmsp294-flex-col cmsp294-md:items-center cmsp294-gap-2">
        <h3 class="cmsp294-text-base cmsp294-text-center cmsp294-md:text-xl cmsp294-font-medium group-hover:underline">Lladró and Escuela de Cerámica de Manises (EA+SC) open enrolment for 3rd Specialized Porcelain Course.</h3>
        <p class="cmsp294-md:text-center cmsp294-text-sm cmsp294-md:text-base">Read more</p>
        
      </div>
    </a>
  </div>
</div></div></div></div></div>
            {$HOOK_HOME nofilter}
          {/block}
        {/block}
      </section>
    {/block}
