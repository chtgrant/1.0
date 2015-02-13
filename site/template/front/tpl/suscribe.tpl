<link rel="stylesheet" href="{$_ROOT}site/template/front/css/dropdown.style.css">
<iframe style="width:0px;height:0;display:none;" name="postEdit" id="postEdit"></iframe>
<div class="register-container reg2">
        
        <div class="register">
            {if $d.confirmed == 1}
            <div class="register-container">
                    <iframe style="width:0px;height:0;display:none;" name="postEdit" id="postEdit"></iframe>
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
            {else}
                <form action="" method="post">
                <input type="hidden" name="id_metodos_pago" id="Iid_metodos_pago" />
                <input type="hidden" name="id_inscripciones" id="Iid_inscripciones" value="{$d.id_inscripciones}" />
                <input type="hidden" name="id_cursos" id="Iid_cursos" value="{$d.id_cursos}" />
                <h2>Registrarse en <img src="{$_IMG}logo_white_sm.png" alt=""></h2>
                {if $key != ""}<p>Ya te encontrás registrado, por favor ingresá tus datos.</p>{/if}
                <section><label class="input"> <i class="icon-append fa fa-user"></i><input type="text" placeholder="Nombre" id="Inombre" name="nombre" value="{$d.nombre}" tabindex="1" /></label></section>
                <section><label class="input"> <i class="icon-append fa fa-user"></i><input type="text" placeholder="Apellido" id="Iapellido" name="apellido" value="{$d.apellido}" tabindex="5" /></label></section>
                <section><label class="input"> <i class="icon-append fa fa-user"></i><input type="text" placeholder="Fecha de nacimiento (dd-mm-yyyy)" id="Ifecha_nacimiento" name="fecha_nacimiento" tabindex="10" /></label></section>
                <section><label class="input"> <i class="icon-append fa fa-user"></i><input type="text" placeholder="Email" name="email" id="Iemail" value="{$d.email}" tabindex="15" /></label></section>
                <section><label class="input"> <i class="icon-append fa fa-user"></i><input type="text" placeholder="Dirección completa" id="Idireccion" name="direccion" tabindex="20" /></label></section>
                <section><label class="input"> <i class="icon-append fa fa-user"></i><input type="text" placeholder="Ciudad" name="Iciudad" id="ciudad" tabindex="25" /></label></section>
                <section><label class="input"> <i class="icon-append fa fa-user"></i><input type="text" placeholder="Código postal" id="Icodigo_postal" name="codigo_postal" tabindex="30" /></label></section>
                <section><label class="input"> <i class="icon-append fa fa-user"></i><input type="text" placeholder="País" id="Ipais" name="pais" tabindex="35" /></label></section>
                <section><label class="input"> <i class="icon-append fa fa-user"></i><input type="text" placeholder="DNI / CUIL, CUIT ó RUT" id="Idni" name="dni" tabindex="40" /></label></section>
                <section><label class="input"> <i class="icon-append fa fa-user"></i><input type="text" placeholder="Teléfono fijo" id="Itelefono_fijo" name="telefono_fijo" value="{$d.telefono}" tabindex="45" /></label></section>
                <section><label class="input"> <i class="icon-append fa fa-user"></i><input type="text" placeholder="Teléfono móvil" id="Itelefono_movil" name="telefono_movil" tabindex="50" /></label></section>
                <section>{$comboEducacion}</section>
                <section><label class="input"> <i class="icon-append fa fa-user"></i><input type="text" placeholder="Empresa" id="Iempresa" name="empresa" tabindex="60" /></label></section>
                <section><label class="input"> <i class="icon-append fa fa-user"></i><input type="text" placeholder="Cargo" id="Icargo" name="cargo" tabindex="65" /></label></section>
                <section><label class="input"> <i class="icon-append fa fa-user"></i><input type="text" placeholder="Profesión" id="Iprofesion" name="profesion" tabindex="70" /></label></section>
                <section>{$comboConocio}</section>
                <section>
                        <dl id="payment" class="dropdown">
                            <dt><a href="#"><span>Método de pago</span></a></dt>
                            <dd><ul>{$pPagos}</ul></dd>
                        </dl>
                </section>
                <section><label class="input"> <i class="icon-append fa fa-user"></i><input type="text" placeholder="Datos de facturación" name="facturacion" id="Ifacturacion"  tabindex="90" ></textarea></label></section>
                <section><button type="button" onclick="inscribeStep2();" class="btn btn-blue">Registrarse</button></section>
                <br class="cl" />
                 </form>
            {/if}
        </div>

   

</div>
<div class="backstretch" style="">
    <img src="{$_IMG}bg_login.jpg" alt="">
</div>
