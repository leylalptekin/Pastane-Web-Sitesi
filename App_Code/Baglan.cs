using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for Baglan
/// </summary>
public class Baglan
{
    public static SqlDataSource Baglanti()
    {
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = "server=localhost;user id=root;database=vbpastane"; 
        sds.ProviderName = "MySql.Data.MySqlClient";
        return sds;
    }
    public static SqlDataSource Sec(string sorgu)
    {
        SqlDataSource sds = Baglanti();
        sds.SelectCommand = sorgu;
        return sds;
    }

    public static SqlDataSource Duzenle(string sorgu)
    {
        SqlDataSource sds = Baglanti();
        sds.UpdateCommand = sorgu;
        return sds;
    }

    public static SqlDataSource Sil(string sorgu)
    {
        SqlDataSource sds = Baglanti();
        sds.DeleteCommand = sorgu;
        return sds;
    }
    public static SqlDataSource Ekle(string sorgu)
    {
        SqlDataSource sds = Baglanti();
        sds.InsertCommand = sorgu;
        return sds;
    }

    public static int SatirSayisi(SqlDataSource sds)
    {
        DataTable tablo = Tablo(sds);
        return tablo.Rows.Count;
    }

    public static DataTable Tablo(SqlDataSource sds)
    {
        DataSourceSelectArguments args = new DataSourceSelectArguments();
        DataView view = (DataView)sds.Select(args);
        DataTable tablo = view.ToTable();
        return tablo;
    }
    public static string AdresDuzenle(object a)
    {
        string s = a.ToString();

        //s = oncul + id + "-" + s;
        if (string.IsNullOrEmpty(s)) //string yok ve ya boş ise true döndürür
        {
            return "";

        }

        if (s.Length > 80)
        {
            s = s.Substring(0, 80); //string den belli karakter alır.
        }
        s = s.Replace("ş", "s"); //karakter değişimi için kullanılır
        s = s.Replace("Ş", "S");
        s = s.Replace("ğ", "g");
        s = s.Replace("Ğ", "G");
        s = s.Replace("İ", "I");
        s = s.Replace("ı", "i");
        s = s.Replace("ç", "c");
        s = s.Replace("Ç", "C");
        s = s.Replace("ö", "o");
        s = s.Replace("Ö", "O");
        s = s.Replace("ü", "u");
        s = s.Replace("Ü", "U");
        s = s.Replace("'", "");
        s = s.Replace("\"", "");
        Regex r = new Regex("[^a-zA-Z0-9_-]");
        //if (r.IsMatch(s))
        s = r.Replace(s, "-");
        if (!string.IsNullOrEmpty(s))
            while (s.IndexOf("--") > -1)
                s = s.Replace("--", "-");
        if (s.StartsWith("-")) s = s.Substring(1);
        if (s.EndsWith("-")) s = s.Substring(0, s.Length - 1);
        return s;
    }

}