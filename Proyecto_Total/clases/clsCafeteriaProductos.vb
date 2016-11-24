Public Class clsCafeteriaProductos
    Private _idProducto As Integer
    Private _nombreProducto As String
    Private _idCategoria As Integer
    Private _categoria As String
    Private _cantidadProducto As Integer
    Private _valorProducto As Integer
    Private _fechaRegistroProducto As Date
    Private _codigoCliente As Integer
    Private _codigoEmpleado As Integer
    Private _nombreCliente As String
    Private _nombreEmpleado As String

    Protected Property IdProducto As Integer
        Get
            Return _idProducto
        End Get
        Set(value As Integer)
            _idProducto = value
        End Set
    End Property

    Protected Property NombreProducto As String
        Get
            Return _nombreProducto
        End Get
        Set(value As String)
            _nombreProducto = value
        End Set
    End Property

    Protected Property IdCategoria As Integer
        Get
            Return _idCategoria
        End Get
        Set(value As Integer)
            _idCategoria = value
        End Set
    End Property

    Protected Property Categoria As String
        Get
            Return _categoria
        End Get
        Set(value As String)
            _categoria = value
        End Set
    End Property

    Protected Property CantidadProducto As Integer
        Get
            Return _cantidadProducto
        End Get
        Set(value As Integer)
            _cantidadProducto = value
        End Set
    End Property

    Protected Property ValorProducto As Integer
        Get
            Return _valorProducto
        End Get
        Set(value As Integer)
            _valorProducto = value
        End Set
    End Property

    Protected Property FechaRegistroProducto As Date
        Get
            Return _fechaRegistroProducto
        End Get
        Set(value As Date)
            _fechaRegistroProducto = value
        End Set
    End Property

    Protected Property CodigoCliente As Integer
        Get
            Return _codigoCliente
        End Get
        Set(value As Integer)
            _codigoCliente = value
        End Set
    End Property

    Protected Property CodigoEmpleado As Integer
        Get
            Return _codigoEmpleado
        End Get
        Set(value As Integer)
            _codigoEmpleado = value
        End Set
    End Property

    Protected Property NombreCliente As String
        Get
            Return _nombreCliente
        End Get
        Set(value As String)
            _nombreCliente = value
        End Set
    End Property

    Protected Property NombreEmpleado As String
        Get
            Return _nombreEmpleado
        End Get
        Set(value As String)
            _nombreEmpleado = value
        End Set
    End Property

    'empiezo a hacer conexion con la base de datos para insertar datos 
    'utilizo stored procedured y una propiedad como parametro que recibe
    Public Function RegEmpleadosCafeteria() As DataSet
        Dim Ingreso As New DataSet

        Dim cn As New SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("conexion2").ConnectionString) ' Conexion con la base 
        Try
            Dim cms As New SqlClient.SqlCommand
            cn.Open()
            cms.CommandType = "SpRegistrarEmpleado"
            cms.CommandText = "Execute SpRegistrarEmpleado,@NombreEmpleado"
            cms.Parameters.AddWithValue("@NombreEmpleado", _nombreEmpleado)
            cms.Connection = cn
            cms.ExecuteNonQuery()
            Return Ingreso
        Catch ex As Exception
            Throw ex
        Finally
            If cn.State = ConnectionState.Open Then
                cn.Close()
            End If
        End Try
    End Function

End Class