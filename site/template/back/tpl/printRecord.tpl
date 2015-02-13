
<script src="{$CFG_FOL_FWK_JS}plugin/printThis-master/printThis.js"></script>
{include file="show.tpl"}
{literal}
<script>
$("#formEdit_view").printThis({
             debug: false,
             printContainer: false,
             pageTitle: $("#info-modal .short-info .panel-headline-wrapper h1").html(),
             formValues: true,
             printDelay: 0
            })
</script>
{/literal}