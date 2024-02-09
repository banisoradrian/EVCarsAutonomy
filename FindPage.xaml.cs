using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data.SqlClient;


namespace EVCarsAutonomy
{
    /// <summary>
    /// Interaction logic for FindPage.xaml
    /// </summary>
    
    public partial class FindPage : Page
    {

        public FindPage()
        {
           
            InitializeComponent();
        }
        public class DateMasina
        {
            public int autonomie { get; set; }
            public int capacitateBaterie { get; set; }
            public int putere { get; set; }
        }
        DateMasina dateMasina = new DateMasina();


        private void textboxMasinaMarca_TextChanged(object sender, TextChangedEventArgs e)
        {

            // validarea cu Regex 
            TextBox textBox = (TextBox)sender;
            string text = textBox.Text;

            if (!Regex.IsMatch(text, "^[a-zA-Z0-9-.\\s]*$"))
            {
                // Interzice caracterele nedorite și afișează un mesaj de eroare
                textBox.Text = Regex.Replace(text, "[^a-zA-Z0-9-.\\s]", "");
                MessageBox.Show("Introdu Corect Numele si Modelul");
            }


        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            // Obțineți valorile din textbox-uri
            string marcaModel = textboxMasinaMarca.Text;

            // Conectați-vă la baza de date și obțineți informațiile
            string connectionString = "Data Source=ADRIAN\\SQLEXPRESS;Initial Catalog=MasiniElectrice;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = $"SELECT id_masina, autonomie, capacitateBaterie, putere FROM masiniElectrice WHERE marcaModel = @MarcaModel";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@MarcaModel", marcaModel);
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        int idMasina = reader.GetInt32(0);
                        dateMasina.autonomie = reader.GetInt32(1);
                        dateMasina.capacitateBaterie = reader.GetInt32(2);
                        dateMasina.putere = reader.GetInt32(3);

                        // Afișați informațiile
                        MessageBox.Show($"Autonomie: {dateMasina.autonomie} km\nCapacitate baterie: {dateMasina.capacitateBaterie}\nPutere: {dateMasina.putere} CP");

                        // Afișați id-ul masinii pe label
                        labelIdMasina.Content = $"Id - ul Masinii introduse este: {idMasina} Va rugam accesati pagina Analyze !";
                    }
                    else
                    {
                        MessageBox.Show("Masina nu a fost gasita in baza de date.");
                    }
                }
            }
        }
    }
}

