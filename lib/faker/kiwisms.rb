module Faker
  class Kiwisms
    Words = ["ads", "A & P Show", "arse", "bach", "beaut", "bit of a dag", "biscuit", "bloke", "blow me down", "bludge", "Bob's your Uncle", "bonk", "bonnet", "boohai", "boot", "box of budgies", "boxing day", "boy-racer", "braces", "brassed off", "brekkie", "brickie", "brilliant", "bugalugs", "bugger all", "buggered", "bugger off", "bum", "bumper", "bun-fight", "bun in the oven", "bush", "bust a gut", "candyfloss", "capsicum", "car park", "caravan", "cardy", "carked it", "chips", "cheers", "chemist", "cheque", "cheerio", "chilly bin", "chips", "chippy", "choc-a-block", "chocolate fish", "choice", "chook", "chrissy", "chuffed", "chunder", "cods wollop", "colly wobbles", "corker", "cornflour", "cotton buds", "courgette", "cracker", "crib", "crikey dick!", "crisps", "crook", "cuppa", "cuz", "dairy", "ding", "dole", "doing the ton", "dodgy", "draughts", "dreaded lurgy", "dressing gown", "dummy", "dunny", "duvet", "eh", "fancy", "fanny", "fizzy", "finger stalls", "flannel", "flash", "flat", "flicks", "flog", "footpath", "fortnight", "french letter", "frenchie", "fringe", "frock tart", "gawk / gawking", "get off the grass", "gimme", "give your ferret a run", "gizza", "going bush", "good on ya, mate!", "good as gold", "greasies", "gridiron", "ground floor", "gumboots", "gummies", "guts for garters", "hard yakka", "heaps", "hissy fit", "hokey pokey", "home 'n hosed", "hoon", "hooray", "hosing down", "hottie", "hunky dory", "jersey", "judder bar", "jumper", "kiwi", "kiwifruit", "kick the bucket", "knackered", "knickers", "lemonade", "lift", "lolly", "long-drop", "loo", "loose metal", "lorry", "main", "Maori", "mate", "metal road", "morris club", "motorway", "Mum", "nana", "nandy", "nappy", "netball", "nought", "pakeha", "panel beater", "pavement", "petrol", "pie cart", "piece-of-piss", "pike out", "pikelet", "piker", "pinky", "pinky bar", "piss", "pissed", "pissed-off", "pissing down", "piss around", "piss-up", "plaster", "plod", "pong", "power cut", "postal code", "pottle", "pony tail", "pram", "prang", "pub", "puckeroo", "push bike", "pushing up daisies", "raining cats & dogs", "randy", "rark up", "rattle your dags", "rellies", "root", "ring", "roadway", "rubber", "rubbish", "scull", "scarfie", "sealed road", "serviette", "shandy", "she'll be right", "shippie", "shorts", "shufti", "skiting", "sickie", "skint", "squiz", "smoko", "snarky", "snotty", "sook", "sparkie", "spew", "sparrow fart", "spinner", "spit the dummy", "sprog", "sticking plaster", "stirrer", "strapped for cash", "strewth", "strop", "stroppy", "stubby", "stuffed", "stupid as a two bob watch", "suck the kumura", "sunday driver", "sunnies", "super loo", "suss", "sweet-as", "tata", "take-aways", "take the piss", "take a hike", "tasty cheese", "tea", "tea towel", "thick", "tights", "tiki tour", "tinned goods", "tip", "tracksuit", "tramping", "togs", "tomato sauce", "torch", "trots", "trots", "TT2", "twink", "two sammies short of a picnic", "tyre", "up the duff", "verge", "vest", "vegemite", "wally", "wardrobe", "wee cracker", "wet blanket", "wellies", "what are ya!", "wharfie", "whinge", "windscreen", "wobbly (pack a wobbly)", "wonky", "wop-wops", "yarn", "yack", "yank", "yoo-hoo", "you ain't wrong", "you can't help bad luck", "zed"]
    
    def self.words(num = 3)
      Words.shuffle[0, num]
    end

    def self.sentence(word_count = 4)
      words(word_count + rand(6)).join(' ').capitalize + '.'
    end

    def self.sentences(sentence_count = 3)
      [].tap do |sentences|
        1.upto(sentence_count) do
          sentences << sentence
        end
      end
    end

    def self.paragraph(sentence_count = 3)
      sentences(sentence_count + rand(3)).join(' ')
    end

    def self.paragraphs(paragraph_count = 3)
      [].tap do |paragraphs|
        1.upto(paragraph_count) do
          paragraphs << paragraph
        end
      end
    end
  end
end