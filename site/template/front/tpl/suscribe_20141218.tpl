<link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
<link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Oleo+Script:400,700'>
<link rel="stylesheet" href="{$_ROOT}/site/template/front/css/bootstrap.min.css">
<link rel="stylesheet" href="{$_ROOT}/site/template/front/css/style.register.css">
<link rel="stylesheet" href="{$_ROOT}/site/template/front/css/dropdown.style.css">

<script src="{$_ROOT}/site/include/js/bootstrap.min.js"></script>
<script src="{$_ROOT}/site/include/js/jquery.backstretch.min.js"></script>
<script src="{$_ROOT}/site/include/js/scripts.js"></script>
<div class="register-container container">
            <div class="row">
                {if $d.confirmed == 1}
                <!-- div class="iphone span5">
                    <img src="assets/img/iphone.png" alt="">
                </div -->
                <div class="register span7" style="float:none;margin:0 auto;">
                    <form action="{$_ROOT}?" method="post">
                    <h2 style="background:none;">Ingresar en <span class="red"><strong>ENLATAM.COM</strong></span></h2>
                    <p>Ya te encontras registrado</p>
                    
                        <input type="hidden" name="id_metodos_pago" id="Iid_metodos_pago" />
                        <label for="email">Email</label>
                        <input type="text" placeholder="Ingrese su email..." name="user" id="Iuser" value="{$d.email}" tabindex="10" />
                        <label for="email">Contraseña</label>
                        <input type="password" placeholder="Ingrese su contraseña" id="Ipass" name="pass" tabindex="20" />
                        <button type="submit" >Ingresar</button>
                    </form>
                </div>
                {else}
                <div class="register span10">
                    <form action="" method="post">
                        <input type="hidden" name="id_metodo_pago" id="Iid_metodo_pago" />
                        <input type="hidden" name="id_inscripciones" id="Iid_inscripciones" value="{$d.id_inscripciones}" />
                        <input type="hidden" name="id_cursos" id="Iid_cursos" value="{$d.id_cursos}" />
                        <input type="hidden" name="hash" id="Ihash" value="{$d.hash}" />
                        <h2>Registrarse en <span class="red"><strong>ENLATAM.COM</strong></span></h2>
                        <div style="float:left;width:50%;">
                        <label for="firstname">Nombre</label>
                        <input type="text" placeholder="Ingrese su nombre" id="Inombre" name="nombre" value="{$d.nombre}" tabindex="1" />
                        <label for="email">Email</label>
                        <input type="text" placeholder="Ingrese su email..." name="email" id="Iemail" value="{$d.email}" tabindex="10" />
                        <label for="email">Dirección</label>
                        <input type="text" placeholder="Ingrese su dirección completa..." id="Idireccion" name="direccion" tabindex="20" />
                        <label for="email">Provincia</label>
                        <input type="text" placeholder="Ingrese la ciudad..." name="provincia" id="Iprovincia" tabindex="30" />
                        <label for="email">País</label>
                        <input type="text" placeholder="Ingrese su pais..." id="Ipais" name="pais" tabindex="40" />
                        <label for="email">DNI</label>
                        <input type="text" placeholder="Ingrese su DNI / CUIL, CUIT ó RUT..." id="Idni" name="dni" tabindex="50" />
                        <label for="email">Teléfono móvil</label>
                        <input type="text" placeholder="Ingrese su Teléfono..." id="Itelefono_movil" name="telefono_movil" tabindex="60" />
                        <label for="email">Nivel educación</label>
                        {$comboEducacion}
                        
                        <label for="email">Profesión</label>
                        <input type="text" placeholder="Ingrese su Profesión..." id="Iprofesion" name="profesion" tabindex="80" />
<dl id="payment" class="dropdown">
<dt><a href="#"><span>Seleccione método de pago...</span></a></dt>
<dd><ul>{$pPagos}</ul></dd>
</dl>
  </div>
  <div style="float:left;width:50%;">
                    <label for="email">Apellido</label>
                    <input type="text" placeholder="Ingrese su apellido" id="Iapellido" name="apellido" value="{$d.apellido}" tabindex="5" />
                    <label for="password">Fecha de Nacimiento</label>
                    <input type="text" placeholder="ingrese su fecha de nacimiento... (dd-mm-yyyy)" id="Ifecha_nacimiento" name="fecha_nacimiento" tabindex="15" />
                     <label for="email">Código Postal</label>
                    <input type="text" placeholder="Ingrese Código postal..." id="Icodigo_postal" name="codigo_postal" tabindex="25" />
                    <label for="email">Ciudad</label>
                    <input type="text" placeholder="Ingrese la ciudad..." name="ciudad" id="Iciudad" tabindex="35" />
                    <label for="email">Teléfono fijo</label>
                    <input type="text" placeholder="Ingrese su Teléfono..." id="Itelefono_fijo" name="telefono_fijo" value="{$d.telefono}" tabindex="45" />
                    <label for="email">Cargo</label>
                    <input type="text" placeholder="Ingrese su Cargo..." id="Icargo" name="cargo" tabindex="55" />
                    <label for="email">Como nos conoció</label>
                    {$comboConocio}
                    <label for="email">Empresa</label>
                    <input type="text" placeholder="Ingrese su Empresa..." id="Iempresa" name="empresa" tabindex="75" />
                    <label for="email">Facturación</label>
                    <textArea name="datos_facturacion" id="Idatos_facturacion" placeholder="Datos de facturación" tabindex="85" ></textarea>
    </div>
  <button type="button" onclick="inscribeStep2();">Registrarse</button>
  <br style="clear:both;" />
                    </form>
                </div>
                {/if}
            </div>
        </div>


<link rel="stylesheet" href="{$_ROOT}/site/template/front/css/styles.site.css">