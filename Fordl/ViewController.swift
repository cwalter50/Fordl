//
//  ViewController.swift
//  Fordl
//
//  Created by david on 2/22/22.
//

import UIKit

var currentWord = [""]

var currentWordString = ""

var possible = ["fords"]

let genWord = ["pizza", "cenzo", "bravo", "manoa", "drama", "chess", "drama", "wawas", "maths", "latin", "cheer", "lunch", "track", "clubs", "ritas", "frosh", "darby", "eagle", "pizza", "manoa", "pride", "study", "delco"]

let hhs = ["borck", "bruno", "colby", "corsi", "creed", "culik", "davit", "geist", "goetz", "grady", "hulea", "jones", "lutes", "lyons", "march", "brown", "moore", "moyer", "perez", "quinn", "reiff", "smith", "smyth", "sonet", "wells"]

let hms = ["brock", "bader", "caven", "cohen", "coull", "frick", "mavio", "gower", "henry", "horan", "jones", "kelly", "lazer", "mahar", "myers", "meier", "riley", "ramos", "sable", "scott", "stump", "terra", "viola", "volpe", "young", "smith"]

let lynnewood = ["bodor", "bravo", "doyle", "duffy", "gagat", "kelly", "komar", "loane", "reyes", "delss", "smith", "walse", "white", "wolfe"]

let manoa = ["chase", "davis", "gares", "henry", "klock", "levin", "lynch", "ricci", "smith", "turek", "welsh", "wolov"]

let chathum = ["casey", "cooke", "cohan", "groth", "johns", "kelly", "moore"]

var wordBank = ["which", "there", "their", "about", "would", "these", "other", "words", "could", "write", "first", "water", "after", "where", "right", "think", "three", "years", "place", "sound", "great", "again", "still", "every", "small", "found", "those", "never", "under", "might", "while", "house", "world", "below", "asked", "going", "large", "until", "along", "shall", "being", "often", "earth", "began", "since", "study", "night", "light", "above", "paper", "parts", "young", "story", "point", "times", "heard", "whole", "white", "given", "means", "music", "miles", "thing", "today", "later", "using", "money", "lines", "order", "group", "among", "learn", "known", "space", "table", "early", "trees", "short", "hands", "state", "black", "shown", "stood", "front", "voice", "kinds", "makes", "comes", "close", "power", "lived", "vowel", "taken", "built", "heart", "ready", "quite", "class", "bring", "round", "horse", "shows", "piece", "green", "stand", "birds", "start", "river", "tried", "least", "field", "whose", "girls", "leave", "added", "color", "third", "hours", "moved", "plant", "doing", "names", "forms", "heavy", "ideas", "cried", "check", "floor", "begin", "woman", "alone", "plane", "spell", "watch", "carry", "wrote", "clear", "named", "books", "child", "glass", "human", "takes", "party", "build", "seems", "blood", "sides", "seven", "mouth", "solve", "north", "value", "death", "maybe", "happy", "tells", "gives", "looks", "shape", "lives", "steps", "areas", "sense", "speak", "force", "ocean", "speed", "women", "metal", "south", "grass", "scale", "cells", "lower", "sleep", "wrong", "pages", "ships", "needs", "rocks", "eight", "major", "level", "total", "ahead", "reach", "stars", "store", "sight", "terms", "catch", "works", "board", "cover", "songs", "equal", "stone", "waves", "guess", "dance", "spoke", "break", "cause", "radio", "weeks", "lands", "basic", "liked", "trade", "fresh", "final", "fight", "meant", "drive", "spent", "local", "waxes", "knows", "train", "bread", "homes", "teeth", "coast", "thick", "brown", "clean", "quiet", "sugar", "facts", "steel", "forth", "rules", "notes", "units", "peace", "month", "verbs", "seeds", "helps", "sharp", "visit", "woods", "chief", "walls", "cross", "wings", "grown", "cases", "foods", "crops", "fruit", "stick", "wants", "stage", "sheep", "nouns", "plain", "drink", "bones", "apart", "turns", "moves", "touch", "angle", "based", "range", "marks", "tired", "older", "farms", "spend", "shoes", "goods", "chair", "twice", "cents", "empty", "alike", "style", "broke", "pairs", "count", "enjoy", "score", "shore", "roots", "paint", "heads", "shook", "serve", "angry", "crowd", "wheel", "quick", "dress", "share", "alive", "noise", "solid", "cloth", "signs", "hills", "types", "drawn", "worth", "truck", "piano", "upper", "loved", "usual", "faces", "drove", "cabin", "boats", "towns", "proud", "court", "model", "prime", "fifty", "plans", "yards", "prove", "tools", "price", "sheet", "smell", "boxes", "raise", "match", "truth", "roads", "threw", "enemy", "lunch", "chart", "scene", "graph", "doubt", "guide", "winds", "block", "grain", "smoke", "mixed", "games", "wagon", "sweet", "topic", "extra", "plate", "title", "knife", "fence", "falls", "cloud", "wheat", "plays", "enter", "broad", "steam", "atoms", "press", "lying", "basis", "clock", "taste", "grows", "thank", "storm", "agree", "brain", "track", "smile", "funny", "beach", "stock", "hurry", "saved", "sorry", "giant", "trail", "offer", "ought", "rough", "daily", "avoid", "keeps", "throw", "allow", "cream", "laugh", "edges", "teach", "frame", "bells", "dream", "magic", "occur", "ended", "chord", "false", "skill", "holes", "dozen", "brave", "apple", "climb", "outer", "pitch", "ruler", "holds", "fixed", "costs", "calls", "blank", "staff", "labor", "eaten", "youth", "tones", "honor", "globe", "gases", "doors", "poles", "loose", "apply", "tears", "exact", "brush", "chest", "layer", "whale", "minor", "faith", "tests", "judge", "items", "worry", "waste", "hoped", "strip", "begun", "aside", "lakes", "bound", "depth", "candy", "event", "worse", "aware", "shell", "rooms", "ranch", "image", "snake", "aloud", "dried", "likes", "motor", "pound", "knees", "refer", "fully", "chain", "shirt", "flour", "drops", "spite", "orbit", "banks", "shoot", "curve", "tribe", "tight", "blind", "slept", "shade", "claim", "flies", "theme", "queen", "fifth", "union", "hence", "straw", "entry", "issue", "birth", "feels", "anger", "brief", "rhyme", "glory", "guard", "flows", "flesh", "owned", "trick", "yours", "sizes", "noted", "width", "burst", "route", "lungs", "uncle", "bears", "royal", "kings", "forty", "trial", "cards", "brass", "opera", "chose", "owner", "vapor", "beats", "mouse", "tough", "wires", "meter", "tower", "finds", "inner", "stuck", "arrow", "poems", "label", "swing", "solar", "truly", "tense", "beans", "split", "rises", "weigh", "hotel", "stems", "pride", "swung", "grade", "digit", "badly", "boots", "pilot", "sales", "swept", "lucky", "prize", "stove", "tubes", "acres", "wound", "steep", "slide", "trunk", "error", "porch", "slave", "exist", "faced", "mines", "marry", "juice", "raced", "waved", "goose", "trust", "fewer", "favor", "mills", "views", "joint", "eager", "spots", "blend", "rings", "adult", "index", "nails", "horns", "balls", "flame", "rates", "drill", "trace", "skins", "waxed", "seats", "stuff", "ratio", "minds", "dirty", "silly", "coins", "hello", "trips", "leads", "rifle", "hopes", "bases", "shine", "bench", "moral", "fires", "meals", "shake", "shops", "cycle", "movie", "slope", "canoe", "teams", "folks", "fired", "bands", "thumb", "shout", "canal", "habit", "reply", "ruled", "fever", "crust", "shelf", "walks", "midst", "crack", "print", "tales", "coach", "stiff", "flood", "verse", "awake", "rocky", "march", "fault", "swift", "faint", "civil", "ghost", "feast", "blade", "limit", "germs", "reads", "ducks", "dairy", "worst", "gifts", "lists", "stops", "rapid", "brick", "claws", "beads", "beast", "skirt", "cakes", "lions", "frogs", "tries", "nerve", "grand", "armed", "treat", "honey", "moist", "legal", "penny", "crown", "shock", "taxes", "sixty", "altar", "pulls", "sport", "drums", "talks", "dying", "dates", "drank", "blows", "lever", "wages", "proof", "drugs", "tanks", "sings", "tails", "pause", "herds", "arose", "hated", "clues", "novel", "shame", "burnt", "races", "flash", "weary", "heels", "token", "coats", "spare", "shiny", "alarm", "dimes", "sixth", "clerk", "mercy", "sunny", "guest", "float", "shone", "pipes", "worms", "bills", "sweat", "suits", "smart", "upset", "rains", "sandy", "rainy", "parks", "sadly", "fancy", "rider", "unity", "bunch", "rolls", "crash", "craft", "newly", "gates", "hatch", "paths", "funds", "wider", "grace", "grave", "tides", "admit", "shift", "sails", "pupil", "tiger", "angel", "cruel", "agent", "drama", "urged", "patch", "nests", "vital", "sword", "blame", "weeds", "screw", "vocal", "bacon", "chalk", "cargo", "crazy", "acted", "goats", "arise", "witch", "loves", "queer", "dwell", "backs", "ropes", "shots", "merry", "phone", "cheek", "peaks", "ideal", "beard", "eagle", "creek", "cries", "ashes", "stall", "yield", "mayor", "opens", "input", "fleet", "tooth", "cubic", "wives", "burns", "poets", "apron", "spear", "organ", "cliff", "stamp", "paste", "rural", "baked", "chase", "slice", "slant", "knock", "noisy", "sorts", "stays", "wiped", "blown", "piled", "clubs", "cheer", "widow", "twist", "tenth", "hides", "comma", "sweep", "spoon", "stern", "crept", "maple", "deeds", "rides", "muddy", "crime", "jelly", "ridge", "drift", "dusty", "devil", "tempo", "humor", "sends", "steal", "tents", "waist", "roses", "reign", "noble", "cheap", "dense", "linen", "geese", "woven", "posts", "hired", "wrath", "salad", "bowed", "tires", "shark", "belts", "grasp", "blast", "polar", "fungi", "tends", "pearl", "loads", "jokes", "veins", "frost", "hears", "loses", "hosts", "diver", "phase", "toads", "alert", "tasks", "seams", "coral", "focus", "naked", "puppy", "jumps", "spoil", "quart", "macro", "fears", "flung", "spark", "vivid", "brook", "steer", "spray", "decay", "ports", "socks", "urban", "goals", "grant", "minus", "films", "tunes", "shaft", "firms", "skies", "bride", "wreck", "flock", "stare", "hobby", "bonds", "dared", "faded", "thief", "crude", "pants", "flute", "votes", "tonal", "radar", "wells", "skull", "hairs", "argue", "wears", "dolls", "voted", "caves", "cared", "broom", "scent", "panel", "fairy", "olive", "bends", "prism", "lamps", "cable", "peach", "ruins", "rally", "schwa", "lambs", "sells", "cools", "draft", "charm", "limbs", "brake", "gazed", "cubes", "delay", "beams", "fetch", "ranks", "array", "harsh", "camel", "vines", "picks", "naval", "purse", "rigid", "crawl", "toast", "soils", "sauce", "basin", "ponds", "twins", "wrist", "fluid", "pools", "brand", "stalk", "robot", "reeds", "hoofs", "buses", "sheer", "grief", "bloom", "dwelt", "melts", "risen", "flags", "knelt", "fiber", "roofs", "freed", "armor", "piles", "aimed", "algae", "twigs", "lemon", "ditch", "drunk", "rests", "chill", "slain", "panic", "cords", "tuned", "crisp", "ledge", "dived", "swamp", "clung", "stole", "molds", "yarns", "liver", "gauge", "breed", "stool", "gulls", "awoke", "gross", "diary", "rails", "belly", "trend", "flask", "stake", "fried", "draws", "actor", "handy", "bowls", "haste", "scope", "deals", "knots", "moons", "essay", "thump", "hangs", "bliss", "dealt", "gains", "bombs", "clown", "palms", "cones", "roast", "tidal", "bored", "chant", "acids", "dough", "camps", "swore", "lover", "hooks", "males", "cocoa", "punch", "award", "reins", "ninth", "noses", "links", "drain", "fills", "nylon", "lunar", "pulse", "flown", "elbow", "fatal", "sites", "moths", "meats", "foxes", "mined", "attic", "fiery", "mount", "usage", "swear", "snowy", "rusty", "scare", "traps", "relax", "react", "valid", "robin", "cease", "gills", "prior", "safer", "polio", "loyal", "swell", "salty", "marsh", "vague", "weave", "mound", "seals", "mules", "virus", "scout", "acute", "windy", "stout", "folds", "seize", "hilly", "joins", "pluck", "stack", "lords", "dunes", "burro", "hawks", "trout", "feeds", "scarf", "halls", "coals", "towel", "souls", "elect", "buggy", "pumps", "loans", "spins", "files", "oxide", "pains", "photo", "rival", "flats", "syrup", "rodeo", "sands", "moose", "pints", "curly", "comic", "cloak", "onion", "clams", "scrap", "didst", "couch", "codes", "fails", "ounce", "lodge", "greet", "gypsy", "utter", "paved", "zones", "fours", "alley", "tiles", "bless", "crest", "elder", "kills", "yeast", "erect", "bugle", "medal", "roles", "hound", "snail", "alter", "ankle", "relay", "loops", "zeros", "bites", "modes", "debts", "realm", "glove", "rayon", "swims", "poked", "stray", "lifts", "maker", "lumps", "graze", "dread", "barns", "docks", "masts", "pours", "wharf", "curse", "plump", "robes", "seeks", "cedar", "curls", "jolly", "myths", "cages", "gloom", "locks", "pedal", "beets", "crows", "anode", "slash", "creep", "rowed", "chips", "fists", "wines", "cares", "valve", "newer", "motel", "ivory", "necks", "clamp", "barge", "blues", "alien", "frown", "strap", "crews", "shack", "gonna", "saves", "stump", "ferry", "idols", "cooks", "juicy", "glare", "carts", "alloy", "bulbs", "lawns", "lasts", "fuels", "oddly", "crane", "filed", "weird", "shawl", "slips", "troop", "bolts", "suite", "sleek", "quilt", "tramp", "blaze", "atlas", "odors", "scrub", "crabs", "probe", "logic", "adobe", "exile", "rebel", "grind", "sting", "spine", "cling", "desks", "grove", "leaps", "prose", "lofty", "agony", "snare", "tusks", "bulls", "moods", "humid", "finer", "dimly", "plank", "china", "pines", "guilt", "sacks", "brace", "quote", "lathe", "gaily", "fonts", "scalp", "adopt", "foggy", "ferns", "grams", "clump", "perch", "tumor", "teens", "crank", "fable", "hedge", "genes", "sober", "boast", "tract", "cigar", "unite", "owing", "thigh", "haiku", "swish", "dikes", "wedge", "booth", "eased", "frail", "cough"]

var genWordAdd = true
var hhsAdd = true
var hmsAdd = true
var lynnewoodAdd = true
var manoaAdd = true
var chathumAdd = true

var guess = ""

var validWord = true

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    
        possible.removeAll()
        possible.append("fords")
        print("view loaded")
    }

    override func viewDidAppear(_ animated: Bool)
    {
        possible.removeAll()
        possible.append("fords")
        print("view loaded")
    }
    
    @IBAction func genWordEnabled(_ sender: UISwitch)
    {
    check(sender: sender, bool: &genWordAdd)
    }
    
    @IBAction func hhsEnable(_ sender: UISwitch)
    {
    check(sender: sender, bool: &hhsAdd)
    }
    
    @IBAction func hmsEnable(_ sender: UISwitch)
    {
    check(sender: sender, bool: &hmsAdd)
    }
    
    @IBAction func lynnewoodEnable(_ sender: UISwitch)
    {
    check(sender: sender, bool: &lynnewoodAdd)
    }
    
    @IBAction func manoaEnable(_ sender: UISwitch)
    {
    check(sender: sender, bool: &manoaAdd)
    }
    
    @IBAction func chathumEnable(_ sender: UISwitch)
    {
    check(sender: sender, bool: &chathumAdd)
    }
    
    @IBAction func start(_ sender: UIButton)
    {
        startCheck(bool: genWordAdd, array: genWord)
        startCheck(bool: hhsAdd, array: hhs)
        startCheck(bool: hmsAdd, array: hms)
        startCheck(bool: lynnewoodAdd, array: lynnewood)
        startCheck(bool: manoaAdd, array: manoa)
        startCheck(bool: chathumAdd, array: chathum)
    }
    
    
    func startCheck(bool: Bool, array: [String])
    {
        if bool == true
        {
            possible.append(contentsOf: array)
        }
    }
    
    
    func check(sender: UISwitch, bool: inout Bool)
    {
        if sender.isOn == true
        {
            bool = true
        }
    
        else if sender.isOn == false
        {
            bool = false
        }
    }
    

    
    @IBAction func openFordian(_ sender: UITapGestureRecognizer)
    {
        if let url = URL(string: "https://thefordian.com/") {
            UIApplication.shared.open(url)
        }

    }
    
    
    
    
    
    
    
    
}

