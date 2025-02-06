using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using reactBackend.Models;
using reactBackend.Repository;

namespace WebApi.Controllers
{
    [Route("api")]
    [ApiController]
    public class AlumnoController : ControllerBase
    {
        //representa el modelo de datos de alumnos, para poder instanciarlo es privado
        private AlumnoDao _dao = new AlumnoDao();

        #region endPointAlumnoProfesor
        [HttpGet("alumnoProfesor")]
        public List<AlumnoProfesor> GetAlumnoProfesor(string usuario)
        {
            return _dao.AlumnoProfesors(usuario);
        }
        #endregion

        #region SelectByID

        [HttpGet("alumno")]
        public Alumno selectById(int id)
        {
            var alumno = _dao.GetById(id);
            return alumno;
        }


        [HttpPut("alumno")]
        public bool actualizarAlumno([FromBody] Alumno alumno)
        {
            return _dao.actualizarAlumno(alumno.Id, alumno);
        }

        #endregion





    }
}
