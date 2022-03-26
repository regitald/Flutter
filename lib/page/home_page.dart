import 'package:flutter/material.dart';
import 'package:iconstore/page/detail_page.dart';
import 'package:iconstore/page/profile_page.dart';
import 'package:iconstore/style/color.dart';
import 'package:iconstore/json/data_json.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: black,
                  ),
                  onPressed: () {}),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => ProfileUI2()));
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://lh3.googleusercontent.com/fife/AAWUweUopjqQe07M_FWznNm6wIvJWdykE3XpLxNYk8Jc0ZVLdAhBmU1zTpgVIXp4fx2MxPK0lpA5WtBRnYU54tQ7_4PjcXfEACGT43TVUpd36PKg4ExIlC-TCLrSm6CCDKhV0jOaDAeQ51bc6h1ax2g5FX0s4Fq3a4N_tpVxWZXapJx0dwPmPbBkejrjDmIaD02nQK32PKjqA1Y38OTMb9czW5M-U9KiS9IZIZa32VMTWeVBvGSWVlsIZkm3cP3i5u-OeMHJNgNvp6751DIo-bwaX3xEbwMZOkRQqo9hcgsLojv12SxLrPIOxar-Hcvj15_mjjDj7dNoZabSwU0PBX3c82dFf6MQ9kBmopRKp7NL5xOH_qjtNSML8CaWcRtkZa6vKEinvHVz5o2sT6rMpZkFxtP5jDOWcvSAVHODzYEIaVxaUu7-5YQLrtlpRXpnvOdZMkfHuRuHNVjDDeotwaVEjZiEIglXaDB7R35CdCWY28x5MVpmOtVd3VNIsbl13B5bTMosCHM5PKC5KQ1kTSpbXCY4w1wgq5MDAjfWDoIrquZngPY7aUZjwC2QQ7qBZxL8hnMJWvNSdJVm7jNWNeMkX9kVUCSzbeJhJi0NGzwzUM5wZYvuxv1U8ZU40UoYgXzfrnb929LpI9PLW-97S3WZp9xwRQVt8PnDuR5h5dhFpK4MDmj6InIlxLWpF_Ehwo1TOSty_y78Nn4M9NQlL9gPOHEAIgwAxL2cVm05e7oKIQs2nN12vcKyRY7VOyU1TsvftrbaAysIrfYBdSslyjn5wKMT4l6VX-ioiyXti18XCJH6Yxb64ThQWT5pz0mMnRRFwYroh9u4tR9SG_PcR3j2OoUkoTM7KHgbIzWNmFbXcg--hwIeG5N_JhrZXfBxOwLSnefZ__r34WTrZnv3GoJZ7MDAoRbKXj7dOWpVwCgrljBCW2oUNME519UOoiTsotBbjU2D2_Q53wsQzSjvR6ts-7Czk4-KtJCekaxXzbkCpWNZ7bVNbfysvSVknqsMSkmg5zTlYScq76IYL3vLbFcSd1FMqI5mZE9ixnefkA1dW1SN7HcloUadRGWRbmGBJnE8p0rDM1NNb_sw0wawfp_53Uxj2J_mSTI4P2GnMZlYgxPKCbwDh1YPZPb0V-8IfMQ_l_3x_Z0S2hQJpZGJBe3VRuMY3xOgCLHBxWaNxeoTWe6NN0UR_rBZqDX8iXTLGYFFmDlZWz89UXavRtaNld6DwZIE7EembXY2gRiiCCf35gvjkbc14YFWjVpEGGIZ-RvQsdFsnoJrYgBUJvuzfmZiUej5vbKshpJgjHtgia-VG7PXMZ7064CpZxoYvPY_gu3bc4HeenmMRJ8KEt3UqcaMJ1CFZfucohIbvh55HKKjgYh6Vng-VEajAvMN-yAgmIMo-l08w0CDXGHCk9lj9SgPW2aszvzOBxiEnapeZ308TRjjACsn53TWOowfJEZHjJEoRGdc7F4fH7F1GqIB6svEVw7GROxKMjdTKUOrS0VdlTlrhErQPT64YWY0SfkGKh3WCNV2ArXdAQEi8O-G9215-UzIelzd-BVOunN26rcgUYEo7KO5BTS8K41G7F-PKRNV85GlzNAiW3GykugFyeieHLJz9c-y3OPRKvFSQrqdzYS-YY_0PvyeOT3wfn8o7IasrGqiAJo7jFz85zf9poa7HTPV4Xes7fLeDEJJbWfn-K1iMdLeKd2yWArw0Z9FJ8VvKSn89jxTEwSunf-8zDXz-15ETzXv3N51r7unxSDPQk7VMUwiOq4C6CjeNe73wADo7Ujj8CLsKWyGWD4Aja0YjdOBUJtKPE72-LbAelF3syw1NKlY9ZGdb7ejfmQ7EmkPS9IWP0CAdwv0ajzspMZ8dO22wxdfdgPND-2GLm1Fj-Pn9aZFcBExsM0BNKL_Rji-sFNJ4zJx0fh7uCmOkIADs9YDH20Qo051Xk8xyLViw2yUo7g9FlPmnjD1uiF3b1Cs-30G7gR5vxAPXooszLuBF5b165qhzLMp9hzWG3fwwzHaHmCI2H9Xowqb7-k4B0YwOjwndmdzqtnAymxAXNVEGeG5PmHS3ZQZZU8AW3kspTLEOFoFF0kZFcN6UMl6eHKYAY7cAemuoOti7s4bJomJqO0INAzfqx7R0X7JxLI3DVHP07lh-bJppe3N6TnkulbsaxIxsePmTKj3Acl88XlD21KMXPbNsLIxu78nW8PjfwXsp3KQi3_PDKUX0jNCamjfihirR6Jpl6_9swPp5MSqNqjRVYTMFDJtDLxDygPAv91zW4HF6vomSoSEycUJPQGhcHOG_4a5YlrUm55vbmcfiiDqoeUQfMegXL1aR2_VM4MejmZTdZK0LcbTO87rBkabamb3VtMFr97cyRLQtE9WEatytW1GYdcjakt5Ec1ieBi7jn0RwWCciBs0OQSlWPRy8dCYo1PTOzzh4Sg8q8KdaX1XTf1BivzAxFLRrJO-1nQtn-5bB624qsooYbSontaIlDFeW-knddWsCXcfycMa1eH0ULpeLqqDHCYqeoHo-WwCKjO7DfVxXrvm9r-XZid0zcaIjrp3nPw36oakGL1U5F9IAvPnIU4NMCFcx0H3qTBzy98JxHW9EsbvgQSt7fHfGEpmg6X1D2iHFNTBuuq0PMHXgbFhwBneHraRu5P9_BAXEj4vefH7DwJ3qgE-fvuCe0n4btXmScDR8WbzOLsRdsIezH9Lz0GupVI2UymsT04_QcglJIWBRw_86NmWMKSTtEHKesV2jOGFgO8KGtDx7xoLOGAzk-rqcpFXcq-QbtXO-Hbt_34qqhPmQnPpcgPFNqgW_8g4CLlqOdzeYhG7l2OPSo3lAKllMV7Vpg-RdXOhdugP0JU0o6KX9oaSa0wsrcs6eJTM9MshCLDJr1aNJTgdrWHCUG5aaXeqtg-elXzogaKgFIUUDEhgKKB7oWjbq8uZ9Be0sojvuZIemXBNaFDeXyR2ai_j7QCOPsQiP5JcSWs8H-PPmM_K4GOB-HSQDfTXeD2_8s-c9ODm2yFXhwAhQwSrRSl-1kn74c3bQX8vK-6SoHnLJa2RgyvHUY4AfnbRSz5tP69PW1tB-I4KjVs8UeEPHyyTmR7Z6AqgJxHhxmXZETbzohPwQlMCHm252mj47tEf9u1UaF0X3cxx4ADK61ZaciCnp_XO_HjWWX6kZ14OpEZ8uQ38rKJMvIkY2n0O9WKQLIiXLmS0spTWJ1nTKyKQQmG61xEqcgPxM9B9HALZZIFuM2PsxlmS34CfB1-M8SR4aCd0h7lqB65_mtcrzd_vDA5-arcwI4LiIPaQJsoimJ970B0il-hCesWvU6WTeyJzcYiR90A_Rx7TthM2EmocsIurEXFP9gsZkE99pjk6Y63IBOWSkY8UKkU0BDkeTEjV720R-LzERfEHT5Oryd0Tnh5_XLNGZudQfakLTevI3UAbCv5kFKp8uKVyQi5w8ejIeOS9OmzS18Wbg__9qFTj32DyBTDZeN3Vvf8udWTY7fb8WEVQiVI_mrMCU1NIN2PZux7sInXfbz1NCnDgZeFF5Md2Ga_fK7x2YmCEuGiKV_xf3XpcirrjwQ7NPT1pA-RKEO20jY78sERFC38ay0fl05FprETE0xh3DTVNQJQcPIWyQBuOccrSL8ZdsW2bnOhyn9V5rISoTQwdafmMFF9DJa9vWf89zuoreJZgZ5qhTZX8injNBLg2Afj5YMn0YZo0pnnokfiCUsFN2xybHzYIFDi4SGkYrcv1WzuW0XtWE1wwNlUJp4UxUcIsCeDFOrWHSNZMNWo7-ngQPXHBIkPkHQROg3s9zBf0aEeanh3Qb0faHxv_lWdfj4Ap28MkBd4r7-INh1_-JA2D6dyz1cJkyxQTWfzND_EiRiYbeO6XLq0A=s867-w488-h867-no?authuser=0'),
                          fit: BoxFit.cover)),
                ),
              )
            ],
          )),
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 40),
      children: <Widget>[
        const Text(
          "Hey, RegitaL",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Temukan Bunga yang anda cari di IconShop !",
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: grey),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 3),
                child: TextField(
                  cursorColor: black,
                  controller: _searchController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Ketik untuk memulai pencarian",
                    hintStyle: TextStyle(color: black),
                    prefixIcon: Icon(Icons.search, color: black),
                  ),
                ),
              ),
            )),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            Text(
              "Kategori",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Lihat Semua",
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.bold, color: primary),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(online_data_one.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => DetailPage(
                                  imgDetail: online_data_one[index]
                                      ['img_detail'],
                                  title: online_data_one[index]['title'],
                                )));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Stack(
                      children: <Widget>[
                        Container(
                            width: (MediaQuery.of(context).size.width - 60) / 2,
                            height: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        online_data_one[index]['img']),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20))),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 25, right: 18, left: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                online_data_one[index]['title'],
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                online_data_one[index]['flowers'],
                                style: TextStyle(
                                    fontSize: 14,
                                    color: black.withOpacity(0.6)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(online_data_two.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => DetailPage(
                                  imgDetail: online_data_two[index]
                                      ['img_detail'],
                                  title: online_data_one[index]['title'],
                                )));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Stack(
                      children: <Widget>[
                        Container(
                            width: (MediaQuery.of(context).size.width - 60) / 2,
                            height: 240,
                            decoration: BoxDecoration(
                                color: primary,
                                image: DecorationImage(
                                    image: AssetImage(
                                        online_data_two[index]['img']),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20))),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 25, right: 18, left: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                online_data_two[index]['title'],
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                online_data_two[index]['flowers'],
                                style: TextStyle(
                                    fontSize: 14,
                                    color: black.withOpacity(0.6)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ],
        )
      ],
    );
  }
}
