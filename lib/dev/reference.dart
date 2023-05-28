import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Reference extends StatefulWidget{
  const Reference({super.key});
  @override
  State<Reference> createState()=> _Reference();
}

class _Reference extends State<Reference>{

  Future goto(url) async{
    if (await canLaunch(url)) {
          await launch(url);
    }
    print("not found this url ${url}");
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Reference"),backgroundColor: Colors.green),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(40),
                child: const Text("Reference",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)
                )
              ),
              MaterialButton(
                padding: EdgeInsets.all(15),
                onPressed: () { goto("https://asbp.org.ph/wp-content/uploads/2017/05/PJSB_2017-2-003.pdf"); },
                child: const Text(
                  "Amoroso, V., Lagunday, N., Coritico, F., & Colong, R. (2017). Nepenthes alfredoi (Caryophyllales, Nepenthaceae), A New Species of Pitcher Plant from Mindanao, Philippines. Retrieved from https://asbp.org.ph/wp-content/uploads/2017/05/PJSB_2017-2-003.pdf"
                )
              ),
              MaterialButton(
                padding: EdgeInsets.all(15),
                onPressed: () { goto("http://www.neppy.ru/sites/default/files/attenboroughii.pdf"); },
                child: const Text(
                  "Robinson, A., Fleischmann, A., et al. (2008). A spectacular new species of Nepenthes L. (Nepenthaceae) pitcher plant from central Palawan, Philippines. Retrieved From http://www.neppy.ru/sites/default/files/attenboroughii.pdf"
                )
              ),
              MaterialButton(
                padding: EdgeInsets.all(15),
                onPressed: () { goto("http://www.neppy.ru/sites/default/files/barselonae.pdf"); },
                child: const Text(
                  "Cheek, M., Tandang, D., & Palser, P. (2015). Nepenthes barcelonae (Nepenthaceae), a new species from Luzon, Philippines. Retrieved from http://www.neppy.ru/sites/default/files/barselonae.pdf"
                )
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: const Text(
                  "Robinson, A., Zamudio, S., & Caballero, R. (2019). Nepenthes erucoides (Nepenthaceae), an ultramaficolous micro-endemic from Dinagat Islands Province, northern Mindanao, Philippines. Phytotaxa, 423(1), 21-32. https://doi.org/10.11646/phytotaxa.423.1.3"
                )
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: const Text(
                  "Gronemeyer, T., McPherson, S., Coritico, F., Micheler, M., Marwinski, D., & Amoroso, V. (2011). Nepenthes pulchra, a new pitcher plant species from Mount Kiamo, Mindanao. New Nepenthes, 1, 424-439."
                )
              ),
              MaterialButton(
                padding: EdgeInsets.all(15),
                onPressed: () { goto("https://doi.org/10.3767/000651913X673513"); },
                child: const Text(
                  "Cheek, M., & Jebb, M. (2013). Nepenthes samar (Nepenthaceae), a new species from Samar, Philippines. Blumea: Journal of Plant Taxonomy and Plant Geography, 58, 82-84. https://doi.org/10.3767/000651913X673513"
                )
              ),
              MaterialButton(
                padding: EdgeInsets.all(15),
                onPressed: () { goto("https://docplayer.net/229524660-Two-new-nepenthes-species-from-the-unexplored-mountains-ofcentral-mindanao-philippines.html"); },
                child: const Text(
                  "Lagunday, N., Acma, F., Cabana, V., Sabas, N., & Amoroso, V. (2017). Two New Nepenthes Species from the UnexploredMountains of Central Mindanao, Philippines. Retrieved from https://docplayer.net/229524660-Two-new-nepenthes-species-from-the-unexplored-mountains-ofcentral-mindanao-philippines.html"
                )
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: const Text(
                  "Lagunday, N. E., Rosa, S. D., Cleofei, C. M. B., Jr, Patano, R., Coritico, F. P., & Amoroso, V. B. (2022). Nepenthes candalaga (Nepenthaceae), a new species from eastern Mindanao, Philippines. Phytotaxa, 554(3), 285-292. doi: 10.11646/phytotaxa.554.3.4"
                )
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: const Text("Gronemeyer, T., Coritico, F., Micheler, M., Marwinski, D., Acil, R., & Amoroso, V. (2011). Nepenthes ceciliae, a new pitcher plant species from Mount Kiamo, Mindanao. New Nepenthes, 1, 413-423.")
              ),
              MaterialButton(
                padding: EdgeInsets.all(15),
                onPressed: () { goto("https://www.mdpi.com/2223-7747/3/2/284"); },
                child: const Text(
                  "Gronemeyer, T., Coritico, F., Wistuba, A., Marwinski, D., Gieray, T., Micheler, M., Amoroso, V., & Mey F.C. (2014). Four New Species of Nepenthes L. (Nepenthaceae) from the Central Mountains of Mindanao, Philippines. Retrieved from https://www.mdpi.com/2223-7747/3/2/284"
                )
              ),
              MaterialButton(
                padding: EdgeInsets.all(15),
                onPressed: () { goto("https://doi.org/10.11646/phytotaxa.423.1.3"); },
                child: const Text(
                  "Robinson, A., Zamudio, S.G., & Caballero, R.B. (2019). Nepenthes erucoides (Nepenthaceae), an ultramaficolous micro-endemic from Dinagat Islands Province, northern Mindanao, Philippines. Phytotaxa 423 (1): 021-032. https://doi.org/10.11646/phytotaxa.423.1.3"
                )
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: const Text("Cheek, M. R., & Jebb, M. H. P. (2013). Typification and redelimitation of Nepenthes alata with notes on the N. alata group, and N. negros sp. nov. from the Philippines. Nordic Journal of Botany, 31, 616-622")
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: const Text("Gronemeyer, T., Wistuba, A., Heinrich, V. B., McPherson, S. R., Mey, F. S., & Amoroso, V. B. (2010). Nepenthes hamiguitanensis (Nepenthaceae), a new pitcher plant species from Mindanao Island, pp. 1296-1305. In McPherson, S. R. (Ed.), Carnivorous plants and their habitats 2")
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: const Text("Macfarlane, J. M. (1911). Nepenthes merrilliana. Transactions and Proceedings of the Botanical Society of Pennsylvania, 3(3), 208, t. 1.")
              ),
              MaterialButton(
                padding: EdgeInsets.all(15),
                onPressed: () { goto("https://doi.org/10.11646/phytotaxa.151.1.2"); },
                child: const Text(
                  "Cheek, M., & Jebb, M. (2013). The Nepenthes micramphora (Nepenthaceae) group, with two new species from Mindanao, Philippines. Phytotaxa 151 (1): 25–34 (2013). https://doi.org/10.11646/phytotaxa.151.1.2"
                )
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: const Text("Cheek, M. R., & Jebb, M. H. P. (2013). Identification and typification of Nepenthes blancoi, with N. abalata sp. nov. from the western Visayas, Philippines. Nordic Journal of Botany, 31(2), 151-156.")
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: const Text("Cheek, M. R., & Jebb, M. H. P. (2001). Flora Malesiana - Nepenthaceae, Series I, Volume 15.")
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: const Text("Cheek, M. R., & Jebb, M. H. P. (2014). Expansion of the Nepenthes alata group (Nepenthaceae), Philippines, and descriptions of three new species. Blumea, 59, 144-154.")
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: const Text("Jebb, M. H. P., & Cheek, M. R. (1997). A skeletal revision of Nepenthes. Blumea, 42(1), 1-106.")
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: const Text("Gronemeyer, T., Coritico, F., Micheler, M., Marwinski, D., Acil, R., & Amoroso, V. B. (2011). Nepenthes ceciliae, a new pitcher plant from Mount Kiamo, Mindanao (pp. 312-324). In S. R. McPherson (Ed.), New Nepenthes 1.")
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: const Text("McPherson, S. (2009). Pitcher plants of the Old World, Vol. 1 & 2. Poole: Redfern Natural History Productions.")
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: const Text("McPherson, S. (2010). Carnivorous plants and their habitats, Vol. 1 & 2. Poole: Redfern Natural History Productions.")
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: const Text("Cheek, M. R., & Jebb, M. H. P. (2001). Flora Malesiana - Nepenthaceae, Series I, Volume 15.")
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: const Text("Cheek, M. R., & Jebb, M. H. P. (2013). Typification and redelimitation of Nepenthes alata with notes on the N. alata group, and N. negros sp. nov. from the Philippines. Nordic Journal of Botany, 31, 616-622.")
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: const Text("Heinrich, V. B., McPherson, S. R., Gronemeyer, T., & Amoroso, V. B. (2009). Nepenthes micramphora (Nepenthaceae), a new species of Nepenthes L. from southern Mindanao, Philippines, pp. 1314-1319. In S. R. McPherson (Ed.), Pitcher Plants of the Old World 2.")
              ),
            ],
          ),
        ),
      )
    );
  }
  launchUrl(Uri url) {}
}