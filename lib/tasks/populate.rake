namespace :db do
  task populate: :environment do
    Location.delete_all
    Location.create({name: "Statue of Liberty", street_line_1: "Castle Clinton National Monument", street_line_2: "Battery Park", city: "New York", state: "New York", postal_code: "12754", country_code: "NY", latitude: 41.798476, longitude: -74.7361})
    Location.create({name: "Hard Rock Cafe", street_line_1: "1501 Broadway", city: "New York", state: "New York", postal_code: "10036", country_code: "NY", latitude: 40.759511, longitude: -73.99019})
    Location.create({name: "M&M", street_line_1: "33 Sycamore Road", city: "Milford", state: "New Hampshire", postal_code: "03055", country_code: "NH", latitude: 42.831686, longitude: -71.66743})
    Location.create({name: "MHS", street_line_1: "100 West Street", city: "Milford", state: "New Hampshire", postal_code: "03055", country_code: "NH", latitude: 42.831686, longitude: -71.66743})
    Location.create({name: "NCRH", street_line_1: "1000 Ben Graves Dr", city: "Huntsville", state: "Alabama", postal_code: "35816", country_code: "AL", latitude: 34.73969, longitude: -86.62464})
     
    Company.delete_all
    Company.create({name: "Voli d.o.o.", address: "Bulevar Josipa Broza bb, 81000 Podgorica", email: "info@voli.me", phone: "+38220445000", fax: "+38220445038", website: "www.volivasvoli.com"})
    Company.create({name: "Mesopromet d.o.o. - Franca", address: "Rasovo b.b., 84000 Bijelo Polje", email: "mesopromet@t-com.me", phone: "+38250478488", fax: "+38250478588", website: "www.mesopromet.co.me", pib: "02063344"})
    Company.create({name: "Mercator-CG d.o.o. - Roda", address: "Put Radomira Ivanovića 2, 81000 Podgorica", email: "info@mercator.me", phone: "+38220442403", fax: "+38220442472", website: "www.roda.me"})
    Company.create({name: "Hard Discount Laković d.o.o.", address: "4.jul bb", email: "predrag.tomovic@hdl.co.me", phone: "+38220640330", fax: "+38220640695", website: "www.hdl.co.me"})
    Company.create({name: "Expo Commerce d.o.o.", address: "Industrijska zona bb, 85330 Kotor", email: "kotor@expocommerce.com", phone: "+38232311100", fax: "+38232311670", website: "www.expocommerce.com"})
    Company.create({name: "Domaća Trgovina d.o.o.", address: "Josipa Broza Tita 23A, 81000 Podgorica", phone: "+38269112112", website: "www.domacatrgovina.me"})
    Company.create({name: "Bar-kod d.o.o.", address: "Cetinjski put bb, 81000 Podgorica", email: "bar-kod@t-com.me", phone: "+38220260730", fax: "+38220260884", website: "www.bar-kod.com"})
    Company.create({name: "Neregelia d.o.o.", address: "Cetinjski put bb, 81000 Podgorica", email: "neregelia@nelt.com", phone: "+38220261920", fax: "+38220261930", website: "www.neregelia.me", pib: "02313707"})
    Company.create({name: "DMD Delta d.o.o.", address: "Donja Gorica bb, 81000 Podgorica", phone: "+38220891393", fax: "+38220891171", website: "www.deltadmd.rs", pib: "104764603"})
    Company.create({name: "Stadion d.o.o.", address: "Bulevar Ibrahima Dreševića br. 1, 81000 Podgorica", email: "stadion-doo@t-com.me", phone: "+38220622568", fax: "+38220622569", website: "www.stadion.co.me"})
    Company.create({name: "Crnagoracoop AB d.o.o.", address: "Landža bb, 81140 Danilovgrad", email: "crnagoracoop@t-com.me", phone: "+38220812287", fax: "+38220812464", website: "www.crnagoracoop.com"})
    Company.create({name: "13. jul plantaže a.d.", address: "Put Radomira Ivanovića 2, 81000 Podgorica", email: "info@plantaze.com", phone: "+38220658028", fax: "+38220658027", website: "www.plantaze.com"})
    Company.create({name: "Pirella d.o.o.", address: "Danilovgrad", email: "pirella@t-com.me", phone: "+38220883350", website: "www.pirellajuices.com"})
    Company.create({name: "Goranović d.o.o.", address: "Straševina bb, 81400 Nikšić", email: "info@migoranovic.com", phone: "+38277400000", fax: "+38277400003", website: "www.migoranovic.com", pib: "02169301"})
    Company.create({name: "Gradina Company d.o.o.", address: "Ibarska magistrala 50, 84310 Rožaje", email: "gradinaco@t-com.me", phone: "+38251271087", fax: "+38251271202", website: "www.gradina-company.com"})
    Company.create({name: "Šimšić Montmilk d.o.o. - Mljekara Lazine", address: "Lazine bb, 81140 Danilovgrad", email: "mljekaralazine@yahoo.com", phone: "+38220815312", fax: "+38220815313", website: "www.mljekaralazine.com"})
    Company.create({name: "Nika d.o.o", address: "Partizanski put bb, 81400 Nikšić", email: "nika-nk@t-com.me", phone: "+3822040222012", fax: "+3822040231302", website: "www.mljekara-nika.com"})
    Company.create({name: "Eko Meduza d.o.o.", address: "Industrijska bb, 84000 Bijelo Polje", email: "info@eko-meduza.me", phone: "+38250478086", fax: "+38250478602", website: "www.eko-meduza.me"})
    Company.create({name: "Šljukić Co d.o.o. - Mljekara Srna", address: "Ozrinići bb, 81400 Nikšić", email: "mljeksrna@t-com.me", phone: "+38240258161"})
    Company.create({name: "Zunjić Company d.o.o. - Pekara Anđela", address: "Podanje bb, 81140 Danilovgrad", email: "andjelagz@t-com.me", phone: "+38220881450", fax: "+38220882050", website: "www.andjela.me"})
    Company.create({name: "Uniprom pekara d.o.o.", address: "Podgorički put bb, 81140 Danilovgrad", email: "uniprompekara@t-com.me", phone: "+38240253323", fax: "+38240253305", website: "www.uniprompekara.com"})
  end
end
