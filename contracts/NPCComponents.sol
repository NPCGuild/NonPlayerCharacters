/**
 *Submitted for verification at Etherscan.io on 2021-08-30
*/

// SPDX-License-Identifier: Unlicense

/*

    NPCComponents.sol
    
    This is a utility contract to make it easier for other
    contracts to work with Loot properties.
    
    Call weaponComponents(), chestComponents(), etc. to get 
    an array of attributes that correspond to the item. 
    
    The return format is:
    
    uint256[5] =>
        [0] = Item ID
        [1] = Suffix ID (0 for none)
        [2] = Name Prefix ID (0 for none)
        [3] = Name Suffix ID (0 for none)
        [4] = Augmentation (0 = false, 1 = true)
    
    See the item and attribute tables below for corresponding IDs.

*/

pragma solidity ^0.8.4;

contract NPCComponents {

   string[] private items = [
        "Scissors",           // 0
        "Hedge Trimmers",     // 1
        "Book",               // 2
        "Laptop",             // 3
        "Instrument",         // 4
        "Markers",            // 5
        "Lawnmower",          // 6 
        "Pool Skimmer",       // 7
        "Bus",                // 8
        "Limo",               // 9
        "Commercial Airliner", // 10
        "Taxi",               // 11
        "Jet",                // 12
        "Prop Plane",         // 13
        "Boat",               // 14
        "Cheques",            // 15
        "Money",              // 16
        "Wrench",             // 17
        "Mop & Bucket",       // 18
        "Garbage Truck",      // 19
        "Knives",             // 20
        "Keg",                // 21
        "Paint Brush & Paints", // 22
        "Stethescope",        // 23
        "Gun",                // 24
        "Baton",              // 25
        "Taser",              // 26
        "Ruler",              // 27
        "Chalk & Chalkboard", // 28
        "Scapel",             // 29
        "Rapier",             // 30
        "Pineapple",          // 31
        "Tamagotchi",         // 32
        "Yo-Yo",              // 33
        "Super Soaker CPS 2000", // 34
         "Startup Hoodie",    // 35
        "Patagonia Vest",     // 36
        "Stanford Hoodie"     // 37


    ];

    string[] private tops = [

        "Blouse",            // 0
        "Crop Top",          // 1
        "Tube Top",          // 2
        "Crew Neck",         // 3
        "V Neck",            // 4
        "Halter Top",        // 5
        "Button Down",       // 6
        "Oversized Shirt",   // 7
        "Corsette",          // 8
        "Spaghetti Top",     // 9
        "Dress Shirt",       // 10
        "Tuxedo",            // 11
        "Blazer",            // 12
        "Vest",              // 13
        "Winter Jacket",     // 14
        "Wind Breaker",      // 15
        "Tank Top",          // 16
        "Cami",              // 17
        "Tunic",             // 18
        "Peplum",            // 19
        "Bardot",            // 20
        "Kaftan",            // 21
        "Wrap",              // 22
        "Tulip",             // 23
        "Cape",              // 24
        "Cinched-Wait",      // 25
        "Layered Top",       // 26
        "Syled Back",        // 27
        "One Shoulder Top",  // 28
        "High Low Top",      // 29
        "Choker Top",        // 30
        "Lace",              // 31
        "Oxford Button-Down Shirt", // 32
        "Cuban Collar Shirt", // 33
        "Flannel Shirt",     // 34 
        "Office Shirt",      // 35
        "Chambray",          // 36
        "Classic Short Sleeve Shirt", // 37
        "Denim Shirt",       // 38
        "Linen Shirt",       // 39
        "Polo Shirt",        // 40
        "Black Hoodie",      // 41
        "White Tall Tee",    // 42

    ];

    string[] private hats = [


        "Beanie",
        "Baseball Cap",
        "Top",
        "Sun Hat",
        "Fedora",
        "Beret Cap",
        "Cowbow Hat",
        "Panama Hat",
        "Boater Hat",
        "Bucket Hat",
        "Boonie Hat",
        "Newsboy Cap",
        "Visor",
        "Bowler",
        "Straw Hat",
        "Trilby Hat",
        "Turban",
        "Witch Hat",
        "Warlock Hat",
        "Cocktail Hat",
        "Derby Hat",
        "Hunting Cap",
        "Breton Hat",
        "Pillbox Hat",
        "Bonnet",
        "Cartwheel Hat",
        "Clouche",
        "Kettle Brim",
        "Panama Hat",
        "Snapback"
        "Dad Hat",
        "Trapper Hat",
        "Pork Pie",
        "Top Hat",
        "Football Helmet",
        "Surgeons Mask",
        "Silk Hood",
        "Linen Hood",
        "Hood",
        "Alien Facehugger",
    ];

    string[] private waist = [
        "Buckle",
        "Strap",
        "Loop",
        "Leather",
        "Braided",
        "Garter",
        "Cinch",
        "Dring",
        "Reversible",
        "Skinny",
        "Canvas",
        "Studded",
        "Western",
        "Fanny Pack",
        "Utility Belt",

    ];

    string[] private shoes = [
      "Pumps",
      "Stilettos",
      "Kitten heals",
      "Ankle booties",
      "Ankle Strap Heels",
      "Wedges",
      "Cone Heels",
      "Gladiator Sandals",
      "Gladiator Boots",
      "Sling back heels",
      "Ballerina Flats",
      "Open Toe Sandals",
      "Peep-Toe Heels",
      "Cork High Heels",
      "Platform",
      "Spool Heels",
      "Mary Janes",
      "Scarpin",
      "Oxfords",
      "Espadrille Heels",
      "Mules",
      "Trainers",
      "Thigh Highs",
      "Loafer",
      "Fantasy",
      "Moccasins",
      "Derby",
      "Chukkas",
      "Chelsea-Style Boots",
      "Casual Slip-On",
      "Active Sneaker",
      "Walking Shoes",
      "Casual Lace Up Sneakers",
      "Slippers",
      "Slides",
      "Toe-Post Sandal",
      "Active Sandals",
      "Allbirds",
      "Birkenstocks",
      "Yeezys",
      "Rainbows",
      "Roller Skates"

    ];

    string[] private gloves = [
        "Touch Screen Gloves",
        "Silk Glove Liners",
        "Thermal Insulation Mittens",
        "Black Leather Gloves",
        "Cycling Gloves",
        "Skiing Gloves",
        "Fingerless Gloves",
        "Christmas Gloves",
        "Button Gloves",
        "Elastic Velvet Gloves",
        "Arm Warmers",
        "Driving Floves",
        "Weightlifting Gym Gloves",
        "Faux Fur Gloves",
        "Fish Neon Gloves",
        "White Parade Gloves",
        "Winter Gloves",
        "Heavy-Duty Winter Gloves",
        "Fur Lined Gloves",
        "Protective Gloves",
        "Driving Gloves",
        "Military Fingerless Gloves",
        "Daywear Leather and Suede Gloves",
        "Surgical Gloves",
        "Golf Gloves",
        "Gardening Gloves",
        "Convertible Gloves",
        "Food Servicing Gloves",
        "Weightlifting Gloves",
        "Rubber Gloves",
        "Boxing Gloves"


    ];

    string[] private necklaces = [
        "Necklace",
        "Amulet",
        "Pendant",
        "Gold Chain",
        "Shark Tooth Necklace",
        "Gold Chain with Humongous Clock",
        "Locket with Picture"

    ];

    string[] private rings = [
        "Gold Ring",
        "Silver Ring",
        "Bronze Ring",
        "Platinum Ring",
        "Titanium Ring",
        "Stone of Jordan",
        "Oura Ring",
        "Ring Pop"

    ];

    string[] private suffixes = [
        "of Normalcy",
        "of Boredum",
        "of Complacency",
        "of Incompetance",
        "of ImPerfection",
        "of Gloom",
        "of Ignorance",
        "of Servitude",
        "of Glee",
        "of Reptition",
        "of Calm",
        "of Virtue",
        "of the NPC",
        "of Failure",
        "of Absorbtion",
        "of Silicon Valley",
        "of Boulder",
        "of the AI"

    ];

    string[] private namePrefixes = [

        "Apathy", "Admiration", "Acclimation", "Better", "Best", "Bogus", "Burden", "Boring", 
        "Briney", "Bodacious", "Catatonic", "Collected", "Chibby", "Contrived", "Catastrophic", "Devious",
        "Devlish", "Dashing", "Dasterdly", "Defeated", "Downtrodden", "Daring", "Dodding", "Evangelic",
        "Effervescant", "Energetic", "Flimsy", "Floundering", "Foolish", "Gigantic", "Goading", "Glaring", 
        "Halcyonic", "Imaginary", "Joke", "Kangaroo", "Lesser", "Light", "Long", "Majestic", "Mid", "Melancholic",
        "Obvious","Octaganle", "Pious", "Pheobe's", "Ravish", "Ragged", "Rushed", "Scalp", "Steel", "Snivelling", 
        "Tenacious", "Unilaterl", "Unisex", "Unicorn", "Vivacious", "Victorious", "Vegan", "Virtuous", "Wrecked"

    ];

    string[] private nameSuffixes = [

    "Improve",
    "Berserk",
    "Abaft",
    "Fairies",
    "Imagine",
    "List",
    "Dare",
    "Cows",
    "Lighten",
    "Fat",
    "Niave",
    "Rural",
    "Challenge",
    "Pause",
    "Song",
    "Grasp",
    "Roar"
    ];
    
    string[] private disposition = [ ];
    string[] private occupation = [ ];
    string private name = [ ];
    
    function random(string memory input) internal pure returns (uint256) {
        return uint256(keccak256(abi.encodePacked(input)));
    }
    
    function itemComponents(uint256 tokenId) public view returns (string memory) {
        return pluck(tokenId, "ITEM", items);
    }
    
    function topComponents(uint256 tokenId) public view returns (string memory) {
        return pluck(tokenId, "TOPS", tops);
    }
    
    function hatComponents(uint256 tokenId) public view returns (string memory) {
        return pluck(tokenId, "HAT", hats);
    }
    
    function waistComponents(uint256 tokenId) public view returns (string memory) {
        return pluck(tokenId, "WAIST", waist);
    }

    function shoeComponents(uint256 tokenId) public view returns (string memory) {
        return pluck(tokenId, "SHOES", shoes);
    }
    
    function handComponents(uint256 tokenId) public view returns (string memory) {
        return pluck(tokenId, "HAND", gloves);
    }
    
    function neckComponents(uint256 tokenId) public view returns (string memory) {
        return pluck(tokenId, "NECK", necklaces);
    }
    
    function ringComponents(uint256 tokenId) public view returns (string memory) {
        return pluck(tokenId, "RING", rings);
    }
    
    function dispositionComponents(uint256 tokenId) public view returns (string memory) {
        return pluck(tokenId, "DISPOSITION", dispositions);
    }
    
    function occupationComponents(uin256 tokenId) public view returns (string memory) {
        return pluck(tokenId, "OCCUPATION", occupations);
    }
    
    function nameComponents(uint256 tokenId) public view returns (string memory) {
        return pluck(tokenId, "NAME", names);

    function pluck(uint256 tokenId, string memory keyPrefix, string[] memory sourceArray) internal view returns (uint256[5] memory) {
        uint256[5] memory components;
        
        uint256 rand = random(string(abi.encodePacked(keyPrefix, toString(tokenId))));
        
        components[0] = rand % sourceArray.length;
        components[1] = 0;
        components[2] = 0;
        
        uint256 greatness = rand % 21;
        if (greatness > 14) {
            components[1] = (rand % suffixes.length) + 1;
        }
        if (greatness >= 19) {
            components[2] = (rand % namePrefixes.length) + 1;
            components[3] = (rand % nameSuffixes.length) + 1;
            if (greatness == 19) {
                // ...
            } else {
                components[4] = 1;
            }
        }
        return components;
    }
    
    function toString(uint256 value) internal pure returns (string memory) {
        // Inspired by OraclizeAPI's implementation - MIT license
        // https://github.com/oraclize/ethereum-api/blob/b42146b063c7d6ee1358846c198246239e9360e8/oraclizeAPI_0.4.25.sol

        if (value == 0) {
            return "0";
        }
        uint256 temp = value;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
            value /= 10;
        }
        return string(buffer);
    }
}
