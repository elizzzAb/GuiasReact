//using reactBackend.Models;
//using reactBackend.Repository;

////Abstracción de un objeto
//AlumnoDao alumnoDao = new AlumnoDao();
////Llamamos el método que creamos en el DAO

//#region SelectAll
////??????
////public List<Alumno> SelectAll()
////{
////    var alumno = contexto.Alumnos.ToList<Alumno>();
////    return alumno;
////}

//#endregion

//Console.WriteLine("  ");

//var alumno = alumnoDao.SelectAll();
////Recorremos la lista
//foreach (var item in alumno)
//{
//    Console.WriteLine(item.Nombre);
//}



//#region SelectByID
////probamos el select por Id
//var SelectById = alumnoDao.GetById(1000);
//Console.WriteLine(SelectById?.Nombre);
//#endregion

//#region addAlumno
////var nuevoAlumno = new Alumno
////{
////    Direccion = "Ciudad de Nueva York, barrio TriBeCa",
////    Dni = "1345",
////    Edad = 31,
////    Email = "1mharry@email",
////    Nombre = "Harry Edward Styles"

////};

////var resultado = alumnoDao.insertarAlumno(nuevoAlumno);
////Console.WriteLine(resultado);

//#endregion

//#region borrar
//var result = alumnoDao.deleteAlumno(2);
//Console.WriteLine("Se eliminó" + result);
//#endregion

//#region updateAlumno
//// Actualizar un registro
//var nuevoAlumno2 = new Alumno
//                   {
//                       Direccion = "Ojos de Agua",
//                       Dni = "12345",
//                       Edad = 23,
//                       Email = "12345@email.com",
//                       Nombre = "Alondra Lopez"
//                   };
//var resultado2 = alumnoDao.actualizarAlumno(2, nuevoAlumno2);
//Console.WriteLine(resultado2);
//#endregion


//#region alumnoAsignatura desde un JOIN

//// Asignatura desde JOIN
//var alumAsig = alumnoDao.SelectAlumAsig();
//foreach (AlumnoAsignatura alumAsig2 in alumAsig)
//{
//    Console.WriteLine(alumAsig2.nombreAlumno + " Asignatura que cursa " + alumAsig2.nombreAsignatura);
//}

//#endregion
