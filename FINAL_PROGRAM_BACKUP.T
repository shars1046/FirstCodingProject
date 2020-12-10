%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program created by Saumya Sharma
% Program completed from Decemeber 3rd to 9th
% Program will give users the change to solve their own murder mystery!

% Version history
% V1 - Basic Skeleton
% V2 - Basic Skeleton + Pictures
% V3 - Basic Skeleton + Pictures + Procedures
% V4 - Basic Skeleton + Pictures + Procedures + Audio
% V5 - Final version
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Turn off cursor
setscreen ("nocursor")

% Do not echo keys
setscreen ("noecho")


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Declare ALL variables (font, music, cases, etc) %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%
% Random variables %
%%%%%%%%%%%%%%%%%%%%


% To roll the die and convert the random number (between 1 and 3) into a string
var option : int := 0
var optionToText : string := "1"
optionToText := intstr (option)

% Declaring variables for the laoding gif
var numFrames := Pic.Frames ("Pictures/loading.gif")
var pics : array 1 .. 157 of int
var delayTime : int

% Declaring variables for the dice rolling gif
var numFrames2 := Pic.Frames ("Pictures/dice rolling.gif")
var pics2 : array 1 .. 100 of int
var delayTime2 : int

% Create window and set window size
var window : int := Window.Open ("graphics:1280;720")

% This appears on the top of the screen
View.Set ("My Midterm Project!!")

% Music boolean variables
var done : boolean := false


%%%%%%%%%%%%%%%%%%%%%%%%%
% All picture variables %
%%%%%%%%%%%%%%%%%%%%%%%%%


% Introduction picture with start story, credits and exit
var picID6 : int
picID6 := Pic.FileNew ("Pictures/intro.bmp")

% Black background pic (resized to 1280x720)
var picID7 : int
picID7 := Pic.FileNew ("Pictures/blackBackground.bmp")

% Bloody hand on the first page
var picID30 : int
picID30 := Pic.FileNew ("Pictures/bloodyHand.jpg")

% Credits pic1
var picID29 : int
picID29 := Pic.FileNew ("Pictures/Credits1.bmp")

% Credits pic2
var picID28 : int
picID28 := Pic.FileNew ("Pictures/Credits2.bmp")

% Title page of story
var picID1 : int
picID1 := Pic.FileNew ("Pictures/TitlePage.bmp")

% Story 1 picture
var picID2 : int
picID2 := Pic.FileNew ("Pictures/story1.bmp")

% Story 2 picture
var picID3 : int
picID3 := Pic.FileNew ("Pictures/story2.bmp")

% Story 3 picture
var picID4 : int
picID4 := Pic.FileNew ("Pictures/story3.bmp")

% Story 4 picture
var picID5 : int
picID5 := Pic.FileNew ("Pictures/story4.bmp")

% Story 5, Case 1 picture
var picID27 : int
picID27 := Pic.FileNew ("Pictures/story5_case1.bmp")

% Decide to find murderer song
var picID8 : int
picID8 := Pic.FileNew ("Pictures/decideToFindTheMurderer.bmp")

% Going to police department pic 1
var picID9 : int
picID9 := Pic.FileNew ("Pictures/policeD1.bmp")

% Going to police department pic 2
var picID10 : int
picID10 := Pic.FileNew ("Pictures/policeD2.bmp")

% The end (with "Do you want to play again?")
var picID14 : int
picID14 := Pic.FileNew ("Pictures/theEnd.bmp")

% Shadow lurking pic (on police department pic 1) resized to 250x255
var picID33 : int
picID33 := Pic.FileNew ("Pictures/shadow_lurking.jpg")

% Search for clues pic
var picID15 : int
picID15 := Pic.FileNew ("Pictures/searchForClues.bmp")

% Search for clues case pic
var picID16 : int
picID16 := Pic.FileNew ("Pictures/searchForClueCase.bmp")

% "You have been killed" pic
var picID11 : int
picID11 := Pic.FileNew ("Pictures/youHaveBeenKilled.bmp")

% "You lost" pic
var picID12 : int
picID12 := Pic.FileNew ("Pictures/youLost.bmp")

% The user has decided to ignore the note pic
var picID34 : int
picID34 := Pic.FileNew ("Pictures/ignoreStory.bmp")

% The user is asked what they want to do after ignoring the note the first time pic
var picID35 : int
picID35 := Pic.FileNew ("Pictures/ignoreCase2.bmp")

% Person in black pic (resized to 450x299)
var picID36 : int
picID36 := Pic.FileNew ("Pictures/personInBlack.jpg")

% When the user goes home and dies pic
var picID17 : int
picID17 := Pic.FileNew ("Pictures/goHomeDie.bmp")

% The user tells the police and loses pic
var picID24 : int
picID24 := Pic.FileNew ("Pictures/tellPoliceLose.bmp")

% The user has chosen to perform a DNA test pic 1
var picID25 : int
picID25 := Pic.FileNew ("Pictures/fingerprint.bmp")

% The user has chosen to perform a DNA test pic 2
var picID26 : int
picID26 := Pic.FileNew ("Pictures/fingerprint2.bmp")

% The user would like to roll a die
var picID32 : int
picID32 := Pic.FileNew ("Pictures/rollDie.bmp")

% Fingerprint on credits page
var picID37 : int
picID37 := Pic.FileNew ("Pictures/fingerprintCredit.jpg")

% Murderer on the credits page
var picID38 : int
picID38:= Pic.FileNew ("Pictures/manMurdererCredits.jpg")


%%%%%%%%%%%%%%%%%%%%%%
% All font variables %
%%%%%%%%%%%%%%%%%%%%%%


% "Welcome to my game" font
var fontID2 : int
fontID2 := Font.New ("Copperplate Gothic Bold:60")

% "Please click any key to enter" font (first page)
var fontID11 : int
fontID11 := Font.New ("Rage Italic Bold:20")

% "You would like to view the story" font
var fontID14 : int
fontID14 := Font.New ("Goudy Stout:30:Underline")

% "Presented by Saumya" screen (Credits) font
var fontID3 : int
fontID3 := Font.New ("Edwardian Script ITC:65")

% "To Catch A Murderer" screen (Credits) font
var fontID9 : int
fontID9 := Font.New ("Edwardian Script ITC:75")

% "Please enter a valid number" font
var fontID13 : int
fontID13 := Font.New ("Edwardian Script ITC:70")

% Normal font
var fontID : int
fontID := Font.New ("Algerian:45")

% Normal font2
var fontID10 : int
fontID10 := Font.New ("Bahnschrift:30:Bold")

% Font used variously in places such as "You have decided to view the story"
var fontID5 : int
fontID5 := Font.New ("Viner Hand ITC:65")

% The user has chosen to follow the man
var picID19 : int
picID19 := Pic.FileNew ("followMan.bmp")

% The user has to decide what they want to do after following the man
var picID20 : int
picID20 := Pic.FileNew ("followManCase.bmp")

% The user want to go to the mystery man's house
var picID21 : int
picID21 := Pic.FileNew ("goToHisHouse.bmp")

% The user wins after going to his house
var picID22 : int
picID22 := Pic.FileNew ("victoryHisHouse.bmp")

% The mystery man goes to jail and the user is happy
var picID23 : int
picID23 := Pic.FileNew ("victory.bmp")



%%%%%%%%%%%%%%%%%%
% Case variables %
%%%%%%%%%%%%%%%%%%


% Declare variable to replay story
var replayTrue : int := 0

% Intoduction picture with start story
var titlePageCase : string

% The user decides what to do after finding the note
var findNote : string

% The user is asked whether they want to play again
var playAgain : string

% The user can either perform a DNA test or tell the police
var searchingForCluesCase : string

% The user can either follow the man, search for clues, roll a die or go home
var findTheMurder : string

% The user has to decide what to do after following the man
var followTheManCase : string

% What the user does after ignoring note first time
var ignoring : string



%%%%%%%%%%%%%%%%%%%%%%%
% Processes for music %
%%%%%%%%%%%%%%%%%%%%%%%


% Background music that will play continuously at the back
process backgroundMusic
    loop
	Music.PlayFile ("Audio/background.wav")
	exit when done
    end loop
end backgroundMusic


% Credits music
process creditMusic
    Music.PlayFile ("Audio/creditsAudio.mp3")
end creditMusic


% Intro music for choices page (start story, exit, and credits)
process introMusic
    Music.PlayFile ("Audio/introAudio.mp3")
end introMusic


% Story 1 and 2 music
process story1_2Music
    Music.PlayFile ("Audio/story1&2.mp3")
end story1_2Music


% Story 3 and 4 music
process story3_4Music
    Music.PlayFile ("Audio/story3&4.mp3")
end story3_4Music


% Story5_Case1 music
process story5_case1Music
    Music.PlayFile ("story5_case1.mp3")
end story5_case1Music


% Finding murderer music
process findingMurdererMusic
    Music.PlayFile ("Audio/findMurderer.mp3")
end findingMurdererMusic


% Go to his house music
process goToHisHouseMusic
    Music.PlayFile ("Audio/goToHisHouse.mp3")
end goToHisHouseMusic


% Happy ending music
process happyEnding
    Music.PlayFile ("Audio/happyEnding.mp3")
end happyEnding


% DNA test music
process DNA_TestMusic
    Music.PlayFile ("Audio/DNA_Test.mp3")
end DNA_TestMusic


% The user has lost music
process loseMusic
    Music.PlayFile ("Audio/loseSadMusic.mp3")
end loseMusic


% The user has the option to play again or exit music
process playAgain_exitMusic
    Music.PlayFile ("Audio/playAgain_exitMusic.mp3")
end playAgain_exitMusic



%%%%%%%%%%%%%%%%%%
% All procedures %
%%%%%%%%%%%%%%%%%%


% This procedure takes care of greetings

proc greetings
    Pic.FileNewFrames ("Pictures/loading.gif", pics, delayTime)
    Pic.DrawFrames (pics, 0, 0, picCopy, numFrames, 50, false)
    delay (50)
    Pic.Draw (picID7, 0, 0, picCopy)
    delay (1500)
    Font.Draw ("Welcome to my game!", 175, 550, fontID2, 0)
    Font.Draw ("I hope you enjoy it!", 225, 430, fontID2, 0)
    delay (2000)
    Pic.DrawSpecial (picID30, 500, 100, picCopy, picGrowCenterToEdge, 250)
    delay (1000)
    Font.Draw ("Please click any key to continue", 840, 100, fontID11, brightred)
    Input.Pause
end greetings


% This procedure takes care of exit

proc exiting
    fork playAgain_exitMusic
    cls
    Pic.Draw (picID7, 0, 0, picCopy)
    % The "Thank you, see you soon" screen loop
    loop
	for x : 1 .. maxx - 17
	    View.Set ("offscreenonly")
	    colourback (black)
	    Font.Draw ("Thank you, see you soon!", x, 400, fontID5, 0)
	    delay (15)
	    View.Update
	    cls
	end for
	exit
    end loop
    % reset the replayTrue to exit
    replayTrue := 0
end exiting


% This procedure takes care of the credits screen

proc credits
    % Screen with "You have decided to see the credits"
    cls
    Pic.DrawSpecial (picID29, 0, 0, picCopy, picFadeIn, 1000)
    % Click to continue to "Presented.." slide or x to exit next
    Input.Pause
    % Screen with "Presented by Saumya Sharma"
    Pic.DrawSpecial (picID28, 0, 0, picCopy, picWipeLeftToRight, 1000)
    Font.Draw ("The Sharma Productions Presents", 200, 500, fontID3, white)
    delay (500)
    Pic.DrawSpecial (picID37, 20, 70, picCopy, picFadeIn, 1000)
    delay (500)
    Pic.DrawSpecial (picID38, 920, 95, picCopy, picFadeIn, 1000)
    delay (250)
    Font.Draw ("Click any key to continue", 40, 40, fontID11, white)
    Input.Pause
    cls
    % The words "To Catch A Murderer" move across the page
    loop
	for x : 1 .. maxx - 30
	    View.Set ("offscreenonly")
	    colourback (black)
	    Font.Draw ("To  Catch  A  Murderer", x, 400, fontID9, brightred)
	    delay (10)
	    View.Update
	    cls
	end for
	exit
    end loop
end credits


% Procedure to view the story ("You have decided to view the story")

proc viewStory
    cls
    delay (1000)
    Font.Draw ("You have decided to", 250, 450, fontID5, brightred)
    Font.Draw ("view the story!", 350, 300, fontID5, brightred)
    delay (3500)
end viewStory


% Procedure for TitlePage to story4

proc mainStory
    Pic.DrawSpecial (picID1, 0, 0, picCopy, picSlideTopToBottom, 1000)
    Input.Pause
    % Play music while playing story 1 and 2
    fork story1_2Music
    Pic.DrawSpecial (picID2, 0, 0, picCopy, picWipeTopToBottom, 1000)
    Input.Pause
    Pic.DrawSpecial (picID3, 0, 0, picCopy, picWipeLeftToRight, 1000)
    Input.Pause
    % Play music while playing story 3 and 4
    fork story3_4Music
    Pic.DrawSpecial (picID4, 0, 0, picCopy, picWipeRightToLeft, 1000)
    Input.Pause
    Pic.DrawSpecial (picID5, 0, 0, picCopy, picFadeIn, 1000)
    Input.Pause
end mainStory


% Procedure for finding murderer (story line)

proc findingMurderer
    Pic.DrawSpecial (picID8, 0, 0, picCopy, picGrowCentreToEdge, 1000)
    Input.Pause
    Pic.DrawSpecial (picID9, 0, 0, picCopy, picWipeUpperLeftToLowerRight, 1000)
    delay (300)
    Pic.DrawSpecial (picID33, 800, 425, picCopy, picFadeIn, 750)
    delay (250)
    Font.Draw ("Click any key to continue", 100, 75, fontID10, black)
    Input.Pause
end findingMurderer


% Procedure for searching for clues

proc searchingForClues
    Pic.DrawSpecial (picID15, 0, 0, picCopy, picGrowCentreToEdge, 1000)
    Input.Pause
end searchingForClues


% Procedure for "Ignoring the note second time"

proc ignoringNote
    fork loseMusic
    Pic.DrawSpecial (picID11, 0, 0, picCopy, picGrowCentreToEdge, 1000)
    Input.Pause
    Pic.DrawSpecial (picID12, 0, 0, picCopy, picWipeUpperLeftToLowerRight, 1000)
    Input.Pause
    Pic.DrawSpecial (picID14, 0, 0, picCopy, picWipeCenterToEdge, 1000)
end ignoringNote


% Procedure for ignoring case

proc ignoring2
    Pic.DrawSpecial (picID34, 0, 0, picCopy, picGrowCenterToEdge, 1000)
    delay (500)
    Pic.DrawSpecial (picID36, 400, 285, picCopy, picFadeIn, 500)
    Input.Pause
end ignoring2


% Procedure for going home

proc goHomeDie
    fork loseMusic
    Pic.DrawSpecial (picID17, 0, 0, picCopy, picWipeLeftToRight, 1000)
    Input.Pause
    Pic.DrawSpecial (picID12, 0, 0, picCopy, picWipeUpperLeftToLowerRight, 1000)
    Input.Pause
    Pic.DrawSpecial (picID14, 0, 0, picCopy, picWipeCenterToEdge, 1000)
end goHomeDie


% Procedure for following the man

proc followMan
    Pic.DrawSpecial (picID19, 0, 0, picCopy, picWipeLeftToRight, 1000)
    Input.Pause
end followMan


% Procedure to go to the mystery man's house

proc goToHisHouse
    Pic.DrawSpecial (picID21, 0, 0, picCopy, picGrowLeftToRight, 1000)
    Input.Pause
    Pic.DrawSpecial (picID22, 0, 0, picCopy, picWipeCenterToEdge, 1000)
    Input.Pause
    fork happyEnding
    Pic.DrawSpecial (picID23, 0, 0, picCopy, picSlideLeftToRight, 1000)
    Input.Pause
    Pic.DrawSpecial (picID14, 0, 0, picCopy, picWipeCenterToEdge, 1000)
end goToHisHouse


% Procedure to tell the police

proc tellPolice
    fork loseMusic
    Pic.DrawSpecial (picID24, 0, 0, picCopy, picGrowLeftToRight, 1000)
    Input.Pause
end tellPolice


% Procedure to perform a DNA test

proc DNA
    Pic.DrawSpecial (picID25, 0, 0, picCopy, picSlideTopToBottom, 1000)
    Input.Pause
    Pic.DrawSpecial (picID26, 0, 0, picCopy, picSlideBottomToTop, 1000)
    Input.Pause
    fork happyEnding
    Pic.DrawSpecial (picID23, 0, 0, picCopy, picSlideLeftToRight, 1000)
    Input.Pause
    Pic.DrawSpecial (picID14, 0, 0, picCopy, picSlideRightToLeft, 1000)
end DNA


% Procedure to roll a die

proc rollDie
    % Insert rollDie pic
    Pic.DrawSpecial (picID32, 0, 0, picCopy, picWipeUpperLeftToLowerRight, 1000)
    % Dice rolling gif
    Pic.FileNewFrames ("Pictures/dice rolling.gif", pics2, delayTime2)
    Pic.DrawFrames (pics2, 250, 50, picCopy, numFrames2, 50, false)
    % User will click any key to recieve their random number
    Input.Pause
    % Clear screen
    cls
    % Rolling random die number
    randint (option, 1, 3)
    % Displaying die number
    Font.Draw ("You got: " + intstr (option), 320, 420, fontID13, black)
    delay (2000)
end rollDie


% Procedure to deal with invalid numbers

proc invalidNumber
    Pic.DrawSpecial (picID7, 0, 0, picCopy, picGrowCenterToEdge, 500)
    delay (500)
    Font.Draw ("Please enter a valid number", 30, 400, fontID14, white)
    delay (2000)
    cls
end invalidNumber


% Procedure to determine whether the user wants to replay the game

proc playAgainExit
    fork playAgain_exitMusic
    get playAgain
    case playAgain of
	label "r", "R" :
	    replayTrue := 1
	label :
	    replayTrue := 0
	    exiting
    end case
end playAgainExit


%%%%%%%%%%%%%%%%%%%%%%
% Skeleton Structure %
%%%%%%%%%%%%%%%%%%%%%%

% Turn off cursor
setscreen ("nocursor")
fork backgroundMusic
greetings
loop
    % Intro music playing in the background
    fork introMusic
    % Intro picture with start story, credits, etc.
    Pic.DrawSpecial (picID6, 0, 0, picCopy, picSlideTopToBottom, 1000)
    get titlePageCase
    % Stop intro music
    case titlePageCase of
	label "1" :
	    % Start story
	    viewStory
	    mainStory
	    loop
		% story5_case1 where user has to make a decision
		Pic.DrawSpecial (picID27, 0, 0, picCopy, picGrowCentreToEdge, 1000)
		% The user outputs what they want to do after they finds the note
		get findNote
		case findNote of
		    label "2" :
			% Play findingMurder music in background
			fork findingMurdererMusic
			% Find the murderer
			findingMurderer
			loop
			    Pic.DrawSpecial (picID10, 0, 0, picCopy, picSlideBottomToTop, 1000)
			    get findTheMurder
			    case findTheMurder of
				label "1" :
				    % Follow the man
				    followMan
				    % Follow the man case
				    Pic.DrawSpecial (picID20, 0, 0, picCopy, picWipeUpperLeftToLowerRight, 1000)
				    % The user has to decide what to do after following the man
				    loop
					get followTheManCase
					case followTheManCase of
					    label "1" :
						% Go to his house music
						fork goToHisHouseMusic
						% Go to his house
						goToHisHouse
						% User can either play again or exit
						playAgainExit
						exit
					    label "2" :
						% DNA test music plays on the background
						fork DNA_TestMusic
						% DNA test
						DNA
						% User can either play again or exit
						playAgainExit
						exit
					    label "3" :
						% Leave game
						exiting
						exit
					    label :
						% Dummy proofing (invalid number)
						invalidNumber
					end case     %(the case of followTheManCase ends here)
				    end loop
				    exit
				label "2" :
				    % Search for clues
				    searchingForClues
				    loop
					Pic.DrawSpecial (picID16, 0, 0, picCopy, picFadeIn, 1000)
					get searchingForCluesCase
					case searchingForCluesCase of
					    label "1" :
						% DNA test music plays on the background
						fork DNA_TestMusic
						% DNA test
						DNA
						% User can either play again or exit
						playAgainExit
						exit
					    label "2" :
						% Tell police
						tellPolice
						% User can either play again or exit
						Pic.DrawSpecial (picID14, 0, 0, picCopy, picWipeCenterToEdge, 1000)
						playAgainExit
						exit
					    label "3" :
						% Leave game
						exiting
						exit
					    label :
						% Dummy proofing (invalid number)
						invalidNumber
					end case     % (the searchingForCluesCase case ends here)
				    end loop
				    exit
				label "3" :
				    % Go home
				    loop
					goHomeDie
					playAgainExit
					exit
				    end loop
				    exit
				label "4" :
				    % Roll a die
				    rollDie
				    case option of
					label 1 :
					    loop
						% Follow the man
						followMan
						% Follow the man case
						Pic.DrawSpecial (picID20, 0, 0, picCopy, picWipeUpperLeftToLowerRight, 1000)
						% The user has to decide what to do after following the man
						get followTheManCase
						case followTheManCase of
						    label "1" :
							% Go to his house
							playAgainExit
							exit
						    label "2" :
							% DNA test music plays on the background
							fork DNA_TestMusic
							% DNA test
							DNA
							playAgainExit
							exit
						    label "3" :
							% Leave game
							exiting
							exit
						    label :
							% Dummy proofing (invalid number)
							invalidNumber
						end case             %(the case of followTheManCase ends here)
					    end loop
					    exit
					label 2 :
					    searchingForClues
					    loop
						% Search for clues
						Pic.DrawSpecial (picID16, 0, 0, picCopy, picFadeIn, 1000)
						% User inputs their choice of what they want to do after searching for clues
						get searchingForCluesCase
						case searchingForCluesCase of
						    label "1" :
							% DNA test music plays on the background
							fork DNA_TestMusic
							% DNA test
							DNA
							playAgainExit
						    label "2" :
							% Tell police
							tellPolice
							% User can either play again or exit
							Pic.DrawSpecial (picID14, 0, 0, picCopy, picWipeCenterToEdge, 1000)
							playAgainExit
						    label "3" :
							% Leave game
							exiting
						end case             %(the case of searchingForCluesCase ends here)
					    end loop
					    exit
					label 3 :
					    % Go home (Die)
					    goHomeDie
				    end case
				    exit
				label :
				    % Dummy proofing (invalid number)
				    invalidNumber
			    end case         %(the case of findTheMurder ends here)
			end loop
			exit
		    label "1" :
			% Ignore
			ignoring2
			loop
			    Pic.DrawSpecial (picID35, 0, 0, picCopy, picWipeRightToLeft, 1000)
			    get ignoring
			    case ignoring of
				label "1" :
				    % Person ignores note again
				    ignoringNote
				    playAgainExit
				    exit
				label "2" :
				    % Find the murderer
				    findingMurderer
				    loop
					Pic.DrawSpecial (picID10, 0, 0, picCopy, picSlideBottomToTop, 1000)
					get findTheMurder
					case findTheMurder of
					    label "1" :
						% Follow the man
						followMan
						% Follow the man case
						Pic.DrawSpecial (picID20, 0, 0, picCopy, picWipeUpperLeftToLowerRight, 1000)
						% The user has to decide what to do after following the man
						loop
						    get followTheManCase
						    case followTheManCase of
							label "1" :
							    % Go to his house
							    goToHisHouse
							    playAgainExit
							    exit
							label "2" :
							    % DNA test music plays on the background
							    fork DNA_TestMusic
							    % DNA test
							    DNA
							    playAgainExit
							    exit
							label "3" :
							    % Leave game
							    exiting
							    exit
							label :
							    % Dummy proofing (invalid number)
							    invalidNumber
						    end case     %(the case of followTheManCase ends here)
						end loop
						exit
					    label "2" :
						% Search for clues
						searchingForClues
						loop
						    Pic.DrawSpecial (picID16, 0, 0, picCopy, picFadeIn, 1000)
						    get searchingForCluesCase
						    case searchingForCluesCase of
							label "1" :
							    % DNA test music plays on the background
							    fork DNA_TestMusic
							    % DNA test
							    DNA
							    playAgainExit
							    exit
							label "2" :
							    % Tell police
							    tellPolice
							    % User can either play again or exit
							    Pic.DrawSpecial (picID14, 0, 0, picCopy, picWipeCenterToEdge, 1000)
							    playAgainExit
							    exit
							label "3" :
							    % Leave game
							    exiting
							    exit
							label :
							    % Dummy proofing (invalid number)
							    invalidNumber
						    end case     %(the searchingForCluesCase case ends here)
						end loop
						exit
					    label "3" :
						% Go home and die
						loop
						    goHomeDie
						    playAgainExit
						    exit
						end loop
						exit
					    label "4" :
						% Roll a die to get a random number
						rollDie
						case option of
						    label 1 :
							loop
							    % Follow the man
							    followMan
							    % Follow the man case
							    Pic.DrawSpecial (picID20, 0, 0, picCopy, picWipeUpperLeftToLowerRight, 1000)
							    % The user has to decide what to do after following the man
							    get followTheManCase
							    case followTheManCase of
								label "1" :
								    % Go to his house
								    goToHisHouse
								    playAgainExit
								    exit
								label "2" :
								    % DNA test music plays on the background
								    fork DNA_TestMusic
								    % DNA test
								    loop
									DNA
									playAgainExit
									exit
								    end loop
								label "3" :
								    % Leave game
								    exiting
								    exit
								label :
								    % Dummy proofing (invalid number)
								    invalidNumber
							    end case         %(the case of followTheManCase ends here)
							end loop
							exit
						    label 2 :
							searchingForClues
							loop
							    % Search for clues
							    Pic.DrawSpecial (picID16, 0, 0, picCopy, picFadeIn, 1000)
							    % User inputs their choice of what they want to do after searching for clues
							    get searchingForCluesCase
							    case searchingForCluesCase of
								label "1" :
								    % DNA test music plays on the background
								    fork DNA_TestMusic
								    % DNA test
								    DNA
								    playAgainExit
								label "2" :
								    % Tell police
								    tellPolice
								    % User can either play again or exit
								    Pic.DrawSpecial (picID14, 0, 0, picCopy, picWipeCenterToEdge, 1000)
								    playAgainExit
								label "3" :
								    % Leave game
								    exiting
								label :
								    % Dummy proofing (invalid number)
								    invalidNumber
							    end case         %(the case of searchingForCluesCase ends here)
							    exit
							end loop
							exit
						    label 3 :
							% Go home (Die)
							goHomeDie
						end case
					    label :
						% Dummy proofing (invalid number)
						invalidNumber
					end case     %(the case of findTheMurder ends here)
				    end loop
				    exit
				label "3" :
				    % Leave game
				    exiting
				    exit
				label :
				    % Dummy proofing (invalid number)
				    invalidNumber
			    end case     % (the case of findNote ends here)
			end loop
			exit
		    label "3" :
			% Leave game
			exiting
			exit
		    label :
			% Dummy proofing (invalid number)
			invalidNumber
		end case         %(the case of findNote ends here)
	    end loop
	    exit when replayTrue = 0
	label "2" :
	    fork creditMusic
	    % Credits
	    credits
	    exit
	label "3" :
	    % Leave game
	    exiting
	    exit
	label :
	    % Dummy proofing (invalid number)
	    invalidNumber
    end case         % (the case of titlePageCase ends here)
end loop           % THE OUTMOST LOOP ENDS HERE


% Background music stops
done := true
% Stop playing music
Music.PlayFileStop

% Clears everything after the game is finished (the window closes)
Window.Close (window)
