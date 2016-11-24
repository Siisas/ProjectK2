<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Plantilla.aspx.vb" Inherits="digitacion.Plantilla" %>

<%@ Register Src="~/Controles/Header.ascx" TagName="Header" TagPrefix="Control" %>
<%--<%@ Register Src="~/Controles/menu.ascx" tagname="menu" tagprefix="uc1" %>--%>
<!DOCTYPE html>
<%--	© 2016 Crisitan Duarte C1477	--%>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Kamilion Caféteria</title>
    <link rel="icon" href="~/favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="~/favicon.ico" type="image/x-icon" />
    <script type="text/javascript" src="../Css2/jquery.min.js"></script>
    <script type="text/javascript" src="../Css2/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../Css2/jquery-ui-timepiker.js"></script>
    <script type="text/javascript" src="../Css2/scripts.js"></script>
    <!--#########Estilos############-->
    <link type="text/css" rel="Stylesheet" href="~/Css2/Boot/css/bootstrap.min.css" />
    <link type="text/css" rel="Stylesheet" href="~/Css2/jquery-ui.css" />
    <link type="text/css" rel="Stylesheet" href="~/Css2/Kamilion.css" />
</head>
<body>
    <form runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <Control:Header ID="Header" runat="server" />
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <asp:Panel ID="Pnl_Message" runat="server">
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </asp:Panel>
            </ContentTemplate>
        </asp:UpdatePanel>
        <article>
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <section>
                        <div class="text-center Subtitulos">Ingreso Productos</div>
                        <div class="Form">
                            <div class="Cell-Form">
                                <%--En este div se encierran las filas de esta columna--%>
                                <div class="input-group">
                                    <div class="input-group-addon">Nombre Producto</div>
                                    <asp:TextBox ID="TxtProducto" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="input-group">
                                    <div class="input-group-addon">Valor del Producto</div>
                                    <asp:DropDownList ID="Drl_Categoria" CssClass="form-control" runat="server"></asp:DropDownList>
                                </div>
                                <div class="input-group">
                                    <div class="input-group-addon">Categoría</div>
                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
                                </div>
                                <asp:Button ID="Btn_RegistrarProducto" CssClass="btn btn-primary" runat="server" Text="Registrar" />
                            </div>
                            <div class="Space-Form"></div>
                            <div class="Cell-Form">
                                <div class="input-group">
                                    <div class="input-group-addon">Cantidad</div>
                                    <asp:TextBox ID="TxtCantidad" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="input-group">
                                    <div class="input-group-addon">Fecha de Ingreso</div>
                                    <asp:TextBox ID="TxtFecha" CssClass="form-control Fecha" MaxLength="10" Placeholder="DD/MM/YYYY" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section>
                        <div class="text-center Subtitulos">Consulta de Productos</div>
                        <div class="Form">
                            <div class="Cell-Form">
                                <div class="input-group">
                                    <%--div donde se encierra label y textBox--%>
                                    <div class="input-group-addon">Nombre del Producto</div>
                                    <%--label con el nombre--%>
                                    <asp:TextBox ID="TxtBuscarProducto" CssClass="form-control" runat="server"></asp:TextBox>
                                    <%--caja de texto txt--%>
                                </div>
                                </div>
                                <div class="Space-Form"></div>
                                <div class="Cell-Form">
                                    <div class="input-group">
                                        <div class="input-group-addon">Categoria</div>
                                        <asp:DropDownList ID="Drl_CategoriaBuscar" CssClass="form-control" runat="server"></asp:DropDownList>
                                    </div>
                                </div>                                               
                        </div>
                        <asp:Button ID="btn_Button1"  CssClass="btn btn-primary" runat="server" Text="Consultar" />          
                    </section>
                    <asp:GridView class="Grid_Js" ID="Gtg_Productos" runat="server"></asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </article>
        <footer></footer>
    </form>
</body>
</html>
<%--	© 2016 Crisitan Duarte C1477	--%>