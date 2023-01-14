/// @param text_id
function scr_game_text(_text_id)
{
switch(_text_id)
	{
		case "frog":
		scr_text("Hello there.", "bird")
		scr_text("...Ribbit...g'day mate...", "renee", -1);
			scr_option("What's your name?", "frog - name");
			scr_option("What are you doing?", "frog - what");	
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
		scr_text("Nah mate wouldn’t even know why anyone would go up in there; there is probably like no flies up there.", "renee", -1);
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
		
		case "frog - end":
		scr_text("Hello there.", "bird");
		scr_text("Good on ya birdy! Now for my end of the bargain. I might not know any way up the tree or any birds but i do know a busy little beaver and I reckon that bloke can help you out with that getting up in a tree problem since he knows all there is about trees.", "renee", -1);
		scr_text("Thank you so much! ", "bird");
		break;
	}
}