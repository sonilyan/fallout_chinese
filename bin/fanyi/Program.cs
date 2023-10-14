using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using System.Text;
using System.Net;
using System.IO;
using System.Security.Cryptography;
using System.Threading;
using System.Web;

using Newtonsoft.Json;

namespace fanyi
{
    public class sd
    {
        public string src;
        public string dst;
    }
    public class read
    {
        public string from;
        public string to;
        public List<sd> trans_result;
        public string error_code;
        public string error_msg;
    }
    
    class Program
    {
        static void Main(string[] args)
        {
            Encoding.RegisterProvider(CodePagesEncodingProvider.Instance);
            
            Directory.CreateDirectory("./test/out");
            Directory.CreateDirectory("./test/out2");

            var files = Directory.GetFiles("./test");
            foreach (var file in files)
            {
                var f = Path.GetFileName(file);
                if (file.EndsWith(".msg") && !File.Exists($"./test/out/{f}"))
                {
                    Console.WriteLine($"翻译文件：{f}");
                    if (!DoFile(f))
                    {
                        Console.WriteLine($"翻译 {f} 发生错误");
                        Console.ReadLine();
                        return;
                    }
                }
            }

            Console.WriteLine("Enter for exit");
            Console.ReadLine();
        }

        static bool DoFile(string file)
        {
            List<string> writecont = new List<string>();
            List<string> writecont2 = new List<string>();
            
            var lines = File.ReadAllLines($"./test/{file}");

            for (int i = 0; i < lines.Length; i++)
            {
                var str = lines[i];

                var match1 = Regex.Match(str, "^\\{(?<id>.*)\\}\\{(?<zz>.*)\\}\\{\\[(?<value>.*)\\]\\}");
                var match2 = Regex.Match(str, "^\\{(?<id>.*)\\}\\{(?<zz>.*)\\}\\{::(?<value>.*)::\\}");
                var match3 = Regex.Match(str, "^\\{(?<id>.*)\\}\\{(?<zz>.*)\\}\\{(?<value>.*)\\}");


                if (match1.Success && !string.IsNullOrEmpty(match1.Groups["id"].Value))
                {
                    var r = GetString(match1.Groups["value"].Value);
                    if (r.Item1 == true)
                    {
                        string tmp = "{" + match1.Groups["id"].Value + "}{" + match1.Groups["zz"].Value + "}{[" +
                                     r.Item2 + "]}";
                        string tmp2 = "{" + match1.Groups["id"].Value + "}{" + match1.Groups["zz"].Value + "}{[" +
                                      r.Item2 + " -- " + match1.Groups["value"].Value + "]}";
                        writecont.Add("### " + str);
                        writecont2.Add("### " + str);
                        writecont.Add(tmp);
                        writecont2.Add(tmp2);
                        Console.WriteLine(tmp);
                    }
                    else
                    {
                        return false;
                    }
                }
                else if (match2.Success && !string.IsNullOrEmpty(match2.Groups["id"].Value))
                {
                    var r = GetString(match2.Groups["value"].Value);
                    if (r.Item1 == true)
                    {
                        string tmp = "{" + match2.Groups["id"].Value + "}{" + match2.Groups["zz"].Value + "}{::" +
                                     r.Item2 + "::}";
                        string tmp2 = "{" + match2.Groups["id"].Value + "}{" + match2.Groups["zz"].Value + "}{::" +
                                      r.Item2 +" -- " + match2.Groups["value"].Value + "::}";
                        writecont.Add("### " + str);
                        writecont2.Add("### " + str);
                        writecont.Add(tmp);
                        writecont2.Add(tmp2);
                        Console.WriteLine(tmp);
                    }
                    else
                    {
                        return false;
                    }
                }
                else if (match3.Success && !string.IsNullOrEmpty(match3.Groups["id"].Value))
                {
                    var r = GetString(match3.Groups["value"].Value);
                    if (r.Item1 == true)
                    {
                        string tmp = "{" + match3.Groups["id"].Value + "}{" + match3.Groups["zz"].Value + "}{" +
                                     r.Item2 + "}";
                        string tmp2 = "{" + match3.Groups["id"].Value + "}{" + match3.Groups["zz"].Value + "}{" +
                                      r.Item2 + " -- " + match3.Groups["value"].Value + "}";
                        writecont.Add("### " + str);
                        writecont2.Add("### " + str);
                        writecont.Add(tmp);
                        writecont2.Add(tmp2);
                        Console.WriteLine(tmp);
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    writecont.Add(str);
                    writecont2.Add(str);
                    Console.WriteLine(str);
                }
            }

            File.WriteAllLines($"./test/out/{file}", writecont, Encoding.GetEncoding("GB2312"));
            File.WriteAllLines($"./test/out2/{file}", writecont2, Encoding.GetEncoding("GB2312"));
            return true;
        }

        static (bool,string) GetString(string q)
        {
            if (string.IsNullOrEmpty(q) || q.Replace(" ", "").Length == 0)
            {
                return (true, "error : string is empty");
            }

            Thread.Sleep(101);
            
            // 源语言
            string from = "en";
            // 目标语言
            string to = "zh";
            // 改成您的APP ID
            string appId = "20230613001710753";
            Random rd = new Random();
            string salt = rd.Next(100000).ToString();
            // 改成您的密钥
            string secretKey = "mu5RDovM0dvMliqLzZse";
            string sign = EncryptString(appId + q + salt + secretKey);
            string url = "http://api.fanyi.baidu.com/api/trans/vip/translate?";
            url += "q=" + HttpUtility.UrlEncode(q);
            url += "&from=" + from;
            url += "&to=" + to;
            url += "&appid=" + appId;
            url += "&salt=" + salt;
            url += "&sign=" + sign;
            HttpWebRequest request = (HttpWebRequest) WebRequest.Create(url);
            request.Method = "GET";
            request.ContentType = "text/html;charset=KOI8-U";
            request.UserAgent = null;
            request.Timeout = 6000;

            string retString = "";
            try
            {
                HttpWebResponse response = (HttpWebResponse)request.GetResponse();
                Stream myResponseStream = response.GetResponseStream();
                StreamReader myStreamReader = new StreamReader(myResponseStream, Encoding.GetEncoding("utf-8"));
                retString = myStreamReader.ReadToEnd();
                myStreamReader.Close();
                myResponseStream.Close();

            }
            catch (Exception e)
            {
                Thread.Sleep(1000);
                return GetString(q);
            }
            Console.WriteLine(retString);

            var tmp = JsonConvert.DeserializeObject<read>(retString);
            
            if(!string.IsNullOrEmpty(tmp.error_code))
                return (false, "");

            return (true,tmp.trans_result[0].dst);
        }

        // 计算MD5值
        public static string EncryptString(string str)
        {
            MD5 md5 = MD5.Create();
            // 将字符串转换成字节数组
            byte[] byteOld = Encoding.UTF8.GetBytes(str);
            // 调用加密方法
            byte[] byteNew = md5.ComputeHash(byteOld);
            // 将加密结果转换为字符串
            StringBuilder sb = new StringBuilder();
            foreach (byte b in byteNew)
            {
                // 将字节转换成16进制表示的字符串，
                sb.Append(b.ToString("x2"));
            }

            // 返回加密的字符串
            return sb.ToString();
        }
    }
}