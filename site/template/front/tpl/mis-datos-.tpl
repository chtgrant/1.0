<link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
<link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Oleo+Script:400,700'>
<link rel="stylesheet" href="{$_ROOT}/site/template/front/css/bootstrap.min.css">
<link rel="stylesheet" href="{$_ROOT}/site/template/front/css/style.register.css">
<link rel="stylesheet" href="{$_ROOT}/site/template/front/css/dropdown.style.css">

<script src="{$_ROOT}/site/include/js/bootstrap.min.js"></script>
<script src="{$_ROOT}/site/include/js/jquery.backstretch.min.js"></script>

<div class="register-container container">
            <div class="row">
                <div class="register span10">
                    <form action="" method="post">
                        <input type="hidden" name="id_metodo_pago" id="Iid_metodo_pago" />
                        <input type="hidden" name="id_inscripciones" id="Iid_inscripciones" value="{$d.id_inscripciones}" />
                        <input type="hidden" name="id_cursos" id="Iid_cursos" value="{$d.id_cursos}" />
                        <h2 >Mis datos</h2>
                        <div style="float:left;width:50%;">
                        <label for="firstname">Nombre</label>
                        <input type="text" placeholder="Ingrese su nombre" id="Inombre" name="nombre" value="{$d.nombre}" tabindex="1" />
                        <label for="email">Email</label>
                        <input type="text" placeholder="Ingrese su email..." name="email" id="Iemail" value="{$d.email}" tabindex="10" />
                        <label for="email">Dirección</label>
                        <input type="text" placeholder="Ingrese su dirección completa..." id="Idireccion" name="direccion" tabindex="20" value="{$d.direccion}" />
                        <label for="email">Provincia</label>
                        <input type="text" placeholder="Ingrese la ciudad..." name="provincia" id="Iprovincia" tabindex="30" value="{$d.direccion}" />
                        <label for="email">País</label>
                        <input type="text" placeholder="Ingrese su pais..." id="Ipais" name="pais" tabindex="40" value="{$d.pais}" />
                        <label for="email">DNI</label>
                        <input type="text" placeholder="Ingrese su DNI / CUIL, CUIT ó RUT..." id="Idni" name="dni" tabindex="50" value="{$d.dni}" />
                        <label for="email">Teléfono móvil</label>
                        <input type="text" placeholder="Ingrese su Teléfono..." id="Itelefono_movil" name="telefono_movil" tabindex="60" value="{$d.telefono_movil}" />       
                        <label for="email">Profesión</label>
                        <input type="text" placeholder="Ingrese su Profesión..." id="Iprofesion" name="profesion" tabindex="80" value="{$d.direccion}" />
<dl id="payment" class="dropdown">
<dt><a href="#"><span>Seleccione método de pago...</span></a></dt>
<dd><ul>{$pPagos}</ul></dd>
</dl>
  </div>
  <div style="float:left;width:50%;">
                    <label for="email">Apellido</label>
                    <input type="text" placeholder="Ingrese su apellido" id="Iapellido" name="apellido" value="{$d.apellido}" tabindex="5" />
                    <label for="password">Fecha de Nacimiento</label>
                    <input type="text" placeholder="ingrese su fecha de nacimiento... (dd-mm-yyyy)" id="Ifecha_nacimiento" name="fecha_nacimiento" tabindex="15" value="{$d.fecha_nacimiento}" />
                     <label for="email">Código Postal</label>
                    <input type="text" placeholder="Ingrese Código postal..." id="Icodigo_postal" name="codigo_postal" tabindex="25" value="{$d.codigo_postal}" />
                    <label for="email">Ciudad</label>
                    <input type="text" placeholder="Ingrese la ciudad..." name="ciudad" id="Iciudad" tabindex="35" value="{$d.ciudad}" />
                    <label for="email">Teléfono fijo</label>
                    <input type="text" placeholder="Ingrese su Teléfono..." id="Itelefono_fijo" name="telefono_fijo" value="{$d.telefono_fijo}" tabindex="45" />
                    <label for="email">Cargo</label>
                    <input type="text" placeholder="Ingrese su Cargo..." id="Icargo" name="cargo" tabindex="55" value="{$d.cargo}" />
                    <label for="email">Empresa</label>
                    <input type="text" placeholder="Ingrese su Empresa..." id="Iempresa" name="empresa" tabindex="75" value="{$d.empresa}" />
                    <label for="email">Facturación</label>
                    <textArea name="facturacion" id="Ifacturacion" placeholder="Datos de facturación" tabindex="85" value="{$d.facturacion}" ></textarea>
    </div>
  <button type="button" onclick="inscribeStep2();">Guardar</button>
  <br style="clear:both;" />
                    </form>
                </div>
            </div>
        </div>


<link rel="stylesheet" href="{$_ROOT}/site/template/front/css/styles.site.css">