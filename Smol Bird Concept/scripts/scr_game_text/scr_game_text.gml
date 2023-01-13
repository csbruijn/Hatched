/// @param text_id
function scr_game_text(_text_id)
{
switch(_text_id)
	{
		case "frog":
		scr_text("Hello there.", "bird")
		scr_text("...Ribbit...g’day mate...", "renee", -1);
			scr_option("What's your name?", "frog - name");
			scr_option("I'm sorry what?", "frog - what");	
		break;
		
		case "frog - name":
		scr_text("My name is Renee alright, who might you be then?", "renee", -1);
		scr_text("I am.. I don't have a name yet.", "bird");
		scr_text("I will be calling you...little birdy then!", "renee", -1);
		scr_text("Thank you sir!", "bird");
			scr_option("Do you know the way up the big tree?", "frog - tree");
			scr_option("Is that your nest you are sitting on?", "frog - nest");
		break;
		
		case "frog - what":
		scr_text("Been sitting here like I always do, waiting for a nice juicy mozzie to pass by.", "renee", -1);
		scr_text("I'm sorry but what are mozzies?", "bird");
		scr_text("y’know those flying insects, you might know them as mosquitos.", "renee", -1);
		scr_text("Oh yeah I know those! Have you caught any today?", "bird");
		scr_text("To be frank Birdy; it's not going so well today. I am craving a proper meal but none of those mozzies have passed by.", "renee", -1)
			scr_option("Do you know the way up the big tree?", "frog - tree");
			scr_option("Is that your nest you are sitting on?", "frog - nest");
		break;
		
		case "frog - tree":
		scr_text("Nah mate wouldn’t even know why anyone would go up in there; there is probably like no flies up there.", "renee", -1);
		scr_text("My home is in there that's why I want to get in there.", "bird");
		scr_text("I really hope that you find your way back.", "renee", -1);
			scr_option ("Me too...", "frog - bye");
		break;
		
		case "frog - nest":
		scr_text("Nah Birdy I just sit on this plant to wait for flies. I live down in this pond.", "renee", -1);
			scr_option ("Well, good for you.", "frog - bye");
		break;
		
		case "frog - bye":
		
		break;
	}
}