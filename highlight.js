<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/8.4/styles/monokai_sublime.min.css">
<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/8.4/highlight.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/8.4/languages/javascript.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/8.4/languages/php.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/8.4/languages/sql.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/8.4/languages/xml.min.js"></script>

<style>body { padding: 20px } pre { padding: 0 }</style>

<script>
$(function() {
    $("pre > code").each(function(i, block) {
        var codeClass = $(this).parent().attr("class");
        if (codeClass == null || codeClass === "") {
            $(this).addClass("hljs");
        } else {
            var map = {
                js: "javascript"
            };
            if (map[codeClass]) {
                codeClass = map[codeClass];
            }
            $(this).addClass(codeClass);
            hljs.highlightBlock(this);
        }
    });
});
</script>