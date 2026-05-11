# programacionIII-TP4
* Conexión a Base de Datos SQL Server desde una aplicación Web ASP.NET utilizando C#.
* Al usar diferentes BBDD se adaptó una clase para evitar la repetición utilizando `web.config` para parametrizar la _connectionString_
* Uso de MasterPages para mantener una estructura consistente en todas las páginas de la aplicación.
* Uso de RequiredFieldValidator para validar que los campos obligatorios sean completados por el usuario y controlar el tipo de dato.
* Utilización de DropDownList para mostrar datos relacionados y evitar opciones no válidas.
![imagen del Menú Principal](./.images/TP4-ej1mp.gif)


# Ejercicio 1
Ejercicio 1
Para realizar este ejercicio deberá utilizar la Base de Datos Viajes que se encuentra
en el aula virtual. La aplicación web tratará acerca de viajes en avión y sus posibles
destinos. Utilizar para conectarse a la Base de Datos la ruta genérica con el nombre
localhost. Observar el ejemplo:
string rutaViajesSQL = "Data Source=localhost\\sqlexpress;Initial
Catalog=Viajes;Integrated Security=True";
El formulario deberá contener 4 listas desplegables (DropDownList)..

1) Las localidades, ya sean las de destino inicio o las de destino final, se cargarán
de acuerdo con la provincia que elijan. Si eligen Entre Ríos entonces se
cargarán las localidades de Entre Ríos.
2) El programa tendrá el siguiente funcionamiento: Si se elige destino de inicio
Buenos Aires, Buenos Aires ya no estará entre las opciones de Destino Final,
de igual manera con las demás provincias.
IMPORTANTE:
Tener en cuenta que en cualquier momento se puede volver a seleccionar una nueva
provincia como destino de inicio, en este caso se deben completar nuevamente los
DropDownList con la información correspondiente.

![imagen del ejercicio 1](./.images/TP4-ej1.gif)
# Ejercicio 2

En el formulario se deberán mostrar los productos y se podrá ir filtrando por dos
parámetros, el Id del producto y el IdCategoría.
⎯ Inicialmente, es decir al cargar el Form, la grilla muestra todos los datos.
⎯ Si sólo completó el TextBox destinado para el Id Producto, entonces sólo se
filtrará por ese parámetro.
⎯ Si sólo completó el TextBox destinado para el IdCategoría, entonces s+olo se
filtrará por ese parámetro.
⎯ Si completó los TextBox destinados para el IdProducto e IdCategoría, se filtrará
por ambos parámetros.
⎯ Si no completa ningún ítem entonces la grilla no aplicará filtro y traerá a todos
los registros.
Luego de hacer clic en filtrar se limpiarán los TextBox destinados para el IdProducto
e IdCategoría.
El botón quitar filtro vuelve a cargar todos los datos de la grilla.
![imagen del ejercicio 2](./.images/TP4-ej2.gif)

# Ejercicio 3
El DropDownList se llenará con los Temas pertenecientes a la tabla Temas de la base
de datos Librería
El enlace Consultar Otro Tema permite regresar del formulario Listado de Libros al de
Seleccionar Tema.
Al seleccionar un tema y hacer clic en la opción Ver Libros se mostrará otra página
donde se podrá observar los libros que son específicamente del tema elegido en la
página anterior.
![imagen del ejercicio 3](./.images/TP4-ej3.gif)
