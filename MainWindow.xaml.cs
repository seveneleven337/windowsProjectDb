#pragma warning disable 8622, 8600 , 8602, 8604, IDE1006

using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Diagnostics;  //Trace.WriteLine(path);
using System.IO;
using System.Reflection;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Threading;

namespace windowsProject
{
   
    public partial class MainWindow : Window
    {
        string messages = "chat: "+ Environment.NewLine;
        string username = string.Empty;
        Boolean connected = false;
        string connectionString = "server=??;port=??;database=??;uid=??;password=??;";
        readonly string fileName = @"\noshare.txt";

        public MainWindow()
        {
            
            DispatcherTimer dispatcherTimer = new DispatcherTimer();
            dispatcherTimer.Tick += new EventHandler(dispatcherTimer_Tick);
            dispatcherTimer.Interval = new TimeSpan(0, 0, 2);
            dispatcherTimer.Start();

            //init function at start
            readFile();
            ReadDb();
        }

        //window handle functions

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void connectbtn_Click(object sender, RoutedEventArgs e)
        {
            if (userName.Text != "Add User Name")
            {
                username = userName.Text;
                label.Content = "Welcome " + username;
                sendBtn.IsEnabled = true;
                msgSend.IsEnabled = true;
                userName.IsEnabled = false;
                connected = true;
                ReadDb();
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            //  label.Content = input.Text;

            if (messages == string.Empty) { chatMessage.Text = string.Empty; }
            //messages = StartClient(msgSend.Text + "<EOF>") + Environment.NewLine;
            chatMessage.Text += messages;
            msgSend.Text = string.Empty;
        }


        //Utility function
        private void dispatcherTimer_Tick(object sender, EventArgs e)
        {
            if (connected)
            {
                ReadDb();
                chatMessage.Text = messages;
            }
            CommandManager.InvalidateRequerySuggested();
        }

        private void readFile()
        {
            try
            {
                string path = Path.GetDirectoryName(Assembly.GetEntryAssembly().Location);
                path = Directory.GetParent(Directory.GetParent(Directory.GetParent(path).FullName).FullName).FullName + fileName ;
                StreamReader sr = new(path);
                {
                    string line;
                    while ((line = sr.ReadLine()) != null)
                    {
                        connectionString= line;
                    }
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Can not open local file");
            }
        }

        //function related to database

        private void ReadDb()
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            List<userEntry> items = new();
            try
            {
                connection.Open();
                // Creating query string
                string sql = "SELECT * FROM windowsProject";
                // New command object
                MySqlCommand cmd = new MySqlCommand(sql, connection);
                // New reader object
                MySqlDataReader rdr = cmd.ExecuteReader();
                messages = string.Empty;
                // While reader has rows
                while (rdr.Read())
                {
                    items.Add(new userEntry() { id = rdr.GetString(0), name = rdr.GetString(1), message = rdr.GetString(2), timeStamp = rdr.GetString(3), ip = rdr.GetString(4) });
                }
                rdr.Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error connecting to database");
            }
            for(int i=0; i<items.Count; i++)
            {
                messages += items[i].name + ": " + items[i].message + Environment.NewLine; 
            }
        }

        //classes

        public class userEntry
        {
            public string? id { get; set; }
            public string? name { get; set; }
            public string? message { get; set; }
            public string? timeStamp { get; set; }
            public string? ip { get; set; }
        }
    }
}

