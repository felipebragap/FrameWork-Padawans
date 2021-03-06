using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace FrameworkPadawans
{
    public partial class About : Page
    {
        HttpClient client;
        Uri usuarioUri;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!Page.IsPostBack)
            {
                getAll();
               
            }




        }

        public About()
        {
            if (client == null)
            {
                client = new HttpClient();
                client.BaseAddress = new Uri("https://jsonplaceholder.typicode.com/");
                client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));
            }
        }

        private void getAll()
        {
           
            //chamando a api pela url
            System.Net.Http.HttpResponseMessage response = client.GetAsync("/posts").Result;

            //se retornar com sucesso busca os dados
            if (response.IsSuccessStatusCode)
            {
                //pegando o cabeçalho
                usuarioUri = response.Headers.Location;

                //Pegando os dados do Rest e armazenando na variável usuários
                var JsonApi = response.Content.ReadAsStringAsync().Result;

                DataTable dt = new DataTable();

                dt = JsonConvert.DeserializeObject<DataTable>(JsonApi);

                //preenchendo a lista com os dados retornados da variável
                GridPostagens.DataSource = dt;
                GridPostagens.DataBind();
            }

            //Se der erro na chamada, mostra o status do código de erro.
            else
                Response.Write(response.StatusCode.ToString() + " - " + response.ReasonPhrase);
        }


        

    }



}


