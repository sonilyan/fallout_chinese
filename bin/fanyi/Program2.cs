using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using System.Text;
using System.Net;
using System.IO;
using System.Security.Cryptography;
using System.Threading;
using System.Web;

using RestSharp;
using Newtonsoft.Json;

namespace fanyi2
{
    public class sd
    {
        public string src;
        public string dst;
    }
    public class xxxx
    {
        public string from;
        public string to;
        public List<sd> trans_result;
    }
    public class read
    {
        public xxxx result;
        public string error_code;
        public string error_msg;
    }

    class Program
    {
        static void xxx()
        {
            Dictionary<string, string> replace = new Dictionary<string, string>();
            replace.Add("休斯敦大学", "Uh");
            replace.Add("隐马尔可夫模型。。。", "Hmm...");
            replace.Add("婆罗门", "双头牛");
            replace.Add("金库", "避难所");
            replace.Add("。。。", "...");

            Encoding.RegisterProvider(CodePagesEncodingProvider.Instance);

            Directory.CreateDirectory("./test/out");

            var files = Directory.GetFiles("./test");
            foreach (var file in files)
            {
                var f = Path.GetFileName(file);
                if (f.EndsWith(".msg") && !File.Exists($"./test/out/{f}"))
                {
                    var tmp = File.ReadAllLines(file, Encoding.GetEncoding("GB2312"));

                    foreach (var k in replace)
                    {
                        for (int i = 0; i < tmp.Length; i++)
                        {
                            tmp[i] = tmp[i].Replace(k.Key, k.Value);
                        }
                    }

                    File.WriteAllLines($"./test/out/{f}", tmp, Encoding.GetEncoding("GB2312"));
                }
            }

            Console.WriteLine("Enter for exit");
            Console.ReadLine();
        }

        static void fanyi2()
        {
            Encoding.RegisterProvider(CodePagesEncodingProvider.Instance);
            
            Directory.CreateDirectory("./test/out");
            Directory.CreateDirectory("./test/out2");

            var files = Directory.GetFiles("./test");
            foreach (var file in files)
            {
                var f = Path.GetFileName(file);
                if (f.EndsWith(".msg") && !File.Exists($"./test/out/{f}"))
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
            
            var raw = File.ReadAllLines("./test/"+file, Encoding.GetEncoding("KOI8-U"));
                var lines = new List<string>();

            var newline = "";
            bool startnewline = false;
            for (int i = 0; i < raw.Length; i++)
            {
                var tmp = raw[i];
				if (tmp.StartsWith("{"))
				{
                    startnewline = true;
				}

                if (startnewline)
                {
                    newline += tmp;
                }
                if (tmp.EndsWith("}"))
                {
                    startnewline = false;
                    if (newline.Contains("\""))
                    {
                        newline = newline.Replace("\"", "");
                        int x =10;
                    }
                    lines.Add(newline);
                    newline = "";
                }
            }

            for (int i = 0; i < lines.Count; i++)
            {
                Thread.Sleep(25);
                var str = lines[i];

                var match1 = Regex.Match(str, "^\\{(?<id>.*)\\}\\{(?<zz>.*)\\}\\{\\[(?<value>.*)\\]\\}");
                var match2 = Regex.Match(str, "^\\{(?<id>.*)\\}\\{(?<zz>.*)\\}\\{::(?<value>.*)::\\}");
                var match3 = Regex.Match(str, "^\\{(?<id>.*)\\}\\{(?<zz>.*)\\}\\{(?<value>.*)\\}");


                if (match1.Success && !string.IsNullOrEmpty(match1.Groups["id"].Value) &&
                    !string.IsNullOrEmpty(match1.Groups["value"].Value))
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
                else if (match2.Success && !string.IsNullOrEmpty(match2.Groups["id"].Value) &&
                         !string.IsNullOrEmpty(match2.Groups["value"].Value))
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
                else if (match3.Success && !string.IsNullOrEmpty(match3.Groups["id"].Value) &&
                         !string.IsNullOrEmpty(match3.Groups["value"].Value))
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
 
        public static void Maixn(string[] args)
        {
            var client = new RestClient();
            var request = new RestRequest($"https://aip.baidubce.com/oauth/2.0/token?client_id=FWC7ljeDwehzB8Vo900YyAZp&client_secret=vbxqbnOtmXx83IFqtHGbAyBzM6zUSLoF&grant_type=client_credentials", Method.Post);
            request.AddHeader("Content-Type", "application/json");
            request.AddHeader("Accept", "application/json");
            var body = @"";
            request.AddParameter("application/json", body, ParameterType.RequestBody);
            RestResponse response = client.Execute(request);
            Console.WriteLine(response.Content);

        }

        static (bool, string) GetString(string q)
        {
            if (string.IsNullOrEmpty(q) || q.Replace(" ","").Length == 0)
            {
                return (true, "error : string is empty");
            }

            string token = "24.5c0fb564cae3c7f4a0fa7b3864821d75.2592000.1699749916.282335-40980062";
            string host = "https://aip.baidubce.com/rpc/2.0/mt/texttrans/v1?access_token=" + token;
            Encoding encoding = Encoding.Default;
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(host);
            request.Method = "post";
            request.KeepAlive = true;
            String str = "{\"from\":\"ru\",\"to\":\"zh\",\"q\":\"" + q + "\",\"termIds\":\"\"}";
            byte[] buffer = encoding.GetBytes(str);
            request.ContentLength = buffer.Length;
            request.GetRequestStream().Write(buffer, 0, buffer.Length);
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            StreamReader reader = new StreamReader(response.GetResponseStream(), Encoding.Default);
            string result = reader.ReadToEnd();

            var tmp = JsonConvert.DeserializeObject<read>(result);

            if (!string.IsNullOrEmpty(tmp.error_code))
                return (false, q);

            return (true, tmp.result.trans_result[0].dst);
        }
    }
}