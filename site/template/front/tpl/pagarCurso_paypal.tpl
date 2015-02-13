<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
        &times;
    </button>
    <h4 class="modal-title" id="myModalLabel">Pagar el curso: <i style="font-size:14px;">{$d.titulo}</i></h4>
</div>
<form id = "paypal_checkout" action = "https://www.paypal.com/cgi-bin/webscr" method = "post">
<div class="modal-body">
    <div class="row">
        <div class="col-md-12">
                <p>Presione el botón "Pagar" y será redirigido al sitio de <a href="https://www.paypal.com" target="_blank"><img src="/newsite/site/template/front/images/paypal_100.png" alt="https://www.paypal.com" width="50" /></a> para abonar <b>USD {$d.precio_internacional}</b>.</p>
    <input name = "cmd" value = "_cart" type = "hidden">
    <input name = "upload" value = "1" type = "hidden">
    <input name = "no_note" value = "0" type = "hidden">
    <input name = "bn" value = "PP-BuyNowBF" type = "hidden">
    <input name = "tax" value = "0" type = "hidden">
    <input name = "rm" value = "2" type = "hidden">
     
    <input name = "business" value = "billing@networktechhosting.com" type = "hidden">
    <input name = "handling_cart" value = "0" type = "hidden">
    <input name = "currency_code" value = "USD" type = "hidden">
    <input name = "lc" value = "US" type = "hidden">
    <input name = "return" value = "http://{$CFG_URL}checkout/" type = "hidden">
    <input name = "cbt" value = "Volver a {$CFG_COMPANY}" type = "hidden">
    <input name = "cancel_return" value = "http://{$CFG_URL}checkout-cancel/" type = "hidden">
    <input name = "custom" value = "" type = "hidden">
     
    {$html.cartItem}
     
    <!-- input id = "ppcheckoutbtn" value = "Pagar" class = "button" type = "submit" -->
    
        </div>
    </div>
    
</div>
<div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
    <button id="ppcheckoutbtn" class="btn btn-default btn-blue" type="submit">Pagar</button>
</div>
</form>