function create_dialogue(_messages){
 if (instance_exists(obj_dialog)) return;
    
    var _inst = instance_create_depth(0, 0, 0, obj_dialog);
    _inst.messages = _messages;
    _inst.current_message = 0;
}



char_colors = {
    "Congrats":c_yellow,
    "Djamel":c_blue,
    "You":c_lime,
    "Amina":c_fuchsia,
    "Mr. Harold": c_white,
}

keys_found = 0

Player_Level = 1
canGoToRoom2 = false

canGoToRoom3 = false


Canteen_Dialogue = [
    {
        name: "Mr. Harold",
        msg: "Welcome to the school canteen! This is where students come to enjoy their meals and snacks."
    },
    {
        name: "You",
        msg: "It smells amazing... and the food looks really fresh."
    },
    {
        name: "Mr. Harold",
        msg: "Dr. Jabr designed this canteen with great care. Every meal is healthy and nutritious for the children."
    },
    {
        name: "Mr. Harold",
        msg: "Even the snacks here are made with wholesome ingredients. He believes that good food helps the students learn better."
    },
    {
        name: "You",
        msg: "So he really cares about the children's health, not just their studies?"
    },
    {
        name: "Mr. Harold",
        msg: "Exactly. Each dish was planned to provide energy, vitamins, and balance. He wanted the canteen to be a place where kids can enjoy their food without worries."
    },
    {
        name: "Mr. Harold",
        msg: "Take a look around, try something healthy, and you'll feel the care Dr. Jabr put into every meal."
    },
    {
        name: "You",
        msg: "I can see why this place feels so welcoming... it's more than just food, it's part of the school's heart."
    },
    {
        name: "Mr. Harold",
        msg: "This concludes your journey through the school. I hope the experience has given you insight into the challenges Dr. Jabr faced in building it, and that you enjoyed the game."
    }
];

First_Dialogue = [
    {
        name: "Djamel",
        msg: "Welcome to Dr. Jabr's office. This room carries the weight of every decision he ever made."
    },
    {
        name: "You",
        msg: "It feels quiet... but heavy, like this place has seen difficult moments."
    },
    {
        name: "Djamel",
        msg: "Many nights were spent here, deciding whether the school could survive another day."
    },
    {
        name: "Djamel",
        msg: "Resources were limited, support was uncertain, yet he continued forward."
    },
    {
        name: "You",
        msg: "So even when everything was against him, he didn't stop?"
    },
    {
        name: "Djamel",
        msg: "No. Every challenge demanded sacrifice, and every sacrifice shaped the future you now stand in."
    },
    {
        name: "Djamel",
        msg: "Look carefully around the office. His struggles are reflected in this room."
    },
    {
        name: "Djamel",
        msg: "Three keys are hidden here. They represent perseverance, sacrifice, and belief."
    },
    {
        name: "You",
        msg: "What happens once I find them?"
    },
    {
        name: "Djamel",
        msg: "If you already possess all three keys, you will be automatically teleported to the next room."
    },
    {
        name: "Djamel",
        msg: "If not, search the office thoroughly. Once the final key is found, you will be automatically teleported and the story will continue."
    }
];

Library_Dialogue = [
    {
        name: "Amina",
        msg: "Welcome to the library. This place was the quiet backbone of the school."
    },
    {
        name: "You",
        msg: "It feels peaceful... almost protected from everything outside."
    },
    {
        name: "Amina",
        msg: "During the hardest years, when funding disappeared and uncertainty grew, this room never closed."
    },
    {
        name: "Amina",
        msg: "Dr. Jabr believed that as long as knowledge survived, the school still had a future."
    },
    {
        name: "You",
        msg: "So this is where hope was kept alive?"
    },
    {
        name: "Amina",
        msg: "Exactly. Students studied by dim light, sharing worn books and handwritten notes."
    },
    {
        name: "Amina",
        msg: "Every page turned here was an act of resistance against failure."
    },
    {
        name: "Amina",
        msg: "Look closely among the shelves. What you seek here will guide you forward."
    },
    {
        name: "Amina",
        msg: "(You have 45 seconds before being automatically teleported to the next room and the story will continue)"
    }
];
