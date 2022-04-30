module Mtg::Card
  SUBTYPES = [
    "abian",
    "adventure",
    "advisor",
    "aetherborn",
    "ajani",
    "alara",
    "alicorn",
    "alien",
    "ally",
    "aminatou",
    "and/or",
    "angel",
    "angrath",
    "antelope",
    "ape",
    "arcane",
    "archer",
    "archon",
    "arkhos",
    "arlinn",
    "army",
    "art",
    "artificer",
    "ashiok",
    "assassin",
    "assembly-worker",
    "atog",
    "aura",
    "aurochs",
    "autobot",
    "avatar",
    "azgol",
    "azra",
    "b.o.b.",
    "baddest,",
    "badger",
    "bahamut",
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
    "bolas",
    "bolas’s meditation realm",
    "brainiac",
    "bringer",
    "brushwagg",
    "bureaucrat",
    "calix",
    "camel",
    "carrier",
    "cartouche",
    "cat",
    "centaur",
    "cephalid",
    "chameleon",
    "chandra",
    "chicken",
    "child",
    "chimera",
    "citizen",
    "clamfolk",
    "class",
    "cleric",
    "cloud",
    "clown",
    "clue",
    "cockatrice",
    "construct",
    "contraption",
    "cow",
    "coward",
    "crab",
    "crocodile",
    "curse",
    "cyborg",
    "cyclops",
    "dack",
    "dakkon",
    "daretti",
    "dauthi",
    "davriel",
    "deer",
    "demigod",
    "demon",
    "desert",
    "designer",
    "devil",
    "dihada",
    "dinosaur",
    "djinn",
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
    "efreet",
    "egg",
    "elder",
    "eldrazi",
    "elemental",
    "elemental?",
    "elephant",
    "elf",
    "elk",
    "ellywick",
    "elspeth",
    "elves",
    "equilor",
    "equipment",
    "ergamon",
    "estrid",
    "etiquette",
    "eye",
    "fabacin",
    "faerie",
    "ferret",
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
    "gamer",
    "gargoyle",
    "garruk",
    "gate",
    "germ",
    "giant",
    "gideon",
    "gnoll",
    "gnome",
    "goat",
    "goblin",
    "god",
    "gold",
    "golem",
    "gorgon",
    "grandchild",
    "gremlin",
    "griffin",
    "grist",
    "guest",
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
    "huatli",
    "human",
    "hydra",
    "hyena",
    "igpay",
    "illusion",
    "imp",
    "incarnation",
    "inkling",
    "innistrad",
    "insect",
    "inzerva",
    "iquatana",
    "ir",
    "island",
    "jace",
    "jackal",
    "jaya",
    "jellyfish",
    "jeska",
    "juggernaut",
    "kaito",
    "kaldheim",
    "kamigawa",
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
    "kyneth",
    "lady",
    "lair",
    "lamia",
    "lammasu",
    "leech",
    "legend",
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
    "moag",
    "mole",
    "monger",
    "mongoose",
    "mongseng",
    "monk",
    "monkey",
    "moonfolk",
    "mordenkainen",
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
    "nephilim",
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
    "ox",
    "oyster",
    "pangolin",
    "paratrooper",
    "peasant",
    "pegasus",
    "penguin",
    "pentavite",
    "pest",
    "phelddagrif",
    "phoenix",
    "phyrexia",
    "phyrexian",
    "pilot",
    "pirate",
    "plains",
    "plant",
    "power-plant",
    "praetor",
    "processor",
    "proper",
    "pyrulea",
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
    "rowan",
    "rune",
    "sable",
    "saga",
    "saheeli",
    "salamander",
    "samurai",
    "samut",
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
    "serra’s realm",
    "servo",
    "shade",
    "shadowmoor",
    "shaman",
    "shandalar",
    "shapeshifter",
    "shard",
    "shark",
    "sheep",
    "ship",
    "shrine",
    "siren",
    "skeleton",
    "slith",
    "sliver",
    "slug",
    "snake",
    "soldier",
    "soltari",
    "sorin",
    "spawn",
    "specter",
    "spellshaper",
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
    "swamp",
    "szat",
    "tamiyo",
    "teddy",
    "teferi",
    "tentacle",
    "teyo",
    "tezzeret",
    "thalakos",
    "the",
    "thopter",
    "thrull",
    "tibalt",
    "tiefling",
    "tower",
    "townsfolk",
    "trap",
    "treasure",
    "treefolk",
    "trilobite",
    "triskelavite",
    "troll",
    "turtle",
    "tyvar",
    "ugin",
    "ulgrotha",
    "unicorn",
    "urza",
    "urza’s",
    "valla",
    "vampire",
    "vampyre",
    "vedalken",
    "vehicle",
    "venser",
    "viashino",
    "villain",
    "vivien",
    "volver",
    "vraska",
    "vryn",
    "waiter",
    "wall",
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
    "zombie",
    "zubera",
  ]
end
