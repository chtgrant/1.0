<iframe style="width:0px;height:0;display:none;" name="postEdit" id="postEdit"></iframe>
<div class="register-container">
    <form action="{$_ROOT}?" method="post" style="" target="_parent" name="formLogin" id="formLogin">
        <input type="hidden" name="r" value="{$r}" />
        <h2>Ingresar en <img src="{$_IMG}logo_white_sm.png" alt=""></h2>
        {if $key != ""}<p>Ya te encontrás registrado, por favor ingresá tus datos.</p>{/if}
        <input type="text" placeholder="Ingrese su email..." name="user" id="Iuser" value="{$d.email}" tabindex="10" />
        <input type="password" placeholder="Ingrese su contraseña" id="Ipass" name="pass" tabindex="20" />
        <button onclick="enterSite();" class="btn btn-blue">Ingresar</button>
        <div class="note"><a href="{$_ROOT}forgotpassword/">Olvidaste tu contraseña?</a></div>
    </form>

</div>
<div class="backstretch" style="">
    <img src="{$_IMG}bg_login.jpg" alt="">
</div>