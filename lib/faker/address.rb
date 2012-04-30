# encoding: UTF-8
module Faker
  class Address
    class << self
      def zip_code
        Faker.numerify(['#####', '#####-####'].rand)
      end
      
      def us_state
        ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana', 'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota', 'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming'].rand
      end
      
      def us_state_abbr
        %w(AL AK AS AZ AR CA CO CT DE DC FM FL GA GU HI ID IL IN IA KS KY LA ME MH MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND MP OH OK OR PW PA PR RI SC SD TN TX UT VT VI VA WA WV WI WY AE AA AP).rand
      end
      
      def city_prefix
        %w(North East West South New Lake Port).rand
      end
      
      def city_suffix
        %w(town ton land ville berg burgh borough bury view port mouth stad furt chester mouth fort haven side shire).rand
      end
      
      def city
        [
          '%s %s%s' % [city_prefix, Name.first_name, city_suffix],
          '%s %s' % [city_prefix, Name.first_name],
          '%s%s' % [Name.first_name, city_suffix],
          '%s%s' % [Name.last_name, city_suffix],
        ].rand
      end

      # http://en.wikipedia.org/wiki/List_of_cities_in_New_Zealand
      def nz_city
        ["Auckland", "Hamilton", "Tauranga", "Napier", "Palmerston North", "Porirua", "Upper Hutt", "Lower Hutt", "Wellington", "Nelson", "Christchurch", "Dunedin", "Invercargill"].rand
      end

      # http://en.wikipedia.org/wiki/List_of_towns_in_New_Zealand
      def nz_town
        ["Ahaura", "Ahipara", "Ahititi", "Ahuroa", "Akaroa", "Akitio", "Albany", "Albert Town", "Albury", "Alexandra", "Allanton", "Amberley", "Anakiwa", "Aranga", "Aramoana", "Arapohue", "Arrowtown", "Arundel", "Ashburton", "Ashhurst", "Ashley", "Auckland", "Auroa", "Awanui", "Balclutha", "Balfour", "Barrytown", "Beachlands", "Beaumont", "Bell Block", "Benhar, South Otago", "Blackball", "Blenheim", "Bluff", "Brighton", "Brightwater", "Broadwood", "Bulls", "Bunnythorpe", "Cambridge", "Canvastown", "Carterton", "Cheviot", "Christchurch", "Clarksville", "Clinton", "Clive", "Clyde", "Coatesville", "Collingwood", "Colville", "Coroglen", "Coromandel", "Cromwell", "Culverden", "Cust", "Dairy Flat", "Dannevirke", "Darfield", "Dargaville", "Dobson", "Drury", "Dunedin", "Duntroon", "Eastbourne", "Edendale", "Edgecumbe", "Egmont Village", "Eketahuna", "Eltham", "Ettrick", "Fairhall", "Fairlie", "Featherston", "Feilding", "Flaxmere", "Fox Glacier", "Foxton", "Foxton Beach", "Frankton, Otago", "Frankton, Waikato", "Franz Josef", "Geraldine", "Gisborne", "Glenorchy", "Gore", "Granity", "Greymouth", "Greytown", "Grovetown", "Haast", "Hakataramea", "Hamilton", "Hampden", "Hanmer Springs", "Hari Hari", "Hastings", "Haupiri", "Havelock", "Havelock North", "Hawea", "Hawera", "Helensville", "Henley", "Herbert", "Herekino", "Hikuai", "Hikurangi", "Hikutaia", "Hinuera", "Hokitika", "Hope", "Horeke", "Houhora", "Howick", "Huapai", "Huiakama", "Huirangi", "Hukerenui", "Hunterville", "Huntly", "Hurleyville", "Inangahua Junction", "Inglewood", "Invercargill", "Jacobs River", "Kaiapoi", "Kaihu", "Kaikohe", "Kaikoura", "Kaimata", "Kaingaroa", "Kaipara Flats", "Kaitaia", "Kaitangata", "Kaiwaka", "Kakaramea", "Kaniere", "Kaponga", "Karamea", "Karetu", "Karitane", "Katikati", "Kaukapakapa", "Kauri", "Kawakawa", "Kawerau", "Kennedy Bay", "Kerikeri", "Kihikihi", "Kinloch", "Kingston", "Kokatahi", "Kokopu", "Koromiko", "Kumara", "Kumeu", "Kurow", "Lawrence", "Leeston", "Leigh", "Lepperton", "Levin", "Lincoln", "Linkwater", "Little River", "Lower Hutt, Wellington", "Luggate", "Lumsden", "Lyttelton", "Makahu", "Manaia, South Taranaki", "Manaia, Coromandel", "Manakau, Horowhenua", "Manapouri", "Mangakino", "Mangamuka", "Mangatoki", "Mangawhai", "Manukau", "Manurewa", "Manutahi", "Mapua", "Maraetai", "Marco", "Maromaku", "Marsden Bay", "Martinborough", "Marton", "Maruia", "Masterton", "Matakana", "Matakohe", "Matamata", "Matapu", "Matarangi", "Matarau", "Matata", "Mataura", "Matihetihe", "Maungakaramea", "Maungatapere", "Maungaturoto", "Mayfield", "Meremere", "Methven", "Middlemarch", "Midhirst", "Millers Flat", "Milton", "Mimi", "Moana", "Moenui", "Moeraki", "Moerewa", "Mokau", "Mokoia", "Morrinsville", "Mosgiel", "Mossburn", "Motatau", "Motueka", "Mount Maunganui", "Mount Somers", "Murchison", "Murupara", "Napier", "Naseby", "Nelson", "New Brighton", "New Plymouth", "Normanby", "Ngaere", "Ngamatapouri", "Ngapara", "Ngaruawahia", "Ngataki", "Ngongotaha", "Ngunguru", "Nightcaps", "Norfolk", "Oakura", "Oamaru", "Oban", "Ohakune", "Ohaeawai", "Ohangai", "Ohoka", "Ohope Beach", "Ohura", "Okaihau", "Okato", "Omanaia", "Omarama", "Omata", "Omokoroa", "Onewhero", "Opononi", "Opotiki", "Opua", "Opunake", "Oratia", "Orewa", "Oromahoe", "Oruaiti", "Otaika", "Otaki", "Otakou", "Otautau", "Otiria", "Otorohanga", "Owaka", "Oxford", "Paparore", "Paekakariki", "Paeroa", "Pahiatua", "Paihia", "Pakaraka", "Pakiri", "Pakotai", "Palmerston", "Palmerston North", "Pamapuria", "Panguru", "Papakura", "Papamoa", "Paparoa", "Papatoetoe", "Parakai", "Paraparaumu", "Paremoremo", "Pareora", "Paroa", "Parua Bay", "Patea", "Pauanui", "Pauatahanui", "Peka Peka", "Pembroke", "Peria", "Petone", "Picton", "Piopio", "Pipiwai", "Pirongia", "Pleasant Point", "Plimmerton", "Porirua", "Portland", "Poroti", "Port Chalmers", "Portobello", "Pukekohe", "Pukerua Bay", "Pukeuri", "Pukepoto", "Purua", "Putaruru", "Queenstown", "Raetihi", "Raglan", "Rahotu", "Rai Valley", "Ramarama", "Ranfurly", "Rangiora", "Rapaura", "Ratapiko", "Raumati", "Rawene", "Rawhitiroa", "Reefton", "Renwick", "Richmond", "Riverhead", "Riverlands", "Riversdale Beach", "Riverton", "Riwaka", "Rolleston", "Ross", "Rotorua", "Roxburgh", "Ruatoria", "Ruawai", "Runanga", "Russell", "Saint Andrews Canterbury", "Saint Arnaud", "Saint Bathans", "Sanson", "Seacliff", "Seddon", "Seddonville", "Sheffield", "Shannon", "Silverdale", "Snells Beach", "Springfield", "Springston", "Spring Creek", "Stirling, South Otago", "Stratford", "Taharoa", "Taieri Mouth", "Taihape", "Taipa-Mangonui", "Tairua", "Takaka", "Tangiteroria", "Tapanui", "Tapu", "Tangowahine", "Tapawera", "Tapora", "Taradale", "Tauhoa", "Taumarunui", "Taupaki", "Taupo", "Tauranga", "Tauraroa", "Tautoro", "Te Anau", "Te Arai", "Te Aroha", "Te Awamutu", "Te Hapua", "Te Horo", "Te Kao", "Te Kopuru", "Te Kuiti", "Te Puke", "Te Puru", "Temuka", "Te Rerenga", "Thames", "Tikorangi‎", "Timaru", "Tinopai", "Tinwald", "Tirau", "Titoki", "Tokarahi", "Toko", "Tokanui", "Tokoroa", "Tolaga Bay", "Tomarata", "Towai", "Tuakau", "Tuamarina", "Tuatapere", "Turangi", "Twizel", "Umawera", "Upper Hutt", "Upper Moutere", "Urenui", "Uruti", "Waddington", "Waiheke Island", "Waharoa", "Waiharara", "Waihi", "Waihi Beach", "Waihola", "Waikanae", "Waikawa, Marlborough", "Waikawa, Southland", "Waikouaiti", "Waima", "Waimangaroa", "Waimate", "Waimate North", "Waimauku", "Wainui", "Wainuiomata", "Waioneke", "Waiouru", "Waiotira", "Waipawa", "Waipukurau", "Wairakei", "Wairau Valley", "Wairoa", "Waitahuna", "Waikouaiti", "Waikuku", "Waitara", "Waitaria Bay", "Waitati", "Waitoa", "Waitoki", "Waitoriki", "Waitotara", "Waiuku", "Waiwera", "Wakefield", "Wallacetown", "Walton", "Waverley", "Wanaka", "Ward", "Wardville", "Warrington", "Warkworth", "Wellington", "Wellsford", "Westport", "Weston", "Whakatane", "Whakamaru", "Whananaki", "Whangamata", "Whangamomona", "Whanganui", "Whangarei", "Whangarei Heads", "Whangaruru", "Whataroa", "Whatuwhiwhi", "Whenuakite", "Whenuakura", "Whiritoa", "Whitford", "Whitby", "Whitianga", "Willowby", "Wimbledon", "Winchester", "Windsor", "Windwhistle, Canterbury", "Winscombe", "Winton", "Woodend", "Woodhill", "Woodville", "Wyndham"].rand
      end
      
      def street_suffix
        %w(Alley Avenue Branch Bridge Brook Brooks Burg Burgs Bypass Camp Canyon Cape Causeway Center Centers Circle Circles Cliff Cliffs Club Common Corner Corners Course Court Courts Cove Coves Creek Crescent Crest Crossing Crossroad Curve Dale Dam Divide Drive Drive Drives Estate Estates Expressway Extension Extensions Fall Falls Ferry Field Fields Flat Flats Ford Fords Forest Forge Forges Fork Forks Fort Freeway Garden Gardens Gateway Glen Glens Green Greens Grove Groves Harbor Harbors Haven Heights Highway Hill Hills Hollow Inlet Inlet Island Island Islands Islands Isle Isle Junction Junctions Key Keys Knoll Knolls Lake Lakes Land Landing Lane Light Lights Loaf Lock Locks Locks Lodge Lodge Loop Mall Manor Manors Meadow Meadows Mews Mill Mills Mission Mission Motorway Mount Mountain Mountain Mountains Mountains Neck Orchard Oval Overpass Park Parks Parkway Parkways Pass Passage Path Pike Pine Pines Place Plain Plains Plains Plaza Plaza Point Points Port Port Ports Ports Prairie Prairie Radial Ramp Ranch Rapid Rapids Rest Ridge Ridges River Road Road Roads Roads Route Row Rue Run Shoal Shoals Shore Shores Skyway Spring Springs Springs Spur Spurs Square Square Squares Squares Station Station Stravenue Stravenue Stream Stream Street Street Streets Summit Summit Terrace Throughway Trace Track Trafficway Trail Trail Tunnel Tunnel Turnpike Turnpike Underpass Union Unions Valley Valleys Via Viaduct View Views Village Village  Villages Ville Vista Vista Walk Walks Wall Way Ways Well Wells).rand
      end
      
      #Standard abbreviations from the site http://www.usps.com/ncsc/lookups/usps_abbreviations.html#suffix as of 2009-07-29
      def us_street_suffix_abbr
        %w(ALY ANX ARC AVE BCH BG BGS BLF BLFS BLVD BND BR BRG BRK BRKS BTM BYP BYU CIR CIRS CLB CLF CLFS CMN CMNS COR CORS CP CPE CRES CRK CRSE CRST CSWY CT CTR CTRS CTS CURV CV CVS CYN DL DM DR DRS DV EST ESTS EXPY EXT EXTS FALL FLD FLDS FLS FLT FLTS FRD FRDS FRG FRGS FRK FRKS FRST FRY FT FWY GDN GDNS GLN GLNS GRN GRNS GRV GRVS GTWY HBR HBRS HL HLS HOLW HTS HVN HWY INLT IS ISLE ISS JCT JCTS KNL KNLS KY KYS LAND LCK LCKS LDG LF LGT LGTS LK LKS LN LNDG LOOP MALL MDW MDWS MEWS ML MLS MNR MNRS MSN MT MTN MTNS MTWY NCK OPAS ORCH OVAL PARK PARK PASS PATH PIKE PKWY PKWY PL PLN PLNS PLZ PNE PNES PR PRT PRTS PSGE PT PTS RADL RAMP RD RDG RDGS RDS RIV RNCH ROW RPD RPDS RST RTE RUE RUN SHL SHLS SHR SHRS SKWY SMT SPG SPGS SPUR SPUR SQ SQS ST STA STRA STRM STS TER TPKE TRAK TRCE TRFY TRL TRLR TRWY TUNL UN UNS UPAS VIA VIS VL VLG VLGS VLY VLYS VW VWS WALK WALK WALL WAY WAYS WL WLS XING XRD XRDS).rand
      end
      
      def directional
        %w{N S E W NE NW SE SW}.rand
      end
      
      def street_name
        [ 
          Proc.new { [Name.last_name, street_suffix].join(' ') },
          Proc.new { [Name.first_name, street_suffix].join(' ') }      
        ].rand.call
      end
      
      def street_address(include_secondary = false)
        Faker.numerify([
          '##### %s' % street_name,
          '#### %s' % street_name,
          '### %s' % street_name
        ].rand + (include_secondary ? ' ' + secondary_address : ''))
      end
      
      def secondary_address
        Faker.numerify([
          'Apt. ###',
          'Suite ###'
        ].rand)
      end
      
      # UK Variants
      def uk_county
        ['Avon', 'Bedfordshire', 'Berkshire', 'Borders', 'Buckinghamshire', 'Cambridgeshire', 'Central', 'Cheshire', 'Cleveland', 'Clwyd', 'Cornwall', 'County Antrim', 'County Armagh', 'County Down', 'County Fermanagh', 'County Londonderry', 'County Tyrone', 'Cumbria', 'Derbyshire', 'Devon', 'Dorset', 'Dumfries and Galloway', 'Durham', 'Dyfed', 'East Sussex', 'Essex', 'Fife', 'Gloucestershire', 'Grampian', 'Greater Manchester', 'Gwent', 'Gwynedd County', 'Hampshire', 'Herefordshire', 'Hertfordshire', 'Highlands and Islands', 'Humberside', 'Isle of Wight', 'Kent', 'Lancashire', 'Leicestershire', 'Lincolnshire', 'Lothian', 'Merseyside', 'Mid Glamorgan', 'Norfolk', 'North Yorkshire', 'Northamptonshire', 'Northumberland', 'Nottinghamshire', 'Oxfordshire', 'Powys', 'Rutland', 'Shropshire', 'Somerset', 'South Glamorgan', 'South Yorkshire', 'Staffordshire', 'Strathclyde', 'Suffolk', 'Surrey', 'Tayside', 'Tyne and Wear', 'Warwickshire', 'West Glamorgan', 'West Midlands', 'West Sussex', 'West Yorkshire', 'Wiltshire', 'Worcestershire'].rand
      end
      
      def uk_country
        ['England', 'Scotland', 'Wales', 'Northern Ireland'].rand
      end
      
      def uk_postcode
        Faker.bothify([
          '??# #??',
          '??## #??'
        ].rand).upcase
      end      
    end
  end
end
