﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AuditoriaDirectTv.aspx.vb" Inherits="digitacion.AuditoriaDirectTv" %>

<%@ Register Src="../menu.ascx" TagName="menu" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ERP - Kamilion</title>


  
    <!-- Inicio Script jQuery Datepicker --->

    <link rel="icon" href="../favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
    <link type="text/css" rel="stylesheet" href="../Css2/jquery-ui.css" />
    <script type="text/javascript" src="../Css2/jquery.min.js"></script>
    <script type="text/javascript" src="../Css2/jquery-ui.min.js"></script>
    <script type="text/jscript">
        $(function () {
            $("#TxtFc_Llamada").datepicker({ dateFormat: 'dd/mm/yy' }).val();
            $("#TxtFechaInicio").datepicker({ dateFormat: 'dd/mm/yy' }).val();
            $("#TxtFechaFin").datepicker({ dateFormat: 'dd/mm/yy' }).val();
    });
    </script>
    <!-- Fin Script jQuery Datepicker --->
    <style type="text/css">

 
        
.Color
{
    background-color:#A6A6A6;
    color:White;
    border-color:Black;
    border-style:solid;
}

.celdasder
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
	color: Navy;
	font-weight: bold;
	width: 10%;
}
.celdascent
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: medium;
	color: Navy;
	font-weight: bold;
	width: 80%;
}

.titulo
{ 
 font-family:Arial, Helvetica, sans-serif;
   font-size:xx-large;
   color:navy
   }
   
    
        .style4
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
            color: Navy;
            font-weight: bold;
            width: 10%;
            height: 5px;
        }
        .style5
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            color: Navy;
            font-weight: bold;
            width: 80%;
            height: 5px;
        }
       
    
        .style2
        {
            width: 100%;
            border-color:Black;
            border-style:solid;
        }
 
        .style8
        {
            width: 100%;
            color:Black;
        }
        
        .style9
        {
            border-color:Black;
            border-style:solid;
            
            
        }
        .style6
        {
            width: 30%;
            height: 22px;
        }
        .style7
        {
            width: 70%;
            height: 22px;
        }
       
                
        .style3
        {
            color: #000099;
        }
         
        
        .textotittabla
{
	font-family: Arial, Helvetica, sans-serif;
	font-size:small;
	color: #000042;
	font-weight: bold;
	background: #E2E8FA;
	width: 15%;
}
   
        .textotittabla
{
	font-family: Arial, Helvetica, sans-serif;
	font-size:small;
	color: #000042;
	font-weight: bold;
	background: #E2E8FA;
	width: 15%;
}
 
        .celdascons
{
		width: 35%;
}
       
        .celdascons
{
		width: 35%;
}
     
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
 <table style="width: 100%; height: 100%">
            <asp:Panel ID="PanelGeneral" runat="server" Font-Size="Small">
                <tr>
                    <td class="celdasder"></td>
                    <td class="celdascent">
                        <table style="border-style: outset; border-width: 1px; width: 100%">
                            <tr>
                                <td style="width: 20%">&nbsp;</td>
                                <td align="left" class="titulo">Kamilion Comunicaciones ERP</td>
                            </tr>
                        </table>
                    </td>
                    <td class="celdasder"></td>
                </tr>
                <tr>
                    <td class="celdasder">&nbsp;</td>
                    <td class="celdascent">
                        <asp:Label ID="lblmsg" runat="server" Style="color: #FF3300"></asp:Label>
                    </td>
                    <td class="celdasder">&nbsp;</td>
                </tr>
                <tr>
                    <td class="style4"></td>
                    <td class="style5">
                        <uc1:menu ID="menu1" runat="server" />
                    </td>
                    <td class="style4"></td>
                </tr>
                <tr>
                    <td class="celdasder">&nbsp;</td>
                    <td class="celdascent">
                        <asp:Label ID="lblmsg0" runat="server"
                            Style="font-size: medium; font-style: italic">Registro Auditoria</asp:Label>
                    </td>
                    <td class="celdasder">&nbsp;</td>
                </tr>
                <tr>
                    <td class="celdasder"></td>
                    <td style="width: 15%" valign="top">
                        <table class="style8">
                            <tr>
                                <td class="style6">
                                    <asp:Label ID="lblusuario" runat="server"></asp:Label>
                                </td>
                                <td class="style7">
                                    <asp:Label ID="lblnombreusu" runat="server"></asp:Label>
                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="celdasder"></td>
                </tr>
            </asp:Panel>
            <tr>
                <td class="celdasder">&nbsp;</td>
                <td style="width: 15%" valign="top">&nbsp;</td>
                <td class="celdasder">&nbsp;</td>
            </tr>
            <tr>
                <td class="celdasder">&nbsp;</td>
                <td style="width: 15%" valign="top">
                    <table class="style2" border="2">
                        <tr>
                            <td width="65%">
                                <table class="style8">
                                    <tr>
                                        <td width="40%">
                                            <table class="style2" border="2">
                                                <tr>
                                                    <td width="40%">
                                                        <center>
                                                            <asp:Image ID="Image1" runat="server" ImageUrl="~/LOGO.jpg"
                                                                Height="67px" /></center>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="40%">
                                            <table class="style2" border="2">
                                                <tr>
                                                    <td width="40%">
                                                        <center>
                                                            <asp:Label ID="LblTitulo" runat="server" Text="SISTEMA DE GESTION DE CALIDAD"></asp:Label></center>
                                                    </td>
                                                    <td width="50%" class="style9" colspan="2">
                                                        <center>GCM-F-25</center>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="40%">
                                                        <center>
                                                            <asp:Label ID="LblTitulo1" runat="server" Text="GESTION DE CALIDAD Y MEJORA"></asp:Label></center>
                                                    </td>
                                                    <td class="style9">
                                                        <center>FECHA<asp:Label ID="LblFecha" runat="server" Visible="False"></asp:Label></center>
                                                        <center>17/02/2015</center>
                                                    </td>
                                                    <td class="style9">
                                                        <center>VERSION</center>
                                                        <center>1</center>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="40%">
                                                        <center>
                                                            <asp:Label ID="LblTitulo2" runat="server" Text="AUDITORIA"></asp:Label>&nbsp;DIRECTV</center>
                                                    </td>
                                                    <td class="style9" colspan="2">
                                                        <center>Página 1 DE 1</center>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table class="style2" border="2">
                        <tr>
                            <td width="50%" class="style9">ID DE CLIENTE</td>
                            <td width="50%" class="style9">
                                <asp:TextBox ID="txtcaso" runat="server" Width="138px" MaxLength="20"></asp:TextBox>
                                &nbsp;
                                <asp:Button ID="BtnValidar" runat="server" Text="Validar" />
                                    <asp:Label ID="LblId_cliente" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">ASESOR</td>
                            <td class="style9">
                           <asp:DropDownList ID="drlNomAgente" runat="server" >

</asp:DropDownList>



                                <asp:TextBox ID="TxtConsultaCod_Agente" runat="server" MaxLength="10"></asp:TextBox>
                                <asp:Button ID="BtnConsultaAgente" runat="server" Text="Consultar" />
                                    <asp:Label ID="LblAsesor" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">GRUPO</td>
                            <td class="style9">
                             
                                    <asp:Label ID="LblGrupo" runat="server" Text="Directv"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">AUDITOR</td>
                            <td class="style9"><asp:Label ID="drlAuditor" runat="server" Visible="False"></asp:Label>
                                <asp:Label ID="drlAuditorNombre" runat="server"></asp:Label>
                                <asp:Label ID="LblAuditorConsulta" runat="server"></asp:Label>

                            </td>
                        </tr>
                        <tr>
                            <td class="style9">CAMPAÑA</td>
                            <td class="style9">
                             
                                    <asp:Label ID="LblCampania" runat="server" Text="Directv"></asp:Label>
                        </tr>
                         <tr>
                            <td class="style9">
                                PROCESO</td>
                            <td class="style9">
                                <asp:DropDownList ID="drlProceso" runat="server" AutoPostBack="True">
                                </asp:DropDownList>
                                <asp:Label ID="LblProceso" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">FECHA Y HORA DE LA LLAMADA</td>
                            <td class="style9">
                                <asp:Panel ID="PanelFc_Llamada" runat="server">
                                    <asp:TextBox ID="TxtFc_Llamada" runat="server" placeholder="dd/mm/yyyy"
                                        Width="75px" MaxLength="10"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator3" runat="server"
                                        ControlToValidate="TxtFc_Llamada"
                                        ErrorMessage="Verifique el formato de fecha de la llamada"
                                        Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
                                    <asp:TextBox ID="TxtHora_Llamada" runat="server"
                                        placeholder="HH" Width="24px"
                                        MaxLength="2"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator4" runat="server"
                                        ControlToValidate="TxtHora_Llamada"
                                        ErrorMessage="Verifique el formato de la hora de la llamada"
                                        Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
                                    :<asp:TextBox ID="TxtMinuto_Llamada" runat="server"
                                        placeholder="MM" Width="24px"
                                        MaxLength="2"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator5" runat="server"
                                        ControlToValidate="TxtMinuto_Llamada"
                                        ErrorMessage="Verifique el formato del minuto de la llamada"
                                        Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
                                </asp:Panel>
                                <asp:Label ID="LblFc_Llamada" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">TIEMPO ACUMULADO DE LA LLAMADA</td>
                            <td class="style9">
                                <asp:Panel ID="PanelTiempoAcumulado" runat="server">
                                    <asp:TextBox ID="TxtHora" runat="server" placeholder="HH" Width="24px"
                                        MaxLength="2"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator6" runat="server"
                                        ControlToValidate="TxtHora"
                                        ErrorMessage="Verifique el formato del minuto para el tiempo acumulado de la llamada"
                                        Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
                                    :<asp:TextBox ID="TxtMinuto" runat="server" placeholder="MM" Width="24px"
                                        MaxLength="2"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator7" runat="server"
                                        ControlToValidate="TxtMinuto"
                                        ErrorMessage="Verifique el formato del segundo para el tiempo acumulado de la llamada"
                                        Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
                                    :<asp:TextBox ID="TxtSegundo" runat="server" placeholder="SS" Width="24px"
                                        MaxLength="2"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator8" runat="server"
                                        ControlToValidate="TxtSegundo"
                                        ErrorMessage="Verifique el formato de la centesima para el tiempo acumulado de la llamada"
                                        Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
                                </asp:Panel>
                                <asp:Label ID="LblTiempoAcumulado" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">CANTIDAD DE LLAMADAS A TELEFONO 1</td>
                            <td class="style9">
                                <asp:Panel ID="PanelCantidad_Llamada" runat="server">
                                    <asp:TextBox ID="TxtCantidad_Llamadas" runat="server" MaxLength="2"
                                        Width="24px"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator9" runat="server"
                                        ControlToValidate="TxtCantidad_Llamadas"
                                        ErrorMessage="Verifique el formato de la cantidad de llamadas"
                                        Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
                                </asp:Panel>
                                <asp:Label ID="LblCantidad_Llamadas" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">TIPO DE LLAMADA</td>
                            <td class="style9">
                                <asp:DropDownList ID="DrlTipoLlamada" OnSelectedIndexChanged="DrlTipoLlamada_SelectedIndexChanged" runat="server" AutoPostBack="True">
                                    <asp:ListItem>- Seleccione -</asp:ListItem>
                                    <asp:ListItem>OUTBOUND</asp:ListItem>
                                    <asp:ListItem>INBOUND</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Label ID="LblTipo_Llamada" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">TIPIFICACION</td>
                            <td class="style9">
                                <asp:DropDownList ID="DrlTipificacion" runat="server" >
                                    <asp:ListItem>- Seleccione -</asp:ListItem>
</asp:DropDownList>
                                <asp:Label ID="LblTipificacion" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">TIPO DE AUDITORIA</td>
                            <td class="style9">
                                <asp:DropDownList ID="DrlTipoAuditoria" runat="server">
                                    <asp:ListItem Value="- Seleccione -"></asp:ListItem>
                                    <asp:ListItem>Grabación</asp:ListItem>
                                    <asp:ListItem>En linea</asp:ListItem>
                                    <asp:ListItem>Presencial</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Label ID="LblTipoAuditoria" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <table class="style2" border="2">
                        <tr>
                            <td class="Color">
                                <center>Errores Criticos</center>
                            </td>
                        </tr>
                    </table>
                    <table class="style2" border="2">
                        <tr>
                            <td width="30%" class="Color">
                                <center>ITEM</center>
                            </td>
                            <td width="20%" class="Color">
                                <center>CALIFICACION</center>
                            </td>
                            <td width="50%" class="Color">
                                <center>OBSERVACION</center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="LblAmabilidad" runat="server" Text="Amabilidad"
                                        ToolTip="Demostrar impaciencia o intolerancia con el cliente, interrumpir o enfrentarlo (De forma continua en la llamada), uso de expresiones de ironía, burlescas y recalcadas."></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="drlAmabilidad_Empatia" runat="server">
                                        <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblAmabilidad_Empatia" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_Amabilidad_Empatia" runat="server" TextMode="MultiLine" Width="500px"></asp:TextBox>
                                    <asp:Label ID="LblObs_Amabilidad_Empatia" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="LblColgada" runat="server" Text="Colgada de Llamada"
                                        ToolTip="Finalizar la llamada sin atender el requerimiento del usuario, o permitir que el usuario cuelgue por falta de atención (Hold prolongado en la llamada)"></asp:Label></center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="drlColgada_Llamada" runat="server">
                                        <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblColgada_Llamada" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_Colgada_Llamada" runat="server" TextMode="MultiLine" Width="500px"></asp:TextBox>
                                    <asp:Label ID="LblObs_Colgada_Llamada" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="LblDoc" runat="server" Text="Documentacion y toma de datos"
                                        ToolTip="Tipificación errada o incompleta en los aplicativos CRM/SD. Confirma los datos solicitados asegurandose que sean correctos"></asp:Label></center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="drlDocumentacion" runat="server">
                                        <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblDocumentacion" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_Documentacion" runat="server" TextMode="MultiLine" Width="500px"></asp:TextBox>
                                    <asp:Label ID="LblObs_Documentacion" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="LblInf" runat="server" Text="Brindar información errada con el fin de cerrar la venta."
                                        ToolTip="Da información que no corresponde a la oferta actual o que no esta incluida en el catálogo de servicios"></asp:Label></center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="drlInformacionE" runat="server">
                                        <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblBrindarInformacion" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_InformacionE" runat="server" TextMode="MultiLine" Width="500px"></asp:TextBox>
                                    <asp:Label ID="LblObs_Brindar_Infromacion" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                    </table>
                    <table class="style2" border="2">
                        <tr>
                            <td class="Color">
                                <center>Errores De Gestion (NO CRITICO)</center>
                            </td>
                        </tr>
                    </table>
                    <table class="style2" border="2">
                        <tr>
                            <td width="30%">
                                <center>
                                    <asp:Label ID="LblItem8" runat="server"
                                        Text="Inicia llamada con el horario de saludo, indica nombre e identidad corporativa y motivo de la llamada"
                                        ToolTip="Tiene en cuenta el horario, se presenta con nombre y apellido. Explica claramente el motivo del contacto."></asp:Label>
                                </center>
                            </td>
                            <td width="20%">
                                <center>
                                    <asp:DropDownList ID="drlPresenta_Obj_Llamada" runat="server">
                                        <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>NA</asp:ListItem>
                                    </asp:DropDownList>
                                     <asp:Label ID="LblInicia_LLamada" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td width="50%">
                                <center>
                                    <asp:TextBox ID="TxtObsPresentacion" runat="server" TextMode="MultiLine" Width="500px"></asp:TextBox>
                                    <asp:Label ID="LblObs_inicia_llamada" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                           <center>
                                    <asp:Label ID="Label3" runat="server"
                                        Text="Realiza preguntas concretas para perfilar al cliente."
                                        ToolTip="Hace una exploración comercial completa que permite dar un perfil de cliente acertadamente (TV Lover, Aparatado, Conocedor de contenidos, Convergente). Verifica por que medio se entero de la oferta en todas las llamadas Inbound."></asp:Label></center>
                      
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="drPreguntasConcretas" runat="server">
                                        <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>NA</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblRealiza_Preguntas" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_Preguntas_Concretas" runat="server" TextMode="MultiLine" Width="500px"></asp:TextBox>
                                    <asp:Label ID="LblObs_Realiza_Preguntas" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="LblItem10" runat="server"
                                        Text="Uso de información"
                                        ToolTip="Hace uso de la información obtenida (tipo de cliente, gustos, núcleo familiar, programación favorita, profesión) para realizar la venta."></asp:Label></center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="drlUso_Informacion" runat="server">
                                        <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>NA</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblUso_Informacion" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_Uso_Informacion" runat="server" TextMode="MultiLine" Width="500px"></asp:TextBox>
                                    <asp:Label ID="LblObs_Uso_Informacion" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="LblItem12" runat="server"
                                        Text="Tiene conocimiento completo del producto."
                                        ToolTip="Conoce todas las caracteristicas del producto en detalle."></asp:Label></center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="drlConocimientoProducto" runat="server">
                                       <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>NA</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblConocimiento_Completo" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_Conocimiento_Producto" runat="server" TextMode="MultiLine" Width="500px"></asp:TextBox>
                                    <asp:Label ID="LblObs_ConocomientoCompleto" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="Label1" runat="server"
                                        Text="Indica beneficios del producto."
                                        ToolTip="Usa las bondades del producto teniendo en cuenta el tipo de cliente."></asp:Label></center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="DrlBeneficiosProducto" runat="server">
                                        <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>NA</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblBeneficios_Producto" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_Beneficios_Producto" runat="server" TextMode="MultiLine" Width="500px"></asp:TextBox>
                                    <asp:Label ID="LblObs_Beneficios_Producto" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="Label7" runat="server"
                                        Text="Aclara las dudas que tiene el cliente acerca del servicio."
                                        ToolTip="Se asegura de que el cliente tenga la información completa del servicio que toma, muestra seguridad ante las dudas presentadas por el usuario con respuestas claras."></asp:Label></center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="DrlDudas" runat="server">
                                       <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>NA</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblAclara_Dudas" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_Aclara_Dudas" runat="server" TextMode="MultiLine" Width="500px"></asp:TextBox>
                                    <asp:Label ID="LblObs_Aclara_Dudas" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="Lbl10" runat="server"
                                        Text="Realiza un precierre mientras ofrece los beneficios del producto."></asp:Label></center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="DrlPrecierreBeneficioP" runat="server">
                                        <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>NA</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblPrecierre" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_Precierre_Beneficio_P" runat="server" TextMode="MultiLine" Width="500px"></asp:TextBox>
                                    <asp:Label ID="LblObs_Precierre_Beneficio_P" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="Label13" runat="server"
                                        Text="Cierra la venta en el tiempo oportuno.	"
                                        ToolTip="Evita dilatar o prolongar el proceso de cierre. Cierra la venta en el momento justo."></asp:Label></center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="DrlCierraVentaTiempo" runat="server">
                                       <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>NA</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblCierra_Venta_tiempo" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_Cierra_Venta" runat="server" TextMode="MultiLine" Width="500px"></asp:TextBox>
                                    <asp:Label ID="LblObs_Cierra_Venta" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="Label16" runat="server"
                                        Text="Información de cierre"
                                        ToolTip="Confirma con el usuario el tiempo en el que se hará la llamada de bienvenida (máximo 72 horas hábiles) para agendar la instalación del servicio."></asp:Label></center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="DrlInformacionCierre" runat="server">
                                        <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>NA</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblInformacion_Cierre" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_Informacion_Cierre" runat="server" TextMode="MultiLine" Width="500px"></asp:TextBox>
                                    <asp:Label ID="LblObs_Informacion_Cierre" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="Label19" runat="server"
                                        Text="Rebate minimo 3 objeciones ante la negativa del cliente."
                                        ToolTip="Maneja mínimo 3 objeciones."></asp:Label></center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="DrlReabateObjeciones" runat="server">
                                      <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>NA</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblRebate_Objeciones" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_Rebate_Objeciones" runat="server" TextMode="MultiLine" Width="500px" MaxLength="750"></asp:TextBox>
                                    <asp:Label ID="LblObs_Rebate_Objeciones" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="Label22" runat="server"
                                        Text="El manejo de objeciones es coherente."
                                        ToolTip="Rebate la objeción con un argumento sólido teniendo en cuenta el motivo de la negativa del usuario."></asp:Label></center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="DrlObjecionesCoherente" runat="server">
                                        <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>NA</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblManejo_Objeciones" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_Manejo_Objecciones" runat="server" TextMode="MultiLine" Width="500px" MaxLength="750"></asp:TextBox>
                                    <asp:Label ID="LblObs_Manejo_Objecciones" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="Label28" runat="server"
                                        Text="Retoma la llamada en los tiempos establecidos."
                                        ToolTip="Retoma la llamada cada 30 segundos agradeciendo por el tiempo en espera."></asp:Label></center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="DrlRetomaLlamadaTiempo" runat="server">
                                         <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>NA</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblManejo_Llamada" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_Retoma_Llamada" runat="server" TextMode="MultiLine" Width="500px" MaxLength="750"></asp:TextBox>
                                    <asp:Label ID="LblObs_Retoma_Llamada" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="Label31" runat="server"
                                        Text="No se evidencia el ambiente laboral."
                                        ToolTip="Hace correcto uso de HOLD-PAUSE, evita que se escuchen conversaciones entre compañeros o instrucciones dadas por el coordinador."></asp:Label></center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="DrlAmbienteLaboral" runat="server">
                                         <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>NA</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblAmbiente_Laboral" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_Evidencia_Ambiente" runat="server" TextMode="MultiLine" Width="500px" MaxLength="750"></asp:TextBox>
                                    <asp:Label ID="LblObs_Evidencia_Ambiente" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="Label34" runat="server"
                                        Text="Tono de voz y Fluidez verbal."
                                        ToolTip="Usa un tono de voz dinamico con una intensidad adecuada. Evita el uso de muletillas y la conversación con el cliente es fluida. Pronuncia adecuadamente los canales y palabras asociadas a las caracteristicas del servicio, usa las palabras adecuadas en el momento adecuado."></asp:Label></center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="DrlTonoFluidez" runat="server">
                                         <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>NA</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblTono_Voz" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_Tono_Voz" runat="server" TextMode="MultiLine" Width="500px" MaxLength="750"></asp:TextBox>
                                    <asp:Label ID="LblObs_Tono_Voz" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="Label37" runat="server"
                                        Text="Personaliza la llamada."
                                        ToolTip="Se dirige al cliente por su nombre usando títulos de respeto"></asp:Label></center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="DrlPerzonaliza" runat="server">
                                         <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>NA</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblPersonaliza_Llamada" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_Personaliza_llamada" runat="server" TextMode="MultiLine" Width="500px" MaxLength="750"></asp:TextBox>
                                    <asp:Label ID="LblObs_Personaliza_llamada" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">

                                <center>
                                    <asp:Label ID="Label40" runat="server"
                                        Text="Habilidad de escucha."
                                        ToolTip="Realiza una escucha activa, evita duplicidad de la información."></asp:Label></center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="DrlHabilidadEscucha" runat="server">
                                         <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>NA</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblHabilidad_Escucha" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_Habilidad_Escucha" runat="server" TextMode="MultiLine" Width="500px" MaxLength="750"></asp:TextBox>
                                    <asp:Label ID="LblObs_Habilidad_Escucha" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="Label43" runat="server"
                                        Text="Cordialidad y empatia."
                                        ToolTip="Se dirige al cliente adecuadamente, muestra entusiasmo por atenderlo. No interrumpe al usuario. Realiza una conquista apropiadamente haciendo que  la comunicación sea amena."></asp:Label></center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="DrlCordialidadEmpatia" runat="server">
                                         <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>NA</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblCordialidad_Empatia" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_Cordialidad_Empatia" runat="server" TextMode="MultiLine" Width="500px" MaxLength="750"></asp:TextBox>
                                    <asp:Label ID="LblObs_Cordialidad_Empatia" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="Label46" runat="server"
                                        Text="Tipifica apropiadamente la gestión de la llamada en los aplicativos."
                                        ToolTip="Tipifica apropiadamente la gestión de la llamada en los aplicativos"></asp:Label></center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:DropDownList ID="DrlTipificaApropiada" runat="server">
                                        <asp:ListItem>- Seleccione -</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>NA</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="LblTipifica_Apropiadamente" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:TextBox ID="TxtObs_Tipifica_Apropiadamente" runat="server" TextMode="MultiLine" Width="500px" MaxLength="750"></asp:TextBox>
                                    <asp:Label ID="LblObs_Tipifica_Apropiadamente" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                    </table>
                    <table class="style2" border="2">
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="Label23" runat="server" Text="OBSERVACIONES GENERALES:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TxtObs_Generales" runat="server" TextMode="MultiLine"
                                        Width="1000px"></asp:TextBox>
                                    <asp:Label ID="LblObs_Generales" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                    </table>
                    <table class="style2" border="2">
                        <tr>
                            <td width="50%" class="style9">
                                <center>
                                    <asp:Label ID="Label24" runat="server" Text="FIRMA DEL AUDITOR"></asp:Label></center>
                            </td>
                            <td width="50%" class="style9">
                                <center>
                                    <asp:Label ID="Label25" runat="server" Text="FIRMA DEL CONSULTOR"></asp:Label></center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <br />
                                <br />
                            </td>
                            <td class="style9">&nbsp;</td>
                        </tr>
                    </table>

                </td>
                <td class="celdasder">&nbsp;</td>
            </tr>
            <tr>
                <td class="celdasder">&nbsp;</td>
                <td style="width: 15%" valign="top">
                    <asp:Button ID="btnguardar" runat="server"
                        Text="Guardar" />
                    &nbsp;
                                                <asp:Button ID="BtnVista" runat="server" Text="Vista para imprimir"
                                                    Visible="False" />
                    &nbsp;
                                                <asp:TextBox ID="TxtCod_Consulta" runat="server" onKeyPress="javascript:if(event.keyCode<48 || event.keyCode>57){return false;}" MaxLength="10"></asp:TextBox>
                    &nbsp;
                                                <asp:Button ID="BtnConsulta" runat="server" Text="Consulta" style="height: 26px" />
                </td>
                <td class="celdasder">&nbsp;</td>
            </tr>
            <tr>
                <td class="celdasder">&nbsp;</td>
                <td style="width: 15%; font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: medium;"
                    valign="top" class="style3">

                  <asp:Panel ID="Panel1" runat="server" Visible="False">
                        <a id="letrapeque" onclick="document.body.style.fontSize='10px'; document.getElementById('letrapeque').style.display = 'none';$('.celdasder').css('width', '1%');">Presione antes de imprimir</a>
                    </asp:Panel>

                </td>
                <td class="celdasder">&nbsp;</td>
            </tr>
          <!---  <asp:Panel ID="PanelConsulta" runat="server">-->
                <tr>
                    <td class="celdasder">&nbsp;</td>
                    <td style="width: 15%; font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: medium;"
                        valign="top" class="style3">
                        <table border="1" cellpadding="1" cellspacing="1" class="style1" width="100%">
                            <tr>
                                <td class="textotittabla" colspan="4">
                                    <center>Consulta registros de auditoria</center>
                                </td>
                            </tr>
                            <tr>
                                <td class="textotittabla">Codigo agente</td>
                                <td class="celdascons">
                                    <asp:TextBox ID="TxtCod_Agente" runat="server" MaxLength="6"></asp:TextBox>
                                </td>
                                <td class="textotittabla">&nbsp;</td>
                                <td class="celdascons">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="textotittabla">Fecha Inicio</td>
                                <td class="celdascons">
                                    <asp:TextBox ID="TxtFechaInicio" runat="server" MaxLength="10"
                                        placeholder="DD/MM/YYYY" Width="24%"></asp:TextBox>
                                    <asp:CompareValidator ID="CVFechaIni" runat="server"
                                        ControlToValidate="TxtFechaInicio" ErrorMessage="Revise hora"
                                        Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
                                </td>
                                <td class="textotittabla">Fecha Fin</td>
                                <td class="celdascons">
                                    <asp:TextBox ID="TxtFechaFin" runat="server" MaxLength="10"
                                        placeholder="DD/MM/YYYY" Width="24%"></asp:TextBox>
                                    <asp:CompareValidator ID="CVFechaFin" runat="server"
                                        ControlToValidate="TxtFechaFin" ErrorMessage="Revise hora"
                                        Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
                                </td>
                            </tr>
                        </table>
                        <asp:Button ID="BtnConsultaAditorias" runat="server" Text="Consulta" Width="68px" />
                        &nbsp;
                        <asp:Button ID="BtnExporta" runat="server" Text="Exportar Excel" />
                        <br />
                        Registros encontrados:
                        <asp:Label ID="LblCantidad" runat="server" Text="0"></asp:Label>
                        <asp:GridView ID="dtggeneral" runat="server" AllowPaging="True"
                            AutoGenerateColumns="False" CellPadding="4" EnableModelValidation="True"
                            ForeColor="#333333" GridLines="None" PageSize="50" Style="font-size: x-small"
                            Width="100%">
                            <RowStyle BackColor="#EEF1D8" ForeColor="#333333" HorizontalAlign="Center"/>
                            <Columns>
                                <asp:BoundField DataField="Cod Calidad" HeaderText="ID" />
                                <asp:BoundField DataField="fecha auditoria" HeaderText="Fecha Auditoria" />
                                <asp:BoundField DataField="Codigo" HeaderText="Codigo" />
                                <asp:BoundField DataField="Asesor" HeaderText="Asesor" />
                                <asp:BoundField DataField="tipo llamada" HeaderText="Tipo Llamada" />
                                <asp:BoundField DataField="No criticos" HeaderText="No criticos" />
                                <asp:BoundField HeaderText="Criticos" DataField="Criticos" />
                                <asp:BoundField HeaderText="Total" DataField="Total" />
                                <asp:BoundField HeaderText="Tipo Auditoria" DataField="tipo auditoria" />
                            </Columns>
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <EditRowStyle BackColor="#999999" />
                            <AlternatingRowStyle BackColor="White" ForeColor="#333333" />
                        </asp:GridView>
                     </td>
                    <td class="celdasder">&nbsp;</td>
                </tr>
          <!---  </asp:Panel>-->
            <tr>
                <td class="celdasder">&nbsp;</td>
                <td style="width: 15%; font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: medium;"
                    valign="top" class="style3">&nbsp;</td>
                <td class="celdasder">&nbsp;</td>
            </tr>
        </table>

    </form>
</body>
</html>
