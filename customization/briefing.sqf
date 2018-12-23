#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("Task Organization:")
			//Understand that the Unit Organization is not part of the OPORD. The OPORD starts with point I. Situation. The tab Unit Organization explains the unit mentioned in the OPORD in terms to its next vertical and horizontal elements.
			<br/><font color='#FFA500' size='16' face='PuristaBold'>Second Company - 220:</font>
			// make sure to present horizontal and vertical elements to support the player in realizing his own situation within the unit.
			<br/>2nd Infantry Company HQ - <marker name='220'>220</marker>
			<br/>1st Mechanized Infantry Platoon - <marker name='221'>221</marker> (You)
			<br/>2nd Mechaznied Infantry Platoon - <marker name='224'>224</marker>
			<br/>3rd Mechanized Infantry Platoon - <marker name='227'>227</marker>
			<br/>
			<br/><font color='#FFA500' size='16' face='PuristaBold'>Compositions and Locations:</font>
			//Provide clear information about the location at minimum, any composition differing from the default unit organization should be mentioned here.
			<br/>Second Company HQ (220) retreating to Korov.
			<br/>221 occupying battle position IGOR. (You)
			<br/>224 occupying battle position VADYM.
			<br/>227 occupying battle position KATE.
			<br/>
			<br/><font color='#FFA500' size='16' face='PuristaBold'>Attached or Organic Forces:</font>
			// make sure to present attachments with their actual origin, type and callsign.
			<br/> Company Forward Observer - 220F
			<br/>
			<br/><font color='#FFA500' size='16' face='PuristaBold'>Adjacent Units:</font>
			//Explain from mission maker POV which other horizontal units additionally to yours are present in the area.
			<br/>1st Mechanized Infantry Company at battle position OLEG.
			<br/>2nd Mechanized Infantry Company at battle position BORRIS.
			<br/>
			ENDTAB;

			NEWTAB("I. Situation:")
			//Here you provide a detailed report of recent important events connected to your OPORD (so your Element, not the mission COs element only).
			<br/>Yesterday evening 220 Company was attacked from the north by at least a Company of Mechanized Sepratists with indirect support. 221 Platoon were able to destroy the enemy platoon that attacked the trench directly the rest of the sepratists fled.
			Unfortunately our Company commander was hit as well as <marker name='221'>221</marker>(You) took several cassuailites and two of our BMPs were knocked out of action.The Company Commander is being evacuated to the south to Kovrov but has attached his FO to 221 platoon.
      <br/>
			<br/>Today our two sister platoons have been dealing with harrsing fires emerging to their north, the Company has been ordered to be prepared for another assault and each PLT to be prepared for a Counter-Assault if ordered.

			<br/><font color='#FFA500' size='16' face='PuristaBold'>a. Areas of Interest:</font>
			//If you have any areas of interest defined name them, their locations and what makes them interesting.
			<br/>Currently Battle Positions VADYM, IGOR(You), KATE, OLEG and BORRIS must be held at all cost to keep 2nd Battalion defensive perimeter unbreached.
			<br/>
			<br/><font color='#FFA500' size='16' face='PuristaBold'>b. Area of Operation:</font>
			//Now all preliminary info about the actual AO is collected and given to the mission CO.
			<br/>
			<br/><font color='#FFA500' size='15'>1. Terrain:</font>
			//If in line with the equipment, story and era your mission plays in, provide image intel of the AO
			<br/>Two series of hills that run from south to north dominate the AO, they are split by a valley along which ASR OLGA runs through.
			<br/>      (a) Enemy Avenues of Approach. The enemy will most likely utilise the hills to the east and west to conceal their approach. As they have knowledge of our mine obstacles due to their previous failed attack.
			<br/>
			<br/><font color='#FFA500' size='15'>2. Weather:</font>
			//Provide the current weather situation as you have set in the mission editor attribute options in ArmA3 Eden Editor.
			<br/><font size='14'>CURRENT:</font>
			<br/>Wind: Light Winds from the SE
			<br/>Rain: None
			<br/>Sky: Overcast
			<br/>Fog: Light Fog
			<br/>
			<br/><font size='14'>LIGHT:</font>
			//As per mission attributes, set the following 3 intel parts.
			<br/>All times in local
			<br/>First light: 05:52:00
			<br/>Last Light: 17:40:00
			<br/>Time Now: 17:00:00
			<br/>
			<br/><font size='14'>FORECAST:</font>
			//Make sure to inform the CO if the weather is expected to change over the pass of the operation or if no change is expected.
			<br/>Wind: Light winds from the South
			<br/>Rain: Light Rain
			<br/><font size='14'>MOONSTATE:</font>
			//Provide information about the state of the moon (half/full/...) and its light intensity based upon state, weather and cloud coverage.
			<br/>Full Moon
			<br/>
			<br/><font size='14'>VISIBILITY:</font>
			//Sandstorms, fog or any condition limiting the view range should be given here. Define a value(!), for example: 'Visibility is decreased by fog; view limited to approximately 100m.'
			<br/>Visibility is reduced by fog; view limited to approximately 2000m.
			<br/>
			<br/><font color='#FFA500' size='16' face='PuristaBold'>c. Enemy:</font>
			//If possible provide image intel of the enemy factions/elements loadout or how an individual might dress.
			<br/>
			<br/><font color='#FFA500' size='15'>1. Disposition, Composition and Strength:</font>
			<br/><font size='14'>a. DISPOSITION:</font>
			//What exactly do you currently know about the enemy in the AO. All known Intel is material for Disposition and is only found here.
			//If you reference new Intel on another point in the OPORD that is not already mentioned in Disposition or Composition, you made a mistake.
			//Explain all Intel in greatest detail. This is of crucial importance.
			<br/>Our forward scouts have reported a platoon of Sepratists assembling to our North. They have been assembled for the past 4 hours, we assume they are waiting for their sister platoon who has been bogged down by the wet conditions up North.
			<br/>
			<br/><font size='14'>b. COMPOSITION:</font>
			//What organic assets for support and reinforcement are available to the enemy? This scales down to the level of mentioning single weapon systems individual soldiers will fight.
			<br/>At this time we have observed 42 men assembled with accompanying BTRs, it is unknown to us the size or type of the enemy platoon which is bogged down to the north. They are armed with eastern block weaponry like AK47s, AKMs, RPG-7s, PKMs and RPKs. From previous engagements and reports by our adjacent elements they seem to only operate BTR-80s and BRDMs.
			<br/>
			<br/><font size='14'>c. STRENGTH:</font>
			//Describe how the quantity of enemies at and around the AO will effect the mission COs unit upon time of engagement.
			<br/>We expect the Platoon to the north to be reinforced soon by their sister Platoon.
			<br/>
			<br/><font color='#FFA500' size='15'>2. Capabilities:</font>
			//Explain the enemies possible actions, include significant capabilities even if they seem unlikely. Any significant weapons systems and how they might be employed. Are there specific vulerabilities of the enemy we can exploit?
			<br/><font size='14'>a. MANEUVER:</font>
			<br/>The enemy is Mechanized and is expected to utilise his vehicles. The enemy will use his speed to quickly attack the flanks of the trench and try to bypass our enagement areas from where he will mount an assault.
			<br/>
			<br/><font size='14'>b. FIRE SUPPORT:</font>
			<br/>We expect the Sepratists to utilise mortars inconjucton with their attacks.
			<br/>
			<br/><font size='14'>c. INTELLIGENCE:</font>
			<br/>The enemy has superior knowledge about the terrain and the positions of our trenches in the AO.
			<br/>
			<br/><font size='14'>d. MOBILITY:</font>
			<br/>The enemy manuverbility might be hindered due to forests on the flanks. No other hindrances.
			<br/>
			<br/><font color='#FFA500' size='16' face='PuristaBold'>d. Friendly Forces:</font>
			<br/>Reduced Ukranian Mechanized Platoon:
			<br/> 3x Infantry Squads
			<br/> 1x BMP-2
			<br/> 1x AGS-30
			<br/><font color='#FFA500' size='15'>1. Higher HQ Mission and Intent:</font>
			//This part includes the information the mission maker received from his superior. It sates the Higher HQs mission intent and concept. Keep this short.
			<br/><font size='14'>a. HIGHER HQ MISSION INTENT:</font>
			<br/>Battalion has ordered all Companies to hold their BPs.
			<br/>

			ENDTAB;

			NEWTAB("II. Mission:")
			<br/><font color='#FFA500' size='16' face='PuristaBold'>Mission Intent:</font>
			//This now is your (the mission makers) view onto the mission you made. How do you want the mission CO to accomplish the mission, what is he to accomplish and what are the states.
			//!!!IMPORTANT: If the mission is designed to run multiple units below 'you' their missions and objectives belong in here as well. You will have to adjust II.Mission and III.Execution accordingly.
			<br/> 221 Platoon is tasked with defending and holding BP IGOR.
			<br/><font color='#FFA500' size='16' face='PuristaBold'>Objectives:</font>
			//Define specific Objectives or positions on which your want the mission CO to execute specific tasks.
			//Do also define the end state of the operation.
			<br/> - Establish defensive positions around the trench system.
			<br/> - Establish a forward element to determine enemy main attack axis.
			<br/> - If needed prepare a plan to counter attack the enemy.
			ENDTAB;

			NEWTAB("III. Execution:")
			<br/> As Per CO
			<br/>
			ENDTAB;

			NEWTAB("IV. Service Support:")
			<br/><font color='#FFA500' size='16' face='PuristaBold'>a. General Concept:</font>
			<br/>Resupply is available at 3rd squads BMP as well as Indirect shelters at the trenches.
			<br/>
			<br/><font color='#FFA500' size='16' face='PuristaBold'>b. Material and Services:</font>
			<br/><font color='#FFA500' size='15'>1. Supply:</font>
			<br/>a. Class I: Construction
			<br/> - <marker name='Trench A'>Trench A</marker> has been fully constructed with two Indirect Bunkers
			<br/> - <marker name='Trench B'>Trench B</marker> has been partially constructed but provides two AGS positions providing lines of sight towards the flanks of Trench A
			<br/> - <marker name='BMP Rampart A'>BMP Rampart A</marker> has been fully contructed.
			<br/> - <marker name='BMP Rampart B'>BMP Rampart B</marker> has been fully constructed.
			<br/>b. Class II: Ammunition
			<br/> Resupply via BMP or Crates in Indirect Bunkers.
			<br/> Molotok 551 (155mm):
			<br/> 14 HE
			<br/> 3 ICM
			<br/> 8 Smoke
			<br/> 40 ILLUM
			<br/>d. Class III: Medical equipment
			<br/> Crates in Indirect Bunkers.
			<br/><font color='#FFA500' size='15'>2. Transportation:</font>
			<br/>1x UAZ


			ENDTAB;

			NEWTAB("V. Command & Signal:")
			<br/><font color='#FFA500' size='16' face='PuristaBold'>a. Command:</font>
			<br/><font color='#FFA500' size='15'>1. Succession of Command</font>
			<br/>221, 221, 222, 223

			<br/><font color='#FFA500' size='16' face='PuristaBold'>b. Signal:</font>
			<br/><font color='#FFA500' size='15'>1. Signal Operating Instructions Index in effect:</font>
			<br/> Callsigns as per Task Organization!
			<br/> - Sumarised for 221 PLT -
			<br/><font size='14'>Short Range Radio Nets:</font>

			<br/>1st Platoon (221):
			<br/> SR 6 Block 1 - 221 (HQ)
			<br/> SR 1 Block 1 - 221 (1st Squad)
			<br/> SR 2 Block 1 - 222 (2nd Squad)
			<br/> SR 3 Block 1 - 223 (3rd Squad)

			<br/>Attachments:
			<br/> SR 6 Block 1 - 220F (Company Forward Observer)
			<br/>
			<br/><font size='14'>Long Range Radio Nets:</font>
			<br/>
			<br/>2nd Company (220):
			<br/> LR 1 - 221 PLT NET
			<br/> LR 2 - 224 PLT NET
			<br/> LR 3 - 227 PLT NET
			<br/> LR 4 - 220 COY NET
			<br/> LR 5 - FIRES NET
			<br/> LR 6 - CAS NET
			<br/>Attachments:
			<br/> LR 5 - Molotok 551
			<br/>
			<br/><font color='#FFA500' size='15'>2. Challenge and Password:</font>
			<br/>C: Ukranian P: Shield
			<br/>
			<br/><font color='#FFA500' size='15'>3. Number Combination:</font>
			<br/>12
			<br/>
			<br/><font color='#FFA500' size='15'>4. Running Password:</font>
			<br/>SLUT
			<br/>
			<br/><font color='#FFA500' size='15'>5. Recognition Signals:</font>
			<br/>Red/Orange Smoke = enemy position (applied towards enemy units)
			<br/>White Smoke = concealment
			<br/>Green Smoke = friendly position (applied towards friendly units)
			<br/>Yellow Smoke = Urgent Medical (applied towards friendly units)
			<br/>Blue Smoke = Broken Comms/COC (applied towards friendly units)
			<br/>
			ENDTAB;

	    }; //End of west case

	}; //End of switch

			NEWTAB("VI. Mission notes:") //This is shown for everyone
			<br/><font color='#FFA500' size='15'>END CONDITION</font>
			<br/>
			<br/><font size='14'>Sepratist Forces(OPFOR) VICTORY:</font>
			<br/>- 70 Percent BLUFOR casualties and Trenches Siezed.
			<br/>- 85 Percent BLUFOR casualties.
			<br/>
			<br/><font size='14'>Ukranian Armed Forces(BLUFOR) VICTORY:</font>
			<br/>- 85 Percent OPFOR casualties
			<br/>
			<br/><font color='#FFA500' size='15'>USE OF ENEMY VEHICLE ASSETS</font>
			<br/>Vehicles can be manned and operated for tactical advantage with permission of your CO.
			<br/>
			<br/><font color='#FFA500' size='15'>CREDITS</font>
			<br/>
			<br/> Olsen Framework.
			<br/>
			<br/> Briefing Layout Source: Perfk
			<br/> Altered by Pax
			<br/>
			<br/>  <font color='#FFA500' size='15'>Mission by:</font>
			<br/> Blue and Gkenny!
			<br/>
			ENDTAB;

			NEWTAB("Game Mastering") //This is shown for everyone
			<br/> This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
			<br/>
			ENDTAB;

	DISPLAYBRIEFING();
