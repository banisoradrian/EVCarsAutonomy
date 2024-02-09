using EVCarsAutonomy;
using System;
using System.Data.SqlClient;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;
using static EVCarsAutonomy.FindPage;
using static System.Net.Mime.MediaTypeNames;

namespace EVCarsAutonomy
{
    public partial class AnalyzePage : Page
    {


        public AnalyzePage()
        {
            InitializeComponent();
        }
        private int idMasina;
        private int autonomie, capacitateBaterie, putere;
        private string imagineMasinaPath;

        private void Click(object sender, RoutedEventArgs e)
        {
            try
            {
                // Obține ID-ul mașinii introdus de utilizator
                idMasina = Convert.ToInt32(textBoxID.Text);

                // Apel pentru a extrage informațiile din baza de date și a le afișa
                AfiseazaDetaliiMasina(idMasina);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Eroare la obținerea ID-ului mașinii: {ex.Message}");
            }
        }

        private void AfiseazaDetaliiMasina(int idMasina)
        {
            try
            {
                string connectionString = "Data Source=ADRIAN\\SQLEXPRESS;Initial Catalog=MasiniElectrice;Integrated Security=True";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string query = "SELECT autonomie, capacitateBaterie, putere, imagineMasina FROM masiniElectrice WHERE id_masina = @IdMasina";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@IdMasina", idMasina);
                        SqlDataReader reader = command.ExecuteReader();

                        if (reader.Read())
                        {
                            // Extrage informațiile din baza de date și le stochează în variabile
                            autonomie = reader.GetInt32(0);
                            capacitateBaterie = reader.GetInt32(1);
                            putere = reader.GetInt32(2);
                            imagineMasinaPath = reader.GetString(3);

                            // Afișează informațiile în interfață
                            lblNumarAutonomie.Content = $"Autonomie: {autonomie} km\nCapacitate baterie: {capacitateBaterie}\nPutere: {putere} CP";

                            // Afișează imaginea în controlul Image
                            AfiseazaImagine();
                        }
                        else
                        {
                            MessageBox.Show("Mașina nu a fost găsită în baza de date.");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Eroare la afișarea detaliilor mașinii: {ex.Message}");
            }
        }

        private void AfiseazaImagine()
        {
            // Formează calea completă către imagine
            string imagePath = System.IO.Path.Combine("C:\\Users\\Adria\\OneDrive\\Documente\\SQL Server Management Studio\\imagini", imagineMasinaPath);

            // Afișează imaginea în controlul Image
            BitmapImage bitmap = new BitmapImage(new Uri(imagePath));
            imagineDB.Source = bitmap;
        }

    }
    }


