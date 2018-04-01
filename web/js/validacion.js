/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).on("ready",inicio());

function inicio(){

    $("span.help-block").hide();
    $("#btnguardar").click(function(){
        if(!validar()==false){
            alert("grabar");
        }
    });
}   
    function validar(){
       
        var valor=document.getElementById("impuestorenta").value;
       
        if(valor==null || valor.length==0 || /^\s+$/.test(valor)){
            $("#icono_impuestorenta").remove();
            $("#impuestorenta").parent().parent().attr("class","form-group col-xs-10 col-sm-10 col-md-10 col-lg-10 form-control-danger form-control-feedback");
            $("#impuestorenta").parent().children("span").text("Debe ingresar algun caracter").show();
            $("#impuestorenta").parent().append("<span id='icono_impuestorenta' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }else if(isNaN(valor)){
            $("#icono_impuestorenta").remove();
            $("#impuestorenta").parent().parent().attr("class","form-group col-xs-10 col-sm-10 col-md-10 col-lg-10 has-error has-feedback");
            $("#impuestorenta").parent().children("span").text("Debe ingresar caracteres numericos").show();
            $("#impuestorenta").parent().append("<span id='icono_impuestorenta' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }else{
             $("#icono_impuestorenta").remove();
            $("#impuestorenta").parent().parent().attr("class","form-group has-success col-xs-10 col-sm-10 col-md-10 col-lg-10");
            $("#impuestorenta").parent().children("span").text("").show();
        }
            
    }



