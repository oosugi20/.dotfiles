" zen-codingの設定

let g:user_zen_expandabbr_key = '<D-Return>'
let g:user_zen_next_key = '<D-C-,>'
let g:user_zen_prev_key = '<D-C-;>'
 
let g:user_zen_settings = {
\	'html': {
\		'indentation': '\t',
\		'empty_element_suffix': '>',
\		'snippets': {
\			'html': "<\!DOCTYPE html>\n<html lang=\"ja\">\n<head>\n<meta charset=\"utf-8\">\n<title></title>\n</head>\n\n<body>\n</body>\n</html>",
\			'script': "<script>|</script>",
\			'script:js': "<script type=\"text/javascript\" src=\"|\"></script>",
\			'div:x': "<div class=\"section\">\n\t${child}|\n<!-- /.section --></div>\n",
\			"div:c": "<div class=\"${class}\">\n\t${child}|\n<!-- /.${class} --></div>\n",
\			'div:i': "<div id=\"${id}\">\n\t${child}|\n<!-- /#${id} --></div>\n",
\			'c': 'class="|"',
\			't': 'target="_blank"'
\		}
\	},
\	'css': {
\		'snippets': {
\			"!i": "!important",
\			"w": "width:|px;",
\			"h": "height:|px;",
\			"miw": "min-width:|px;",
\			"maw": "max-width:|px;",
\			"bgc": "#|;",
\			"c": "#|;",
\			"clf": ":after {\n\t${child}content: \".\"; display: block; clear: both; height: 0; visibility: hidden; font-size: 0;\n}",
\			"fl": "float:left;\nwidth: |px;",
\			"fr": "float:right;\nwidth: |px;",
\			"fl+": "float:left;\ndisplay: inline;\nmargin: 0 0 0 |px;\nwidth: |px;",
\			"fr+": "float:right;\ndisplay: inline;\nmargin: 0 |px 0 0;\nwidth: |px;",
\			"bg:b": "height: |px;\nbackground: url(|) no-repeat;\noverflow: hidden;\nfont-size: 0;",
\           "ti": "text-indent:-9999px;|",
\			"txs": "-webkit-text-shadow:0 0 4px 4px rbga(0,0,0,0.4);\n\ \ \ -moz-text-shadow: 0 0 4px 4px rbga(0,0,0,0.4);\n\ \ \ \ -ms-text-shadow: 0 0 4px 4px rbga(0,0,0,0.4);\n\ \ \ \ \ -o-text-shadow: 0 0 4px 4px rbga(0,0,0,0.4);\n\ \ \ \ \ \ \ \ text-shadow: 0 0 4px 4px rbga(0,0,0,0.4);"
\		}
\	},
\	'javascript': {
\		'snippets': {
\			'fn': "function (|) {\n|\n}"
\		}
\	}
\}

