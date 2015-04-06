html, body{ height: 100%; }
*{ box-sizing: border-box; }
html, body{ font-size: 130%; }
body{ background-image: url(../images/tile.jpeg); background-attachment: initial; background-origin: initial; background-clip: initial; background-color: initial; color: rgb(34, 34, 34); padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: kepler-std, san-serif; font-weight: normal; font-style: normal; line-height: 150%; position: relative; cursor: auto; background-position: initial initial; background-repeat: initial initial; }
img{ max-width: 100%; height: auto; }
img{ }
.right{ float: right !important; }
img{ display: inline-block; vertical-align: middle; }
.row { width: 100%; margin-left: auto; margin-right: auto; margin-top: 0px; margin-bottom: 0px; max-width: 1360px; }
.row::before, .row::after { content: ' '; display: table; }
.row::after { clear: both; }
.row.collapse > .column, .row.collapse > .columns { padding-left: 0px; padding-right: 0px; }
.row.collapse .row { margin-left: 0px; margin-right: 0px; }
.row .row { width: auto; margin-left: -1.09375rem; margin-right: -1.09375rem; margin-top: 0px; margin-bottom: 0px; max-width: none; }
.row .row::before, .row .row::after { content: ' '; display: table; }
.row .row::after { clear: both; }
.row .row.collapse { width: auto; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; max-width: none; }
.row .row.collapse::before, .row .row.collapse::after { content: ' '; display: table; }
.row .row.collapse::after { clear: both; }
.column, .columns { padding-left: 1.09375rem; padding-right: 1.09375rem; width: 100%; float: left; }
[class*="column"] + [class*="column"].end{ float: left; }
@media only screen{
.column, .columns { position: relative; padding-left: 1.09375rem; padding-right: 1.09375rem; float: left; }
.small-8{ width: 66.66667%; }
.small-12{ width: 100%; }
.column.small-centered, .columns.small-centered { margin-left: auto; margin-right: auto; float: none; }
.column.small-uncentered, .columns.small-uncentered { margin-left: 0px; margin-right: 0px; float: left; }
.column.small-centered:last-child, .columns.small-centered:last-child { float: none; }
.column.small-uncentered:last-child, .columns.small-uncentered:last-child { float: left; }
.column.small-uncentered.opposite, .columns.small-uncentered.opposite { float: right; }
.row.small-collapse > .column, .row.small-collapse > .columns { padding-left: 0px; padding-right: 0px; }
.row.small-collapse .row { margin-left: 0px; margin-right: 0px; }
.row.small-uncollapse > .column, .row.small-uncollapse > .columns { padding-left: 1.09375rem; padding-right: 1.09375rem; float: left; }
}
@media only screen and (min-width: 40.063em){
.column, .columns { position: relative; padding-left: 1.09375rem; padding-right: 1.09375rem; float: left; }
.medium-3{ width: 25%; }
.medium-4{ width: 33.33333%; }
.medium-5{ width: 41.66667%; }
.column.medium-centered, .columns.medium-centered { margin-left: auto; margin-right: auto; float: none; }
.column.medium-uncentered, .columns.medium-uncentered { margin-left: 0px; margin-right: 0px; float: left; }
.column.medium-centered:last-child, .columns.medium-centered:last-child { float: none; }
.column.medium-uncentered:last-child, .columns.medium-uncentered:last-child { float: left; }
.column.medium-uncentered.opposite, .columns.medium-uncentered.opposite { float: right; }
.row.medium-collapse > .column, .row.medium-collapse > .columns { padding-left: 0px; padding-right: 0px; }
.row.medium-collapse .row { margin-left: 0px; margin-right: 0px; }
.row.medium-uncollapse > .column, .row.medium-uncollapse > .columns { padding-left: 1.09375rem; padding-right: 1.09375rem; float: left; }
}
@media only screen and (min-width: 64.063em){
.column, .columns { position: relative; padding-left: 1.09375rem; padding-right: 1.09375rem; float: left; }
.large-2{ width: 16.66667%; }
.large-3{ width: 25%; }
.large-6 { width: 50%; }
.large-7 { width: 58.33333%; }
.large-12{ width: 100%; }
.column.large-centered, .columns.large-centered { margin-left: auto; margin-right: auto; float: none; }
.column.large-uncentered, .columns.large-uncentered { margin-left: 0px; margin-right: 0px; float: left; }
.column.large-centered:last-child, .columns.large-centered:last-child { float: none; }
.column.large-uncentered:last-child, .columns.large-uncentered:last-child { float: left; }
.column.large-uncentered.opposite, .columns.large-uncentered.opposite { float: right; }
.row.large-collapse > .column, .row.large-collapse > .columns { padding-left: 0px; padding-right: 0px; }
.row.large-collapse .row { margin-left: 0px; margin-right: 0px; }
.row.large-uncollapse > .column, .row.large-uncollapse > .columns { padding-left: 1.09375rem; padding-right: 1.09375rem; float: left; }
}
@media only screen and (min-width: 90.063em){
.column, .columns { position: relative; padding-left: 1.09375rem; padding-right: 1.09375rem; float: left; }
.xlarge-6 { width: 50%; }
.xlarge-7 { width: 58.33333%; }
.column.xlarge-centered, .columns.xlarge-centered { margin-left: auto; margin-right: auto; float: none; }
.column.xlarge-uncentered, .columns.xlarge-uncentered { margin-left: 0px; margin-right: 0px; float: left; }
.column.xlarge-centered:last-child, .columns.xlarge-centered:last-child { float: none; }
.column.xlarge-uncentered:last-child, .columns.xlarge-uncentered:last-child { float: left; }
.column.xlarge-uncentered.opposite, .columns.xlarge-uncentered.opposite { float: right; }
.row.xlarge-collapse > .column, .row.xlarge-collapse > .columns { padding-left: 0px; padding-right: 0px; }
.row.xlarge-collapse .row { margin-left: 0px; margin-right: 0px; }
.row.xlarge-uncollapse > .column, .row.xlarge-uncollapse > .columns { padding-left: 1.09375rem; padding-right: 1.09375rem; float: left; }
}
@media only screen and (min-width: 120.063em){
.column, .columns { position: relative; padding-left: 1.09375rem; padding-right: 1.09375rem; float: left; }
.xxlarge-6 { width: 50%; }
.xxlarge-7 { width: 58.33333%; }
.column.xxlarge-centered, .columns.xxlarge-centered { margin-left: auto; margin-right: auto; float: none; }
.column.xxlarge-uncentered, .columns.xxlarge-uncentered { margin-left: 0px; margin-right: 0px; float: left; }
.column.xxlarge-centered:last-child, .columns.xxlarge-centered:last-child { float: none; }
.column.xxlarge-uncentered:last-child, .columns.xxlarge-uncentered:last-child { float: left; }
.column.xxlarge-uncentered.opposite, .columns.xxlarge-uncentered.opposite { float: right; }
.row.xxlarge-collapse > .column, .row.xxlarge-collapse > .columns { padding-left: 0px; padding-right: 0px; }
.row.xxlarge-collapse .row { margin-left: 0px; margin-right: 0px; }
.row.xxlarge-uncollapse > .column, .row.xxlarge-uncollapse > .columns { padding-left: 1.09375rem; padding-right: 1.09375rem; float: left; }
}
[class*="block-grid-"]{ display: block; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: -1.09375rem; margin-bottom: 0px; margin-left: -1.09375rem; }
[class*="block-grid-"]::before, [class*="block-grid-"]::after{ content: ' '; display: table; }
[class*="block-grid-"]::after{ clear: both; }
[class*="block-grid-"] > li{ display: block; height: auto; float: left; padding-top: 0px; padding-right: 1.09375rem; padding-bottom: 2.1875rem; padding-left: 1.09375rem; }
@media only screen{
.small-block-grid-1 > li{ width: 100%; list-style-type: none; list-style-position: initial; list-style-image: initial; }
.small-block-grid-1 > li:nth-of-type(1n){ clear: none; }
.small-block-grid-1 > li:nth-of-type(1n+1){ clear: both; }
}
@media only screen and (min-width: 64.063em){
.large-block-grid-1 > li{ width: 100%; list-style-type: none; list-style-position: initial; list-style-image: initial; }
.large-block-grid-1 > li:nth-of-type(1n){ clear: none; }
.large-block-grid-1 > li:nth-of-type(1n+1){ clear: both; }
.large-block-grid-3 > li{ width: 33.33333%; list-style-type: none; list-style-position: initial; list-style-image: initial; }
.large-block-grid-3 > li:nth-of-type(1n){ clear: none; }
.large-block-grid-3 > li:nth-of-type(3n+1){ clear: both; }
}
.breadcrumbs { display: block; padding-top: 0.5625rem; padding-right: 0.875rem; padding-bottom: 0.5625rem; padding-left: 0.875rem; overflow-x: hidden; overflow-y: hidden; margin-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; background-color: rgb(196, 185, 176); border-top-color: rgb(180, 166, 155); border-right-color: rgb(180, 166, 155); border-bottom-color: rgb(180, 166, 155); border-left-color: rgb(180, 166, 155); border-top-left-radius: 3px 3px; border-top-right-radius: 3px 3px; border-bottom-right-radius: 3px 3px; border-bottom-left-radius: 3px 3px; }
.breadcrumbs > * { margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; float: left; font-size: 0.6875rem; line-height: 0.6875rem; text-transform: uppercase; color: rgb(34, 115, 148); }
.breadcrumbs > :hover a, .breadcrumbs > :focus a { text-decoration: underline; }
.breadcrumbs > * a { color: rgb(34, 115, 148); }
.breadcrumbs > .current { cursor: default; color: rgb(51, 51, 51); }
.breadcrumbs > .current a { cursor: default; color: rgb(51, 51, 51); }
.breadcrumbs > .current:hover, .breadcrumbs > .current:hover a, .breadcrumbs > .current:focus, .breadcrumbs > .current:focus a { text-decoration: none; }
.breadcrumbs > .unavailable { color: rgb(153, 153, 153); }
.breadcrumbs > .unavailable a { color: rgb(153, 153, 153); }
.breadcrumbs > .unavailable:hover, .breadcrumbs > .unavailable:hover a, .breadcrumbs > .unavailable:focus, .breadcrumbs > .unavailable a:focus { text-decoration: none; color: rgb(153, 153, 153); cursor: not-allowed; }
.breadcrumbs > ::before { content: '/'; color: rgb(170, 170, 170); margin-top: 0px; margin-right: 0.75rem; margin-bottom: 0px; margin-left: 0.75rem; position: relative; top: 1px; }
.breadcrumbs > :first-child::before { content: ' '; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; }
[aria-label="breadcrumbs"] [aria-hidden="true"]::after { content: '/'; }
@media only screen and (min-width: 40.063em){
.clearing-main-prev, .clearing-main-next { position: absolute; height: 100%; width: 40px; top: 0px; }
.clearing-main-prev > span, .clearing-main-next > span { position: absolute; top: 50%; display: block; width: 0px; height: 0px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-top-width: 12px; border-right-width: 12px; border-bottom-width: 12px; border-left-width: 12px; border-color: initial; }
.clearing-main-prev > span:hover, .clearing-main-next > span:hover { opacity: 0.8; }
.clearing-main-prev { left: 0px; }
.clearing-main-prev > span { left: 5px; border-top-color: transparent; border-bottom-color: transparent; border-left-color: transparent; border-right-color: rgb(204, 204, 204); }
.clearing-main-next { right: 0px; }
.clearing-main-next > span { border-top-color: transparent; border-right-color: transparent; border-bottom-color: transparent; border-left-color: rgb(204, 204, 204); }
.clearing-main-prev.disabled, .clearing-main-next.disabled { opacity: 0.3; }
}
form .row .row { margin-top: 0px; margin-right: -0.5rem; margin-bottom: 0px; margin-left: -0.5rem; }
form .row .row .column, form .row .row .columns { padding-top: 0px; padding-right: 0.5rem; padding-bottom: 0px; padding-left: 0.5rem; }
form .row .row.collapse { margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; }
form .row .row.collapse .column, form .row .row.collapse .columns { padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; }
form .row .row.collapse input { border-bottom-right-radius: 0px 0px; border-top-right-radius: 0px 0px; }
form .row input.column, form .row input.columns, form .row textarea.column, form .row textarea.columns { padding-left: 0.5rem; }
form .row .prefix-radius.row.collapse input, form .row .prefix-radius.row.collapse textarea, form .row .prefix-radius.row.collapse select, form .row .prefix-radius.row.collapse button { border-top-left-radius: 0px 0px; border-bottom-left-radius: 0px 0px; border-bottom-right-radius: 3px 3px; border-top-right-radius: 3px 3px; }
form .row .prefix-radius.row.collapse .prefix { border-top-right-radius: 0px 0px; border-bottom-right-radius: 0px 0px; border-bottom-left-radius: 3px 3px; border-top-left-radius: 3px 3px; }
form .row .postfix-radius.row.collapse input, form .row .postfix-radius.row.collapse textarea, form .row .postfix-radius.row.collapse select, form .row .postfix-radius.row.collapse button { border-top-right-radius: 0px 0px; border-bottom-right-radius: 0px 0px; border-bottom-left-radius: 3px 3px; border-top-left-radius: 3px 3px; }
form .row .postfix-radius.row.collapse .postfix { border-top-left-radius: 0px 0px; border-bottom-left-radius: 0px 0px; border-bottom-right-radius: 3px 3px; border-top-right-radius: 3px 3px; }
form .row .prefix-round.row.collapse input, form .row .prefix-round.row.collapse textarea, form .row .prefix-round.row.collapse select, form .row .prefix-round.row.collapse button { border-top-left-radius: 0px 0px; border-bottom-left-radius: 0px 0px; border-bottom-right-radius: 1000px 1000px; border-top-right-radius: 1000px 1000px; }
form .row .prefix-round.row.collapse .prefix { border-top-right-radius: 0px 0px; border-bottom-right-radius: 0px 0px; border-bottom-left-radius: 1000px 1000px; border-top-left-radius: 1000px 1000px; }
form .row .postfix-round.row.collapse input, form .row .postfix-round.row.collapse textarea, form .row .postfix-round.row.collapse select, form .row .postfix-round.row.collapse button { border-top-right-radius: 0px 0px; border-bottom-right-radius: 0px 0px; border-bottom-left-radius: 1000px 1000px; border-top-left-radius: 1000px 1000px; }
form .row .postfix-round.row.collapse .postfix { border-top-left-radius: 0px 0px; border-bottom-left-radius: 0px 0px; border-bottom-right-radius: 1000px 1000px; border-top-right-radius: 1000px 1000px; }
textarea[rows] { height: auto; }
.reveal-modal .column, .reveal-modal .columns { min-width: 0px; }
.contain-to-grid{ width: 100%; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; }
.contain-to-grid .top-bar{ margin-bottom: 0px; }
.top-bar{ overflow-x: hidden; overflow-y: hidden; height: 3.75rem; line-height: 3.75rem; position: relative; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; margin-bottom: 0px; background-position: initial initial; background-repeat: initial initial; }
.top-bar ul{ margin-bottom: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial; }
.top-bar .row { max-width: none; }
.top-bar .title-area{ position: relative; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; }
.top-bar .name{ height: 3.75rem; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; }
.top-bar .name h1{ line-height: 3.75rem; font-size: 1.0625rem; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; }
.top-bar .name h1 a{ font-weight: normal; color: rgb(255, 255, 255); width: 75%; display: block; padding-top: 0px; padding-right: 1.25rem; padding-bottom: 0px; padding-left: 1.25rem; }
.top-bar .toggle-topbar{ position: absolute; right: 0px; top: 0px; }
.top-bar .toggle-topbar a{ color: rgb(255, 255, 255); text-transform: uppercase; font-size: 0.8125rem; font-weight: bold; position: relative; display: block; padding-top: 0px; padding-right: 1.25rem; padding-bottom: 0px; padding-left: 1.25rem; height: 3.75rem; line-height: 3.75rem; }
.top-bar .toggle-topbar.menu-icon{ top: 50%; margin-top: -16px; }
.top-bar .toggle-topbar.menu-icon a{ height: 34px; line-height: 33px; padding-top: 0px; padding-right: 2.8125rem; padding-bottom: 0px; padding-left: 1.25rem; color: rgb(255, 255, 255); position: relative; }
.top-bar .toggle-topbar.menu-icon a span::after{ content: ''; position: absolute; display: block; height: 0px; top: 50%; margin-top: -8px; right: 1.25rem; box-shadow: rgb(255, 255, 255) 0px 0px 0px 1px, rgb(255, 255, 255) 0px 7px 0px 1px, rgb(255, 255, 255) 0px 14px 0px 1px; width: 16px; }
.top-bar-section{ left: 0px; position: relative; width: auto; }
.top-bar-section ul{ padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; width: 100%; height: auto; display: block; font-size: 16px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; }
.top-bar-section ul li{ background-image: none; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: initial; background-position: initial initial; background-repeat: initial initial; }
.top-bar-section ul li > a{ display: block; width: 100%; color: rgb(255, 255, 255); padding-top: 12px; padding-right: 0px; padding-bottom: 12px; padding-left: 1.25rem; font-family: futura-pt, Helvetica, Arial, sans-serif; font-size: 0.8125rem; font-weight: normal; text-transform: uppercase; }
.top-bar-section ul li.active > a{ background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: rgb(154, 209, 232); background-position: initial initial; background-repeat: initial initial; }
.top-bar-section .has-dropdown{ position: relative; }
.top-bar-section .has-dropdown > a::after{ content: ''; display: block; width: 0px; height: 0px; border-top-style: inset; border-right-style: inset; border-bottom-style: inset; border-top-width: 5px; border-right-width: 5px; border-bottom-width: 5px; border-left-width: 5px; border-color: initial; border-top-color: transparent; border-right-color: transparent; border-bottom-color: transparent; border-left-color: rgba(238, 238, 238, 0.398438); border-left-style: solid; margin-right: 1.25rem; margin-top: -4.5px; position: absolute; top: 50%; right: 0px; }
.top-bar-section .dropdown{ padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; left: 100%; top: 0px; z-index: 99; display: block; position: absolute !important; height: 1px; width: 1px; overflow-x: hidden; overflow-y: hidden; clip: rect(1px 1px 1px 1px); }
.top-bar-section .dropdown li{ width: 100%; height: auto; }
.top-bar-section .dropdown li a{ font-weight: normal; padding-top: 8px; padding-right: 1.25rem; padding-bottom: 8px; padding-left: 1.25rem; }
@media only screen and (min-width: 40.063em){
.top-bar{ background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; overflow-x: visible; overflow-y: visible; background-position: initial initial; background-repeat: initial initial; }
.top-bar::before, .top-bar::after{ content: ' '; display: table; }
.top-bar::after{ clear: both; }
.top-bar .toggle-topbar{ display: none; }
.top-bar .title-area{ float: left; }
.top-bar .name h1 a{ width: auto; }
.contain-to-grid .top-bar{ max-width: 1360px; margin-top: 0px; margin-right: auto; margin-left: auto; margin-bottom: 0px; }
.top-bar-section{ left: 0px !important; }
.top-bar-section ul{ width: auto; height: auto !important; display: inline; }
.top-bar-section ul li{ float: left; }
.top-bar-section li:not(.has-form) a:not(.button){ padding-top: 0px; padding-right: 1.25rem; padding-bottom: 0px; padding-left: 1.25rem; line-height: 3.75rem; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; }
.top-bar-section li.active:not(.has-form) a:not(.button){ padding-top: 0px; padding-right: 1.25rem; padding-bottom: 0px; padding-left: 1.25rem; line-height: 3.75rem; color: rgb(154, 209, 232); background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; }
.top-bar-section .has-dropdown > a{ padding-right: 2.5rem !important; }
.top-bar-section .has-dropdown > a::after{ content: ''; display: block; width: 0px; height: 0px; border-right-style: inset; border-bottom-style: inset; border-left-style: inset; border-top-width: 5px; border-right-width: 5px; border-bottom-width: 5px; border-left-width: 5px; border-color: initial; border-top-color: rgba(238, 238, 238, 0.398438); border-right-color: transparent; border-bottom-color: transparent; border-left-color: transparent; border-top-style: solid; margin-top: -2.5px; top: 1.875rem; }
.top-bar-section .dropdown{ left: 0px; top: auto; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; min-width: 100%; background-position: initial initial; background-repeat: initial initial; }
.top-bar-section .dropdown li a{ color: rgb(113, 191, 222); line-height: 3.75rem; white-space: nowrap; padding-top: 12px; padding-right: 1.25rem; padding-bottom: 12px; padding-left: 1.25rem; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; }
.top-bar-section .dropdown li:not(.has-form):not(.active) > a:not(.button){ color: rgb(113, 191, 222); background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; }
.top-bar-section .right li .dropdown{ left: auto; right: 0px; }
}
.text-center{ text-align: center !important; }
div, ul, li, h1, h2, h3, p{ margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; }
a{ color: rgb(34, 115, 148); text-decoration: none; line-height: inherit; }
a img{ border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; border-width: initial; border-color: initial; }
p{ font-family: inherit; font-weight: normal; font-size: 1rem; line-height: 1.6; margin-bottom: 1.25rem; text-rendering: optimizelegibility; }
h1, h2, h3{ font-family: futura-pt, Helvetica, Arial, sans-serif; font-weight: normal; font-style: normal; color: rgb(55, 43, 33); text-rendering: optimizelegibility; margin-top: 0.2rem; margin-bottom: 0.5rem; line-height: 0.95; }
h1{ font-size: 2.125rem; }
h2{ font-size: 1.6875rem; }
h3{ font-size: 1.375rem; }
hr{ border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-top-color: rgb(189, 177, 167); border-right-color: rgb(189, 177, 167); border-bottom-color: rgb(189, 177, 167); border-left-color: rgb(189, 177, 167); border-width: initial; border-top-width: 1px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; clear: both; margin-top: 1.25rem; margin-right: 0px; margin-bottom: 1.1875rem; margin-left: 0px; height: 0px; }
em{ font-style: italic; line-height: inherit; }
ul{ font-size: 1rem; line-height: 1.6; margin-bottom: 1.25rem; list-style-position: outside; font-family: inherit; }
ul{ margin-left: 1.1rem; }
ul li ul{ margin-left: 1.25rem; margin-bottom: 0px; }
@media only screen and (min-width: 40.063em){
h1, h2, h3{ line-height: 0.95; }
h1{ font-size: 2.75rem; }
h2{ font-size: 2.3125rem; }
h3{ font-size: 1.6875rem; }
}
@media only screen{
 .hide-for-large-up{ display: inherit !important; }
 .show-for-large-up{ display: none !important; }
}
@media only screen and (min-width: 40.063em){
 .hide-for-large-up{ display: inherit !important; }
 .show-for-large-up{ display: none !important; }
}
@media only screen and (min-width: 64.063em){
 .show-for-large-up{ display: inherit !important; }
 .hide-for-large-up{ display: none !important; }
}
@media only screen and (min-width: 90.063em){
 .show-for-large-up{ display: inherit !important; }
 .hide-for-large-up{ display: none !important; }
}
@media only screen and (min-width: 120.063em){
 .show-for-large-up{ display: inherit !important; }
 .hide-for-large-up{ display: none !important; }
}
@media print{
*{ background-image: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important; background-color: transparent !important; color: rgb(0, 0, 0) !important; box-shadow: none !important; text-shadow: none !important; background-position: initial initial !important; background-repeat: initial initial !important; }
a{ text-decoration: underline; }
a[href]::after{ content: ' (', attr(href), ')'; }
 img{ page-break-inside: avoid; }
img{ max-width: 100% !important; }
p, h2, h3{ orphans: 3; widows: 3; }
h2, h3{ page-break-after: avoid; }
}
.top-bar .top-bar-section .dropdown li{ background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: rgba(68, 68, 68, 0.949219); background-position: initial initial; background-repeat: initial initial; }
.top-bar .toggle-topbar{ font-family: futura-pt, Helvetica, Arial, sans-serif; z-index: 1000; }
.top-bar{ background-color: rgb(68, 68, 68); }
.contain-to-grid{ background-color: rgb(68, 68, 68); }
.nav-screen{ background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: rgba(68, 68, 68, 0.0976562); background-position: initial initial; background-repeat: initial initial; }
.homepage .main { padding-top: 0px; }
@media only screen and (min-width: 64.063em){
.article .breadcrumb { margin-left: 60px; }
}
.article .main { padding-top: 1.09375rem; }
.article .row { max-width: 1600px; }
.article-subnav{ margin-top: 180px; font-size: 1.75rem; font-family: futura-pt, Helvetica, Arial, sans-serif; line-height: 1.2; }
.article-subnav .toc-container{ text-align: center; padding-bottom: 2.1875rem; }
@media only screen and (min-width: 64.063em){
.article-subnav .toc-container{ padding-bottom: 0px; }
}
.article-subnav .toc-container .toc-link{ font-size: 1.5rem; text-transform: uppercase; margin-top: 2.1875rem; border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(34, 115, 148); }
.issue-date{ font-family: futura-pt, Helvetica, Arial, sans-serif; font-size: 0.75rem; text-align: right; text-transform: uppercase; }
.issue-date a{ color: rgb(238, 238, 238); }
.issue-date span{ padding-right: 5px; display: block; padding-top: 10px; }
@media only screen and (min-width: 64.063em){
.issue-date span{ padding-top: 1.09375rem; }
}
.cover-container{ background-size: cover; background-repeat: no-repeat no-repeat; }
.cover-container .top-bar{ background-color: rgba(68, 68, 68, 0); }
.cover-container .contain-to-grid{ background-image: none; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: initial; background-position: initial initial; background-repeat: initial initial; }
.cover-container .cover-screen{ background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: rgba(68, 68, 68, 0.296875); background-position: initial initial; background-repeat: initial initial; }
@media only screen and (min-width: 64.063em){
.cover-container{ min-height: 300px; }
}
.cover-content{ color: white; text-align: center; background-attachment: fixed; padding-bottom: 20px; background-position: 50% 50%; }
.cover-content span{ color: rgb(238, 238, 238); text-transform: uppercase; font-family: futura-pt, Helvetica, Arial, sans-serif; font-size: 0.9375rem; display: block; }
.cover-content span a{ color: white; }
.cover-content .issue-title{ display: inline-block; border-bottom-width: 3px; border-bottom-color: white; border-bottom-style: solid; padding-top: 0.625rem; padding-right: 0.625rem; padding-bottom: 0.625rem; padding-left: 0.625rem; font-family: futura-pt, Helvetica, Arial, sans-serif; font-size: 1.375rem; color: white; -webkit-transition-property: all; -webkit-transition-duration: 0.8s; -webkit-transition-timing-function: initial; -webkit-transition-delay: initial; }
@media only screen and (min-width: 64.063em){
.cover-content .issue-title{ padding-top: 0.8125rem; padding-right: 0.8125rem; padding-bottom: 0.8125rem; padding-left: 0.8125rem; font-size: 2rem; }
}
@media only screen and (min-width: 40.063em){
.cover-content{ padding-top: 150px; min-height: 500px; }
}
@media only screen and (min-width: 64.063em){
.cover-content{ padding-top: 150px; min-height: 600px; }
}
@media only screen and (min-width: 90.063em){
.cover-content{ padding-top: 200px; min-height: 700px; }
}
.side-nav li.title-nav #title-nav-menu .columns, ul.off-canvas-list li.title-nav #title-nav-menu .columns { padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; }
@media screen and (min-width: 480px){
.footer p{ font-size: 0.8125rem; }
}
.footer a{ color: rgb(196, 228, 241); }
.footer-nav{ list-style-type: none; list-style-position: initial; list-style-image: initial; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 1em; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; }
.footer-nav:first-child{ padding-top: 0px; }
.footer-nav a{ display: block; padding-top: 10px; padding-right: 0px; padding-bottom: 10px; padding-left: 0px; -webkit-transition-property: all; -webkit-transition-duration: 0.2s; -webkit-transition-timing-function: ease-in-out; -webkit-transition-delay: initial; }
@media screen and (min-width: 480px){
.footer-nav a{ font-size: 0.8125rem; padding-top: 5px; padding-right: 0px; padding-bottom: 5px; padding-left: 10px; }
}
.footer .logo{ display: block; }
.footer .logo.uiowa{ max-width: 200px; }
.colgroup::before, .colgroup::after{ content: ''; display: table; clear: both; }
body{ background-image: url(../images/tile.jpeg); background-attachment: initial; background-origin: initial; background-clip: initial; background-color: initial; background-position: initial initial; background-repeat: initial initial; }
h1{ font-weight: bold; }
h1, h2, h3{ letter-spacing: 0.7px; }
 h2.banner{ text-transform: uppercase; font-size: 0.75em; margin-top: 1.09375rem; margin-right: 0px; margin-bottom: 1.09375rem; margin-left: 0px; }
hr{ margin-bottom: 1rem; }
.main { min-height: 320px; padding-top: 1.09375rem; }
.name{ position: relative; z-index: 1000; }
@media only screen and (min-width: 64.063em){
.main-column { padding-left: 0px; padding-right: 0px; float: left; }
}
.breadcrumb { margin-bottom: 1.09375rem; background-image: none; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: initial; border-bottom-color: rgb(173, 173, 173); border-bottom-width: 2px; border-bottom-style: solid; color: rgb(121, 121, 121); padding-top: 5px; padding-right: 10px; padding-bottom: 5px; padding-left: 10px; text-transform: uppercase; -webkit-transition-property: all; -webkit-transition-duration: 0.8s; -webkit-transition-timing-function: initial; -webkit-transition-delay: initial; background-position: initial initial; background-repeat: initial initial; }
.breadcrumb.button:hover, .breadcrumb.button:active { background-image: none; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: initial; color: rgb(121, 121, 121); border-top-left-radius: 10px 10px; border-top-right-radius: 10px 10px; border-bottom-right-radius: 10px 10px; border-bottom-left-radius: 10px 10px; background-position: initial initial; background-repeat: initial initial; }
.blog-post-meta{ font-size: 0.6875rem; text-transform: uppercase; font-family: futura-pt, Helvetica, Arial, sans-serif; }