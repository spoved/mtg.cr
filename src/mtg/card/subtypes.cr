module Mtg::Card
  SUBTYPES = [
    "abian",
    "adventure",
    "advisor",
    "aetherborn",
    "ajani",
    "alara",
    "alfava metraxis",
    "alicorn",
    "alien",
    "ally",
    "aminatou",
    "amonkhet",
    "and/or",
    "androzani minor",
    "angel",
    "angrath",
    "antausia",
    "antelope",
    "apalapucia",
    "ape",
    "arcane",
    "arcavios",
    "archer",
    "archon",
    "arkhos",
    "arlinn",
    "armadillo",
    "army",
    "art",
    "artificer",
    "ashiok",
    "assassin",
    "assembly-worker",
    "astartes",
    "atog",
    "attraction",
    "aura",
    "aurochs",
    "autobot",
    "automaton",
    "avatar",
    "azgol",
    "azra",
    "b.o.b.",
    "background",
    "baddest,",
    "badger",
    "bahamut",
    "balloon",
    "barbarian",
    "bard",
    "basilisk",
    "basri",
    "bat",
    "bear",
    "beast",
    "beaver",
    "beeble",
    "beholder",
    "belenon",
    "berserker",
    "biggest,",
    "bird",
    "blood",
    "boar",
    "bobblehead",
    "bolas",
    "bolas's meditation realm",
    "brainiac",
    "bringer",
    "brushwagg",
    "bureaucrat",
    "byode",
    "c'tan",
    "calix",
    "camel",
    "capenna",
    "capybara",
    "carrier",
    "cartouche",
    "case",
    "cat",
    "cave",
    "centaur",
    "cephalid",
    "chameleon",
    "chandra",
    "chicken",
    "child",
    "chimera",
    "chorus",
    "citizen",
    "clamfolk",
    "class",
    "cleric",
    "cloud",
    "clown",
    "clue",
    "cockatrice",
    "comet",
    "construct",
    "contraption",
    "cow",
    "coward",
    "coyote",
    "crab",
    "cridhe",
    "crocodile",
    "curse",
    "custodes",
    "cyberman",
    "cyborg",
    "cyclops",
    "dack",
    "dakkon",
    "dalek",
    "daretti",
    "darillium",
    "dauthi",
    "davriel",
    "deb",
    "deer",
    "demigod",
    "demon",
    "desert",
    "designer",
    "detective",
    "devil",
    "dihada",
    "dinosaur",
    "djinn",
    "doctor",
    "dog",
    "dominaria",
    "domri",
    "donkey",
    "dovin",
    "dragon",
    "drake",
    "dreadnought",
    "drone",
    "druid",
    "dryad",
    "duck",
    "dungeon",
    "dwarf",
    "earth",
    "echoir",
    "efreet",
    "egg",
    "elder",
    "eldraine",
    "eldrazi",
    "elemental",
    "elemental?",
    "elephant",
    "elf",
    "elk",
    "ellywick",
    "elminster",
    "elspeth",
    "elves",
    "employee",
    "equilor",
    "equipment",
    "ergamon",
    "ersta",
    "estrid",
    "etiquette",
    "eye",
    "fabacin",
    "faerie",
    "ferret",
    "fiora",
    "fire",
    "fish",
    "flagbearer",
    "food",
    "forest",
    "fortification",
    "fox",
    "fractal",
    "freyalise",
    "frog",
    "fungus",
    "gallifrey",
    "gamer",
    "gargantikar",
    "gargoyle",
    "garruk",
    "gate",
    "germ",
    "giant",
    "gideon",
    "gith",
    "gnoll",
    "gnome",
    "goat",
    "gobakhan",
    "goblin",
    "god",
    "gold",
    "golem",
    "gorgon",
    "grandchild",
    "graveborn",
    "gremlin",
    "griffin",
    "grist",
    "guest",
    "guff",
    "gus",
    "hag",
    "halfling",
    "hamster",
    "harpy",
    "hatificer",
    "head",
    "hellion",
    "hero",
    "hippo",
    "hippogriff",
    "homarid",
    "homunculus",
    "horror",
    "horse",
    "horsehead nebula",
    "huatli",
    "human",
    "hydra",
    "hyena",
    "igpay",
    "ikoria",
    "illusion",
    "imp",
    "incarnation",
    "incubator",
    "inkling",
    "innistrad",
    "inquisitor",
    "insect",
    "inzerva",
    "iquatana",
    "ir",
    "island",
    "ixalan",
    "jace",
    "jackal",
    "jared",
    "jaya",
    "jellyfish",
    "jeska",
    "juggernaut",
    "junk",
    "kaito",
    "kaladesh",
    "kaldheim",
    "kamigawa",
    "kandoka",
    "kangaroo",
    "karn",
    "karsus",
    "kasmina",
    "kavu",
    "kaya",
    "kephalai",
    "key",
    "killbot",
    "kinshala",
    "kiora",
    "kirin",
    "kithkin",
    "knight",
    "kobold",
    "kolbahan",
    "kor",
    "koth",
    "kraken",
    "kylem",
    "kyneth",
    "lady",
    "lair",
    "lamia",
    "lammasu",
    "leech",
    "lesson",
    "leviathan",
    "lhurgoyf",
    "licid",
    "liliana",
    "lizard",
    "lobster",
    "locus",
    "lolth",
    "lorwyn",
    "lukka",
    "luvion",
    "mammoth",
    "manticore",
    "map",
    "mars",
    "master",
    "masticore",
    "mercadia",
    "mercenary",
    "merfolk",
    "metathran",
    "mime",
    "mine",
    "minion",
    "minotaur",
    "minsc",
    "mirrodin",
    "mite",
    "moag",
    "mole",
    "monger",
    "mongoose",
    "mongseng",
    "monk",
    "monkey",
    "moon",
    "moonfolk",
    "mordenkainen",
    "mount",
    "mountain",
    "mouse",
    "mummy",
    "muraganda",
    "mutant",
    "myr",
    "mystic",
    "naga",
    "nahiri",
    "narset",
    "nastiest,",
    "nautilus",
    "necron",
    "necros",
    "nephilim",
    "new earth",
    "new phyrexia",
    "nightmare",
    "nightstalker",
    "niko",
    "ninja",
    "nissa",
    "nixilis",
    "noble",
    "noggle",
    "nomad",
    "nymph",
    "octopus",
    "of",
    "ogre",
    "oko",
    "ooze",
    "orc",
    "orgg",
    "otter",
    "ouphe",
    "outside mutter's spiral",
    "ox",
    "oyster",
    "pangolin",
    "paratrooper",
    "peasant",
    "pegasus",
    "penguin",
    "pentavite",
    "performer",
    "pest",
    "phelddagrif",
    "phoenix",
    "phyrexia",
    "phyrexian",
    "pilot",
    "pirate",
    "plains",
    "plant",
    "pony",
    "porcupine",
    "possum",
    "power-plant",
    "powerstone",
    "praetor",
    "primarch",
    "processor",
    "proper",
    "pyrulea",
    "quintorius",
    "rabbit",
    "rabiah",
    "raccoon",
    "ral",
    "ranger",
    "rat",
    "rath",
    "ravnica",
    "rebel",
    "reflection",
    "regatha",
    "reveler",
    "rhino",
    "rigger",
    "robot",
    "rogue",
    "role",
    "rowan",
    "rune",
    "sable",
    "saga",
    "saheeli",
    "salamander",
    "samurai",
    "samut",
    "sand",
    "saproling",
    "sarkhan",
    "satyr",
    "scarecrow",
    "scientist",
    "scion",
    "scorpion",
    "scout",
    "sculpture",
    "segovia",
    "serf",
    "serpent",
    "serra",
    "serra's realm",
    "servo",
    "shade",
    "shadowmoor",
    "shaman",
    "shandalar",
    "shapeshifter",
    "shard",
    "shark",
    "sheep",
    "shenmeng",
    "ship",
    "shrine",
    "siege",
    "siren",
    "sivitri",
    "skaro",
    "skeleton",
    "slith",
    "sliver",
    "sloth",
    "slug",
    "snail",
    "snake",
    "soldier",
    "soltari",
    "sorin",
    "spacecraft",
    "spawn",
    "specter",
    "spellshaper",
    "sphere",
    "sphinx",
    "spider",
    "spike",
    "spirit",
    "sponge",
    "spy",
    "squid",
    "squirrel",
    "starfish",
    "surrakar",
    "survivor",
    "svega",
    "swamp",
    "synth",
    "szat",
    "tamiyo",
    "tarkir",
    "tasha",
    "teddy",
    "teferi",
    "tentacle",
    "teyo",
    "tezzeret",
    "thalakos",
    "the",
    "the abyss",
    "the dalek asylum",
    "the library",
    "theros",
    "thopter",
    "thrull",
    "tibalt",
    "tiefling",
    "time",
    "time lord",
    "tower",
    "townsfolk",
    "trap",
    "treasure",
    "treefolk",
    "trenzalore",
    "trilobite",
    "triskelavite",
    "troll",
    "turtle",
    "tyranid",
    "tyvar",
    "ugin",
    "ulgrotha",
    "undercity",
    "unicorn",
    "unknown planet",
    "urza",
    "urza's",
    "urzan",
    "valla",
    "vampire",
    "vampyre",
    "varmint",
    "vedalken",
    "vehicle",
    "venser",
    "viashino",
    "villain",
    "vivien",
    "volver",
    "vraska",
    "vronos",
    "vryn",
    "waiter",
    "wall",
    "walrus",
    "wanderer",
    "warlock",
    "warrior",
    "weird",
    "werewolf",
    "whale",
    "wildfire",
    "will",
    "windgrace",
    "wizard",
    "wolf",
    "wolverine",
    "wombat",
    "worm",
    "wraith",
    "wrenn",
    "wrestler",
    "wurm",
    "xenagos",
    "xerex",
    "yanggu",
    "yanling",
    "yeti",
    "zariel",
    "zendikar",
    "zhalfir",
    "zombie",
    "zubera",
  ]
end
