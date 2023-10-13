{100}{}{You see: sheriff McKarty.}
{101}{}{He's looking right back at you.}
#start
{102}{}{Hello there, stranger. What can sheriff McKarty do for you?}
{103}{}{Tell me something about this town.}
{104}{}{Nothing at the moment.}
#dude talked with Mike
{105}{}{I've heard that you're looking for someone to do a job. That fella Mike told me.}
#this town
{106}{}{This is a small town. Not many citizens stayed here after the war, so it's smaller and easier to supervise.
 But the real trouble comes with those gangs and prison patrols. Bandits attack any small city with no defense walls.
 Locals are scared but...}
{107}{}{But...?} #to 175
{108}{}{Thanks for your time. I'll be back later.}
# answer talked_to_mike_job_2 = 1
{109}{}{I'm looking for someone who knows his way with guns. Here's what's going on: Over a month ago we were
 attacked by a group of bandits. After nearly five days, we managed to push them back and they were forced to retreat.
 Two of our fellow citizens were killed during the attack. This has to stop. Unfortunately, the scout, Drake, who
 followed the group to locate their base didn't report back... That's where I need your help.}
{110}{}{How exactly can I help?} #to 180
{111}{}{I'll talk to you later...}
#dude job accepted
{112}{}{Alright. Here's something that might help you. [Hands you a gun.] I got some ammo stored in those lockers
 next door, just go in and take what you need. Remember, I'll be happy only if you bring back Drake and I've seen
 some proof that they are all dead. Now go and bring me the good news.}
#dude return
{113}{}{Are you going to take the job?}
{114}{}{Yes, I'm ready.}
{115}{}{I'll be back when I'm ready.}
#dude return, job accepted
{116}{}{Hey, you're back. So, did you find their base, any news?}
{117}{}{I haven't done the task yet.}
#dude job done
{118}{}{I killed every last one of them. And here's the proof. [You hand him the tags.] Drake was... killed. I'm sorry.}
#answer, dude job done
{119}{}{Thanks, may the sacrifice of one good man be the last of this war. I hope so... Now we can breathe a little
 easier. You proved yourself to be a protector of this town. You have my thanks and also the thanks of the whole
 community.}
{120}{}{I'll be going now. Take care, sir.}
#float messages after first job is done
{121}{}{Don't be a stranger, I may have another job for you later.}
{122}{}{The best thing is that we prepare for the future.}
{123}{}{It's about time we build those walls.}
{124}{}{Good luck with your travels.}
#warning
{125}{}{Hey you! Leave that door alone!}
#second mission
{126}{}{Good to see you again. We may have won the last battle, but it was just one step. Something has come up and
 it is time to act again. There are few people I can trust, but you are one of them. I have a mission for you. Do you want
 to hear about it?}
#
{127}{}{Yes, tell me...}
{128}{}{Not right now.}
# yes tell me
{129}{}{OK, here's what I know. Yesterday a resident from Old Hotel came to visit me. He claimed that their town is
 under attack by raiders and that they suffered great losses. He asked for our help because there's barely anyone left to
 defend the town, or so he says. Personally, I think these "raiders" are the remnants of the "Dogs" retaliating against
 helpless people, but still...} #to 183
#unused; replaced by 183ff...
{130}{}{I'm in.}
{131}{}{I'll need a little time to prepare for this.}
#dude - prepare for this after 186... 134...
{132}{}{Have you decided? Are you going to take the mission?}
{133}{}{Yep, go on.}
{134}{}{Not just yet.}
# Yep, I'm in, after 185... 133...
{135}{}{You'll have to visit Old Hotel and find out what is going on there. Let me show you the location. [Shows you
 on the map.] One of their leaders should be there. His name is Mirx, second in command and our top wanted murderer.
 Somehow he managed to escape during our last operation. Your goal is to find him. If you do, we'll know. Just distract
 him long enough while me and my man sneak in. And be careful, prison patrols are looking for him too. My priority is
 having you in one piece so wait for backup if things get messy.}
{136}{}{I'll be on my way then.}
#
{137}{}{I'll be there.}
#
{138}{}{Find out what's going on there. You must hurry because more lives will be lost if we don't put an end to those
 gangs!}
{139}{}{I'm going.}
#
{140}{}{Anything unusual going on here?}
#
{141}{}{On the contrary, everything seems to be in order. Is there something I should know?}
{142}{}{I've heard... a rumor, about a ghost going around the church at night.}
#
{143}{}{I heard it, too. As my job is to look into such reports, I did run a small investigation. Turned out as I
 thought, nothing more than a rumor. I even checked several times to make sure, but only succeeded in frightening the
 locals by sneaking around in the bushes... Hahaha! That was a good one.}
{144}{}{Thanks, sheriff.}
#
{145}{}{No problem, stranger. The locals are very superstitious and often exaggerating in their stories. Anyway, I'm
 sure you had time to meet most of them. I have to go back to work. See you some other time.}
{146}{}{Sure thing.}
#
{147}{}{Nothing, sorry I disturbed you.}
#
{148}{}{What can you tell me about those mantis raids?}
#
{149}{}{Little to tell, just walk around town and you'll see as many as you like. It seems they don't fear humans
 anymore, which is worrying. I tried to find their lair, but the demands of my office keep me from long bug hunts. Still,
 their numbers keep rising and with it reports of attacks on folks and their cattle for food. That's on top of eatin' our
 crops now... Worst nightmare since those rats in the mine.}
{150}{}{That's terrible. Can I help?}
#
{151}{}{Of course, any help would be welcome. Try searching on the west side of town, most of the mantis raids have
 been reported there.}
{152}{}{I'll see what I can do.}
#after 103...
{153}{}{Have you seen any escaped prisoners in the area?}
#dude wearing cloak...
{154}{}{I might, but why should I tell you!?}
{155}{}{If you don't want to mess with your precious way of life, you'd better cooperate.}
{156}{}{Because they wouldn't be as nice as I am. It's in your own interest.}
{157}{}{I thought you could be reasonable, guess I was wrong.}
#don't have cloak...
{158}{}{Personally, I didn't notice anything unusual but some of the locals reported a group of people going around the
 town at night. One of my men managed to stay hidden and got very close, enough to hear they were running from the
 prison patrol...}
{159}{}{Anything else?}
{160}{}{Thanks, sheriff.}
#else...
{161}{}{Unfortunately that's all the information he had. Visibility in the forest is usually very low during nighttime,
 so he couldn't track them. Besides, we have to keep an eye open for bandits... They are always out there. If those
 prisoners aren't already gunned down by one of the prison patrols, the raiders will get them. One has to be very
 lucky to survive through all that.}
{162}{}{Maybe they got lucky because you let them go in the first place.}
{163}{}{Know any place they could hide?}
{164}{}{I guess, thanks for you time.}
#maybe...
{165}{}{Interesting thought. But you know what? I don't give a damn about what you think! And maybe YOU are the
 one who got lucky because I will be kind and ask you to leave, right now!}
{166}{}{Uh... I'm going.}
{167}{}{I'm working for the prison manager, so you tell me what you know, now!}
{168}{}{Why, we just have started some serious talking here!}
#place to hide...
{169}{}{Hmm... I can't say I know of any good places to hide around here. Nor is it safe to find shelter in nearby caves
 or old mines, especially when you can get trapped inside, you know, landslides are very common in this area. But once
 again, they surely are already dead as we speak.}
{170}{}{Maybe, thanks sheriff.}
#working with prison...
{171}{}{Holy crap... How did you get here so fast! Guards!}
{172}{}{I knew you'd say that!}
#place to hide... dude did dogs gang job...
{173}{}{Hmm... I can't say I know of any good places to hide around here. But since you helped us, I owe you at least
 that much. So if there was any safe place to go, it would be down to the south-east... You'll come across a small
 farmer community. Well, with the current raiders situation there are simply not many safe places to go, so be careful.
 That's the best I can do for you right now...}
{174}{}{Thanks sheriff, that's all I needed to know.}
#107 but...
{175}{}{[He smiles.] We managed to arm ourselves, so any group of thugs, raiders or bandits will be digging their own
 graves! As for those prison patrols... Well, they are a different story. We are no match for their laser weapons so our
 only hope is to build better defenses around town, that will keep us safe for a while. At the moment, we have the
 strength to fight back. Times are hard, but we will prevail!}
{176}{}{Nice speech. Is there anything to do here, jobs maybe...}
{177}{}{Thanks for your time. I'll be back later.}
#jobs maybe...
{178}{}{Sorry stranger, I got nothing for you right now. Come back later.}
{179}{}{Sure thing, sheriff.}
#110 how to help...
{180}{}{Well, I've heard from a reliable source that Drake is kept as a prisoner. We couldn't find the exact location
 of their base, because of the hard mountain terrain, but we suspect it's in this area. [Marks the area on your map.] I want
 him back, whatever the cost may be. If you can set him free, I will be in your debt, stranger. So, can you take this
 mission?}
{181}{}{Yes, sir. I'll be glad to help.} #to 112
{182}{}{I have to prepare first.}
#after 129, still...
{183}{}{Still...?}
{184}{}{... it could be a trap but I can't be sure until somebody confirms it. Me and my men are too well known in
 these parts so... That's the kind of mission you'll have to do. This is the best chance we have. Are you going to take it?}
{185}{}{I'm in.} #to 135
{186}{}{I'll need some time to prepare for this.}
#McKarty dead
{187}{}{I've got no time for chitchat. Sheriff McKarty died on duty and there is an awful lot to organize. [Looks
 around.] Damn, being appointed at a time like this. [Looks at you.] Anything the matter?}
{188}{}{I'll leave you to it.}
#look at, McKarty dead
{189}{}{You see: the new Sheriff of Miners Town.}
#
{190}{}{You wiped out Marcus' gang. You gain 1500 exp. points.}
{191}{}{[Chance: }
{192}{}{You have failed to use your steal skill.}
