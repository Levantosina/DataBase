using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data;
using MySql.Data.MySqlClient;



namespace sqlBD
{
    public partial class CSR : Form
    {



        static string myConnectionString = "server=localhost;user id=root;pwd=1234;database=dbproject";
        SqlCommand cmd;
        SqlDataAdapter adapt;
        int ID = 0;
        public CSR()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            MySql.Data.MySqlClient.MySqlConnection conn;
            conn = new MySql.Data.MySqlClient.MySqlConnection();

        try
              {
                 conn.ConnectionString = myConnectionString;
                 conn.Open();
               
                string sql = "SELECT  productid,productname, price FROM CSR GROUP BY productname";



                MySqlDataAdapter da = new MySqlDataAdapter();
                da.SelectCommand = new MySqlCommand(sql, conn);
                DataTable table = new DataTable();
                da.Fill(table);

                BindingSource bSource = new BindingSource();
                bSource.DataSource = table;
                dataGridView1.DataSource = bSource;

              
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                MessageBox.Show(ex.Message);

            }

            conn.Close();





        }

           private void button2_Click(object sender, EventArgs e)
           {


               MySql.Data.MySqlClient.MySqlConnection conn;
               conn = new MySql.Data.MySqlClient.MySqlConnection();


               conn.ConnectionString = myConnectionString;

               var productname = textBox1.Text;
               var price = textBox2.Text;
                var itemssold = textBox3.Text;
          
             

            string date = DateTime.Now.ToString();
            string createddate = Convert.ToDateTime(date).ToString("yyyy-MM-dd");



          


            string querystring = $"BEGIN;INSERT INTO csr(productname, price)VALUES('{productname}', '{price}');INSERT INTO transaction(productid, itemssold,dateof)VALUES(LAST_INSERT_ID(), '{itemssold}','{createddate}');INSERT INTO rs(ordernumber,totalsales)VALUES(LAST_INSERT_ID(),'{itemssold}'); COMMIT; "; //UPDATE csr INNER JOIN transaction USING(productid)SET productname = '{ productname }', price = '{price}', itemssold = '{itemssold}'
            MySqlCommand cmd = new MySqlCommand(querystring,  conn);
         
            conn.Open();
           


            if (cmd.ExecuteNonQuery() == 1)
               {
                   MessageBox.Show("no");
                conn.Close();
            }
               else
               {
                   MessageBox.Show("yes");
                conn.Close();
            }

            
                        try
                           {

                               string sql = "SELECT productid,productname, price FROM CSR GROUP BY productname DESC LIMIT 1";
                            MySqlDataAdapter da = new MySqlDataAdapter();
                            da.SelectCommand = new MySqlCommand(sql, conn);
                            DataTable table = new DataTable();
                            da.Fill(table);

                            BindingSource bSource = new BindingSource();
                            bSource.DataSource = table;
                            dataGridView1.DataSource = bSource;


                        }
                        catch (MySql.Data.MySqlClient.MySqlException ex)
                        {
                            MessageBox.Show(ex.Message);

                        }
             
        }


    }

}


          


        
    

