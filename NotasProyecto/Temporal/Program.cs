using reactBackend.Models;
using reactBackend.Repository;

//Abstracción de un objeto
AlumnoDao alumnoDao = new AlumnoDao();
//Llamamos el método que creamos en el DAO

//Console.WriteLine("  ");

var alumno = alumnoDao.SelectAll();
//Recorremos la lista
foreach (var item in alumno)
{
    Console.WriteLine(item.Nombre);
}

#region SelectByID
//probamos el select por Id
var SelectById = alumnoDao.GetById(1000);
Console.WriteLine(SelectById?.Nombre);
#endregion
