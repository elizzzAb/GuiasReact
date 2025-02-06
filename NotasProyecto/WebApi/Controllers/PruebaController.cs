using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PruebaController : ControllerBase
    {
        #region prueba
        // Inicia la URL
        [HttpGet("prueba")]

        // Método público que se ejecutará si la url es llamada
        public string Get()
        {
            return "Hola Mundo";
        }
        #endregion
    }
}
