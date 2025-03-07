﻿using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using reactBackend.Models;
using reactBackend.Repository;

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CalificacionController : ControllerBase
    {
        private CalificacionDao _cdao = new CalificacionDao();

        #region Lista de Calificaciones
        [HttpGet("calificaciones")]
        public List<Calificacion> get(int idMatricula)
        {
            // Invocando al metodo CalificacionDao
            return _cdao.seleccion(idMatricula);
        }

        #endregion

        #region ingresarDatos
        [HttpPost("Calificación")]
        public bool insertar([FromBody] Calificacion calificacion) 
        { 
            return _cdao.insertar(calificacion);
        }

        #endregion


        #region EliminarCalificaciones
        [HttpDelete("Calificación")]
        public bool delete(int idCalificacion)
        {
            return _cdao.eliminarCalificacion(idCalificacion);
        }
        #endregion

    }
}
