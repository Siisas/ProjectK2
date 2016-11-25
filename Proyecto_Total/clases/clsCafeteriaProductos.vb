Public Class clsCafeteriaProductos
    Protected idProducto As Integer
    Protected nombreProducto As String
    Protected idCategoria As Integer
    Protected categoria As String
    Protected cantidadProducto As Integer
    Protected valorProducto As Integer
    Protected fechaRegistroProducto As Date
    Protected codigoCliente As Integer
    Protected codigoEmpleado As Integer
    Protected nombreCliente As String
    Protected nombreEmpleado As String



    Public Property PublicidProducto As Integer
        Get
            Return idProducto
        End Get
        Set(value As Integer)
            idProducto = value
        End Set
    End Property

    Public Property PublicNombreProducto As String
        Get
            Return nombreProducto
        End Get
        Set(value As String)
            nombreProducto = value
        End Set
    End Property

    Public Property PublicIdCategoria As Integer
        Get
            Return idCategoria
        End Get
        Set(value As Integer)
            idCategoria = value
        End Set
    End Property

    Public Property PublicCategoria As String
        Get
            Return categoria
        End Get
        Set(value As String)
            categoria = value
        End Set
    End Property

    Public Property PublicCantidadProducto As Integer
        Get
            Return cantidadProducto
        End Get
        Set(value As Integer)
            cantidadProducto = value
        End Set
    End Property

    Public Property PublicValorProducto As Integer
        Get
            Return valorProducto
        End Get
        Set(value As Integer)
            valorProducto = value
        End Set
    End Property

    Public Property PublicFechaRegistroProducto As Date
        Get
            Return fechaRegistroProducto
        End Get
        Set(value As Date)
            fechaRegistroProducto = value
        End Set
    End Property

    Public Property PublicCodigoCliente As Integer
        Get
            Return codigoCliente
        End Get
        Set(value As Integer)
            codigoCliente = value
        End Set
    End Property

    Public Property PublicCodigoEmpleado As Integer
        Get
            Return codigoEmpleado
        End Get
        Set(value As Integer)
            codigoEmpleado = value
        End Set
    End Property

    Public Property PublicNombreCliente As String
        Get
            Return nombreCliente
        End Get
        Set(value As String)
            nombreCliente = value
        End Set
    End Property

    Public Property PublicNombreEmpleado As String
        Get
            Return nombreEmpleado
        End Get
        Set(value As String)
            nombreEmpleado = value
        End Set
    End Property

    'empiezo a hacer conexion con la base de datos para insertar datos 
    'utilizo stored procedured y una propiedad como parametro que recibe
    Public Sub RegEmpleadosCafeteria()

        Dim cn As New SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("conexion2").ConnectionString) ' Conexion con la base 
        Try
            Dim cms As New SqlClient.SqlCommand("SpRegistrarEmpleado")
            cn.Open()
            cms.CommandType = CommandType.StoredProcedure
            cms.Parameters.AddWithValue("@NombreEmpleado", nombreEmpleado)
            cms.Connection = cn
            cms.ExecuteNonQuery()

        Catch ex As Exception
            Throw ex
        Finally
            If cn.State = ConnectionState.Open Then
                cn.Close()
            End If
        End Try
    End Sub

    Public 

End Class