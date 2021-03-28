text="Chocolate or vanilla?&&     {choice 0} Chocolate {choice 1}      Vanilla {choice `TMP`}";
//the initial prompt where player can make choice.
//somehow, {choice `TMP` is ESSENTIAL to add at the end of this text, to make sure choices work properly.

choice0="Chocolate? {sleep 10}&* I see... {pause}{clear}* Good choice!";
//immediate text response when {choice0} is picked.

choice1="Vanilla? {sleep 10}&* I see... {pause}{clear}* Good choice!";
//immediate text response when {choice1} is picked.

afterchoice0="Mmm, chocolate...";
//response on 2nd interaction when {choice0} is picked.

afterchoice1="Ah, vanilla...";
//response on 2nd interaction when {choice1} is picked.

//Current limitations:
//I haven't figured out how to have two different choice prompts in the same room 
//because they would both use the same flag (TEXT_TYPER_CHOICE), and making one choice 
//in one prompt will mess up the other prompt!
