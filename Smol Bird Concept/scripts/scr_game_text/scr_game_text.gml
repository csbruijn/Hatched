// Script assets have changed for v2.3.0 see
/// @param text_id
function scr_game_text(_text_id)
{
switch(_text_id)
	{
		//-----------------------------------FROG-----------------------------------//
		case "frog":
		scr_text("Hello there.", "bird")
		scr_text("...Ribbit...g'day mate...", "renee", -1);
			scr_option("What's your name?", "frog - name");
			scr_option("What are you doing?", "frog - what");	
			global.frogTalked = true;
		break;
		
		case "frog - name":
		scr_text("My name is Renee alright, who might you be then?", "renee", -1);
		scr_text("I am...I don't have a name yet.", "bird");
		scr_text("I will be calling you...little birdy then!", "renee", -1);
		scr_text("Thank you sir!", "bird");
			scr_option("Can you help me?", "frog - tree");
			scr_option("What are you doing?", "frog - what2");
		break;
		
		case "frog - what":
		scr_text("Been sitting here like I always do, waiting for a nice juicy mozzie to pass by.", "renee", -1);
		scr_text("I'm sorry but what are mozzies?", "bird");
		scr_text("Y'know those flying insects, you might know them as mosquitos.", "renee", -1);
		scr_text("Oh yeah I know those! Have you caught any today?", "bird");
		scr_text("To be frank Birdy; it's not going so well today. I am craving a proper meal but none of those mozzies have passed by.", "renee", -1)
			scr_option("Can you help me?", "frog - tree");
			scr_option("What's your name?", "frog - name2");
		break;
		
		case "frog - name2":
		scr_text("My name is Renee alright, who might you be then?", "renee", -1);
		scr_text("I am...I don't have a name yet.", "bird");
		scr_text("I will be calling you...little birdy then!", "renee", -1);
		scr_text("Thank you sir!", "bird");
			scr_option("Can you help me?", "frog - tree");
			scr_option("Is that your nest?", "frog - nest");
		break;
		
		case "frog - what2":
		scr_text("Been sitting here like I always do, waiting for a nice juicy mozzie to pass by.", "renee", -1);
		scr_text("I'm sorry but what are mozzies?", "bird");
		scr_text("Y'know those flying insects, you might know them as mosquitos.", "renee", -1);
		scr_text("Oh yeah I know those! Have you caught any today?", "bird");
		scr_text("To be frank Birdy; it's not going so well today. I am craving a proper meal but none of those mozzies have passed by.", "renee", -1)
			scr_option("Can you help me?", "frog - tree");
			scr_option("Is that your nest?", "frog - nest");
		break;
		
		case "frog - tree":
		scr_text("I need to get back to the top of the big tree. Do you know the way up?", "bird");
		scr_text("Nah mate wouldn't even know why anyone would go up in there; there is probably like no flies up there.", "renee", -1);
		scr_text("My home is in there that's why I want to get in there.", "bird");
		scr_text("I really hope that you find your way back.", "renee", -1);
			scr_option ("Me too...", "frog - bye");
		break;
		
		case "frog - nest":
		scr_text("Nah Birdy I just sit on this plant to wait for flies. I live down in this pond.", "renee", -1);
			scr_option ("Well, good for you.", "frog - tree");
		break;
		
		case "frog - bye":
		scr_text("See you later mister!", "bird");
		scr_text("Wait Birdie! I reckon we might be able to help eachother out. If you could send some flies my way, I will give you a nudge in the right direction to get home.", "renee", -1);
		scr_text("How am I supposed to do that?", "bird");
		scr_text("Y'know just make some noise and scare them right towards me. I reckon you can find some nearby here.", "renee", -1);
		scr_text("I can do that!", "bird");
		//change that part after later (R)
		scr_text("Why don't search those flies yourself?", "bird");
		scr_text("If it was that simple it would be no drama, but as soon as I jump their way they scatter and I will have nowt.", "renee", -1);
		scr_text("I will do that for you! See you later!", "bird");
		break;
		
		case "frog - talked":
		scr_text("I am hungry...", "renee", -1)
		break;
		
		case "frog - end":
		scr_text("Hello there.", "bird");
		scr_text("Good on ya birdy! Now for my end of the bargain. I might not know any way up the tree or any birds but i do know a busy little beaver and I reckon that bloke can help you out with that getting up in a tree problem since he knows all there is about trees.", "renee", -1);
		scr_text("Thank you so much! ", "bird");
		global.reneejump = true;
		break;
		
		
		//-----------------------------------BEAVER-----------------------------------//
		
		case "beaver":
		scr_text("Hi there mister. Are you the beaver?", "bird");
		scr_text("No, I'm busy. So leave me alone.", "barnold", -1);
		global.hasMetBeaver = true;
		break;
		
		case "beaver - not met badger":
		scr_text("Hi there mister. Are you the beaver?", "bird");
		scr_text("No, I'm busy. So leave me alone.", "barnold", -1);
		break;
		
		case "beaver - met badger":
		scr_text("Hi there mister I'm here to help you build some homes.", "bird");
		scr_text("You don't seem like a builder, but alright...why don't you fetch me four twigs.", "barnold", -1);
		global.hasMetBeaver = true;
		break;
		
		case "beaver - met badger2":
		scr_text("Hi there mister I'm here to help you build some homes.", "bird");
		scr_text("You don't seem like a builder, but alright...why don't you fetch me four twigs.", "barnold", -1);
		break;
		
		case "beaver - less twigs":
		scr_text("Do you have the twigs yet?", "barnold", -1);
		scr_text("Not yet mister!", "bird");
		break;
		
		case "beaver - more twigs":
		scr_text("You picked some real good twigs!", "barnold", -1);
		scr_text("The same kind my mother used for her nest!", "bird");
		scr_text("So maybe you are a builder after all.", "barnold", -1);
		scr_text("Do you like building homes?", "bird");
		scr_text("I used to love it, but nowadays the amount of work that's coming from badger is killing me.", "barnold", -1);
		scr_text("Hey kid, why don't you fetch me some mud. Two clumps of mud should be enough.", "barnold", -1);
		global.beaverTwigs = true;
		break;
		
		case "beaver - less mud":
		scr_text("Do you have the mud yet?", "barnold", -1);
		scr_text("Not yet mister!", "bird");
		break;
		
		case "beaver - more mud":
		scr_text("Here is the mud you asked for.", "bird");
		scr_text("Who are all these homes for, mister?", "bird");
		scr_text("Roger the Badger wants them built for all the forest critters that don't have homes.", "barnold", -1);
		scr_text("I don't have a home either.", "bird");
		scr_text("How come?", "barnold", -1);
		scr_text("I fell out of the nest, but I am going to get home!", "bird");
		scr_text("Good to hear, how are you going to get home?", "barnold", -1);
		scr_text(" I was told you can help me up in my tree?", "bird");
		scr_text("Oh...I have no idea how to do that.", "barnold", -1);
		scr_text("...Oh...*sniff*", "bird");
		scr_text("Hey don't cry! This is not the end of the world.", "barnold", -1);
		scr_text("But...I cannot go home now...", "bird");
		scr_text("Well why don't we build you a new home?", "barnold", -1);
		scr_text("YES! THAT WOULD BE AMAZING!", "bird");
		scr_text("Haha I like your energy. Why don't you build this one yourself?", "barnold", -1);
		scr_text("Yes I can do the heavy work, while you teach me, sit back and relax!!!", "bird");
		scr_text("Great idea, we have enough twigs already. If you get three bundles of grass we might have enough for a sturdy nest!", "barnold", -1);
		scr_text("Where do you want it build?", "barnold", -1);
		global.beaverFinal = true;
		break;
		
		case "beaver - final":
		scr_text("Just bring the items to your building spot and you can build it!", "barnold", -1);
		break;
		
		case "beaver - nest done":
		scr_text("Is it good enough?", "bird");
		scr_text("Do you like it?", "barnold", -1);
		scr_text("Yes.", "bird");
		scr_text("Then yes..it is good enough!", "barnold", -1);
		scr_text("Hey! I was about to forget...I found something that might be useful to you.", "barnold", -1);
			instance_create_depth(x,y+100,-y,obj_feather_overworld);
		    with (obj_feather_overworld) 
				{
					 feather = global.feather_list.beaver;
				}
		break;
		
		
		//-----------------------------------BADGER-----------------------------------//
		
		case "badger":
		scr_text("Hello there.", "bird");
		scr_text("Good Morning youngling.", "roger", -1);
		
		scr_text("Do you know where I can find the Beaver?", "bird");
		scr_text("What do you need the Beaver for?", "roger", -1);
		scr_text("I was told he could help me up in the big tree.", "bird");
		scr_text("Why would he get you up in the tree, is there anything good up there?", "roger", -1);
		scr_text("There is so much good up there! My home, my mom , my...", "bird");
		scr_text("Okay, okay! But are you going to give him something good for it?", "roger", -1);
		scr_text("I don't have anything.", "bird");
		scr_text("So why would he help you?", "roger", -1);
		scr_text("Because a big flock is strong together!", "bird");
			//scr_option("Because a big flock is strong together!", "badger - not met beaver2");
			//scr_option("Because I am the nicest bird he’ll ever have met!", "badger - not met beaver2");
		//break;
		
		//case "badger - not met beaver2":
		scr_text("No, no, no! That's not how that works, that poor beaver has so much to do and you have nothing to give.", "roger", -1);
		scr_text("But how do I get home?", "bird");
		scr_text("I'll tell you what, I will convince the beaver to help you...", "roger", -1);
		scr_text("THANK YOU SO MUCH!!!", "bird");
		scr_text("BUT you will have to do something too.", "roger", -1);
		scr_text("Oh...", "bird");
		scr_text("I need you to help the beaver out with building three new homes first. Go to him and ask him what you can help with.", "roger", -1);
		scr_text("Okey mister, will do!", "bird");
		global.hasMetBadger = true;
		global.badgerFinal = true;
		break;
		
		case "badger - met":
		scr_text("Did you talk to the beaver?", "roger", -1);
		break;
	}
}