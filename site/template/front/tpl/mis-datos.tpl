
<link rel="stylesheet" href="{$_ROOT}site/template/front/css/dropdown.style.css">

<script src="{$_ROOT}site/include/js/bootstrap.min.js"></script>
<script src="{$_ROOT}site/include/js/jquery.backstretch.min.js"></script>
<script src="{$_ROOT}site/include/js/scripts.js"></script>

<link rel="stylesheet" href="{$_ROOT}site/template/front/css/font-awesome.min.css" />
<link rel="stylesheet" href="{$_ROOT}site/template/front/css/smartadmin-production.css" />


<div class="body-wrapper">


<section class="" id="widget-grid">
<div class="widget-body">

<ul id="myTab1" class="nav nav-tabs bordered" style="border-top:0;background:transparent;">
  <li {if $sTab == 1}class="active"{/if}><a href="#sTab_perfil" data-toggle="tab" id="aTab_perfil">Mis datos</a></li>
  <li {if $sTab == 2}class="active"{/if}><a href="#sTab_cursos" data-toggle="tab">Mis cursos<span class="badge bg-color-blue txt-color-white">{$countCursos}</span></a></li>
</ul>

<div id="myTabContent1" class="tab-content padding-10" style="background:#FFF;">

    <div class="tab-pane fade{if $sTab == 1} in active{/if}" id="sTab_perfil">

    <div class="jarviswidget" id="wid-id-8" data-widget-editbutton="false" data-widget-custombutton="false">
    <header><span class="widget-icon"> <i class="fa fa-edit"></i> </span><h2>Mis datos</h2></header>
        <div>
            <!-- widget edit box --><div class="jarviswidget-editbox"><!-- This area used as dropdown edit box --></div><!-- end widget edit box -->

            <div class="widget-body no-padding">
            <iframe id="box_cursos" name="box_cursos" style="width:0px;height:0;display:none;border:0;overflow:hidden;"></iframe>
            <form action="{$_ROOT}site/include/php/mod/editAlumno.php?" name="formGrillaEdit" id="formEdit_edit" method="post" enctype="multipart/form-data" target="box_cursos"  class="smart-form">
            <input type="hidden" name="id_metodos_pago" id="Iid_metodos_pago" value="{$d.id_metodos_pago}"  />
            <input type="hidden" name="id_alumnos" id="Iid_alumnos" value="{$d.id_alumnos}"  />
                <fieldset>
                     
                     <section class="col col-3" id="fn_nombre"><label class="label">Nombre</label>
                         <label class="input" style="height:34px;">
                         <i class="icon-append fa fa-file-text"></i>
                         <input type="text" name="nombre" id="Inombre" maxlength="" value="{$d.nombre}" /> 
                         </label>

                    </section>
                     
                     <section class="col col-3" id="fn_apellido"><label class="label">Apellido</label>
                     <label class="input" style="height:34px;">
                     <i class="icon-append fa fa-file-text"></i>
                     <input type="text" name="apellido" id="Iapellido"    maxlength=""  value="{$d.apellido}" >
                     
                     </label></section>
                     
                     <section class="col col-3" id="fn_email"><label class="label">Email</label>
                     <label class="input" style="height:34px;">
                     <i class="icon-append fa fa-file-text"></i>
                     <input type="text" name="email" id="Iemail" maxlength="" value="{$d.email}" >
                     
                     </label></section>
                     
                     <section class="col col-3" id="fn_fecha_nacimiento"><label class="label">Fecha de nacimiento</label>
                     <label class="input" style="height:34px;">
                     <i class="icon-append fa fa-file-text"></i>
                     <input type="text" name="fecha_nacimiento" id="Ifecha_nacimiento"    maxlength=""  value="{$d.fecha_nacimiento}" >
                     
                     </label></section>
                     
                     <section class="col col-3" id="fn_direccion"><label class="label">Dirección</label>
                     <label class="input" style="height:34px;">
                     <i class="icon-append fa fa-file-text"></i>
                     <input type="text" name="direccion" id="Idireccion"    maxlength=""  value="{$d.direccion}" >
                     
                     </label></section>
                     
                     <section class="col col-3" id="fn_codigo_postal"><label class="label">Código postal</label>
                     <label class="input" style="height:34px;">
                     <i class="icon-append fa fa-file-text"></i>
                     <input type="text" name="codigo_postal" id="Icodigo_postal"    maxlength=""  value="{$d.direccion}" >
                     
                     </label></section>
                     
                     <section class="col col-3" id="fn_provincia"><label class="label">Provincia</label>
                     <label class="input" style="height:34px;">
                     <i class="icon-append fa fa-file-text"></i>
                     <input type="text" name="provincia" id="Iprovincia"    maxlength=""  value="{$d.provincia}" >
                     
                     </label></section>

                     <section class="col col-3" id="fn_ciudad"><label class="label">Ciudad</label>
                     <label class="input" style="height:34px;">
                     <i class="icon-append fa fa-file-text"></i>
                     <input type="text" name="ciudad" id="Iciudad"    maxlength=""  value="{$d.ciudad}" >
                     
                     </label></section>

                    <section class="col col-3" id="fn_pais"><label class="label">País</label>
                     <label class="input" style="height:34px;">
                     <i class="icon-append fa fa-file-text"></i>
                     <input type="text" name="pais" id="Ipais"    maxlength=""  value="{$d.pais}" >
                     
                     </label></section>

                     <section class="col col-3" id="fn_telefono_fijo"><label class="label">Teléfono Fijo</label>
                     <label class="input" style="height:34px;">
                     <i class="icon-append fa fa-file-text"></i>
                     <input type="text" name="telefono_fijo" id="Itelefono_fijo"    maxlength=""  value="{$d.telefono_fijo}" >
                     
                     </label></section>

                     <section class="col col-3" id="fn_telefono_movil"><label class="label">Teléfono Móvil</label>
                     <label class="input" style="height:34px;">
                     <i class="icon-append fa fa-file-text"></i>
                     <input type="text" name="telefono_movil" id="Itelefono_movil"    maxlength=""  value="{$d.telefono_movil}" >
                     
                     </label></section>

                     <section class="col col-3" id="fn_empresa"><label class="label">Empresa</label>
                     <label class="input" style="height:34px;">
                     <i class="icon-append fa fa-file-text"></i>
                     <input type="text" name="empresa" id="Iempresa"    maxlength=""  value="{$d.empresa}" >
                     
                     </label></section>

                     <section class="col col-3" id="fn_cargo"><label class="label">Cargo</label>
                     <label class="input" style="height:34px;">
                     <i class="icon-append fa fa-file-text"></i>
                     <input type="text" name="cargo" id="Icargo"    maxlength=""  value="{$d.cargo}" >
                     
                     </label></section>

                     <section class="col col-3" id="fn_profesion"><label class="label">Profesión</label>
                     <label class="input" style="height:34px;">
                     <i class="icon-append fa fa-file-text"></i>
                     <input type="text" name="profesion" id="Iprofesion"    maxlength=""  value="{$d.profesion}" >
                     
                     </label></section>

                     <section class="col col-3" id="fn_linkedin"><label class="label">Linkedin</label>
                     <label class="input" style="height:34px;">
                     <i class="icon-append fa fa-file-text"></i>
                     <input type="text" name="linkedin" id="Ilinkedin"    maxlength=""  value="{$d.linkedin}" >
                     
                     </label></section>

                     <section class="col col-3" id="fn_twitter"><label class="label">Twitter</label>
                     <label class="input" style="height:34px;">
                     <i class="icon-append fa fa-file-text"></i>
                     <input type="text" name="twitter" id="Itwitter"    maxlength=""  value="{$d.twitter}" >
                     
                     </label></section>

                     <section class="col col-3" id="fn_pass"><label class="label">Contraseña</label>
                     <label class="input" style="height:34px;">
                     <i class="icon-append fa fa-file-text"></i>
                     <input type="password" name="pass" id="Ipass" maxlength=""  value="" >
                     
                     </label></section>

                     <section class="col col-3" id="fn_pass2"><label class="label">Repetir contraseña</label>
                     <label class="input" style="height:34px;">
                     <i class="icon-append fa fa-file-text"></i>
                     <input type="password" name="pass2" id="Ipass2" maxlength=""  value="" >
                     
                     </label></section>

                     <section class="col col-3" id="fn_pass2">
                        <dl id="payment" class="dropdown" style="margin-top:15px;">
                        <dt><a href="#"><span>Seleccione método de pago...</span></a></dt>
                        <dd><ul>{$pPagos}</ul></dd>
                        </dl>
                     </section>
                     
                    </fieldset>

                    <footer style="text-align:center;">
                        <button class="btn btn-primary" type="button" onclick="editAlumno();">Guardar</button>
                        <button onclick="window.location.href='{$_ROOT}?" class="btn btn-default" type="button">Cancelar</button>
                    </footer>

            </div>
        </div>
    </div>
    </div>

    <div class="tab-pane fade{if $sTab == 2 } in active{/if}" id="sTab_cursos">
        
        {$curosList}
    </div>

</div>


</div>
</section>

</div><!-- END BODY WRAPPER -->

<script src="/fwrk/lib/js/app.js"></script>
{literal}
<style>
.modal-dialog
{
    margin-top:80px;
}
</style>
<script>
 $(document).ready(function() {
        // DO NOT REMOVE : GLOBAL FUNCTIONS!
        //pageSetUp();
        $(document.body).on('hidden.bs.modal', function () {
                $('#remoteModal').removeData('bs.modal')
            });
            $(function() {
                $(".modal-link").click(function(event) {
                    event.preventDefault()
                    //$('#remoteModal').removeData("modal-dialog")
                    $(this).removeData('modal');
                    $('#remoteModal').modal({remote: $(this).attr("href")})
                })
            })
});

</script>
{/literal}
