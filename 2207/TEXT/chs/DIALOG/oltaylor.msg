##############################
#Location: "Olympus"
#Name: Taylor
#Short Description: A budding scientist developing turret and armor modifications
#Date of creation: 24.08.2015
##############################
#For the game "Olympus 2207"
#Artem "Rainman" Samoilov
##############################
#
#CRITTER DESCRIPTION
#
# before meeting
### {1}{}{You see a sturdy mechanic with burning eyes.}
{1}{}{你看到一个强壮的机修工，眼睛火辣辣的。}
### {2}{}{His clothes are dotted with an infinite number of pockets and fasteners for tools, some of them have drawings and microchips sticking out. In his hand he holds the soldering iron.}
{2}{}{他的衣服上点缀着无数的口袋和工具紧固件，其中一些口袋和紧固件上还伸出了图纸和微芯片。他手里拿着烙铁。}
#
# after meeting
### {3}{}{You see Taylor.}
{3}{}{你看到泰勒了。}
### {4}{}{His clothes are dotted with an infinite number of pockets and fasteners for tools, some of them have drawings and microchips sticking out. In his hand he holds the soldering iron.}
{4}{}{他的衣服上点缀着无数的口袋和工具紧固件，其中一些口袋和紧固件上还伸出了图纸和微芯片。他手里拿着烙铁。}
### {5}{}{Come back in a couple of days when I'll finish analyzing the results.}
{5}{}{过几天再来，我会分析完结果。}
### {6}{}{It is too early to draw conclusions, further research is needed.}
{6}{}{现在下结论还为时过早，还需要进一步的研究。}
### {7}{}{The field test results are worse than I expected...}
{7}{}{现场测试结果比我预期的要糟糕。。。}
### {8}{}{The battery is ineffective. Looks like I had calculations wrong somewhere.}
{8}{}{电池无效。看起来我在某个地方计算错了。}
#
#HERE BEGINS A DIALOGUE
#
#Node001
### {10}{}{[this technician is wearing a neat uniform, fully covered with a good hundred pockets and holders, with various pieces of mechanisms, drawings, and tools sticking out. The patch on his chest says "Taylor".] Hello there, newbie! Did you happen to come by my request?}
{10}{}{[这位技术人员穿着整洁的制服，全身都是一百个口袋和支架，上面伸出各种各样的机构、图纸和工具。他胸前的补丁上写着“泰勒”。]你好，新手！你是应我的要求来的吗？}
### {11}{002}{Yes, exactly that.}
{11}{002}{是的，正是这样。}
### {12}{003}{Not at all, but I am willing to help in after-hours for some reward.}
{12}{003}{一点也不，但为了一些奖励，我愿意在下班后帮忙。}
### {13}{999}{No. Frankly speaking, I am in no mood for helping. }
{13}{999}{没有。坦率地说，我没有心情帮忙。}

#Node002
### {20}{}{Great, I thought the captain had it declined. "It's too risky and not worth the effort." Ugh. He understands nothing in matters of sword and shield...}
{20}{}{太好了，我以为船长拒绝了。“这太冒险了，不值得付出努力。”啊。他对剑和盾牌一无所知。。。}
### {21}{004}{"Sword and Shield"?}
{21}{004}{“剑与盾”？}
### {22}{005}{So much for starters. What do you need?}
{22}{005}{对于初学者来说就这么多了。你需要什么？}

#Node003
### {30}{}{Oh. Fine, it's not bad either way. The captain provides no help here. "It's too risky and not worth the effort." Ugh. He understands nothing in matters of sword and shield...}
{30}{}{哦好吧，不管怎样都不错。船长在这里不提供任何帮助。“这太冒险了，不值得付出努力。”啊。他对剑和盾牌一无所知。。。}
### {31}{004}{"Sword and Shield"?}
{31}{004}{“剑与盾”？}
### {32}{005}{So much to start with. What do you need?}
{32}{005}{一开始就有这么多。你需要什么？}

#Node004
### {40}{}{Well yeah, I'm here to supervise the modernization of security turrets and that chunks of metal you wear. The captain calls it armor, but these are dresses in comparison to what we can actually make.}
{40}{}{嗯，是的，我来这里是为了监督安全炮塔和你佩戴的大块金属的现代化。船长称之为盔甲，但与我们实际能做的相比，这些都是连衣裙。}
### {41}{005}{Can make? There is a catch, isn't it?}
{41}{005}{可以制作吗？有一个陷阱，不是吗？}
### {42}{005}{This, as I understand it, is related to my application. What do you need me to do?}
{42}{005}{据我所知，这与我的申请有关。你需要我做什么？}

#Node005
### {50}{}{Well, this is where we have some pitfalls.}
{50}{}{好吧，这就是我们有一些陷阱的地方。}
### {51}{006}{What the hell is a pitfall?}
{51}{006}{陷阱到底是什么？}

#Node006
### {60}{}{A catch, in this case. }
{60}{}{在这种情况下是一个陷阱。}
### {61}{007}{Oh...}
{61}{007}{哦}

#Node007
### {70}{}{Let me show you something...}
{70}{}{让我给你看看。。。}
### {71}{008}{[continue]}
{71}{008}{[持续]}

#Node008
### {80}{}{[he leads you to the table with a massive shapeless pile on it, covered with a burlap sack. He throws the cover back and you see the suit of combat armor in a very, very bad condition. It has a lot of holes, most of them made by bullets, while the bigger ones are of undetermined origin. It also bears traces of explosion damage, its charred helmet is covered with soot and a number of dents from shrapnel] Beauty, isn't it? New advanced Lumenier armor. Judging by what I know, this is an upgrade of the AS-2000 version. If you fix it properly, it will be much more efficient than our Defender armor!}
{80}{}{[他把你带到桌子前，桌子上有一大堆不成形的东西，上面盖着一个粗麻布袋。他把盖子扔回去，你会看到这套战斗盔甲的状况非常非常糟糕。它有很多洞，大部分是子弹打成的，而更大的洞来源不明。它还留有爆炸损坏的痕迹，烧焦的头盔上布满了烟灰和一些凹痕美丽，不是吗？新型先进的卢梅尼尔装甲。据我所知，这是AS-2000版本的升级。如果你修复得当，它将比我们的防御者盔甲更有效率！}
### {81}{009}{For now, it looks like a pile of scrap metal.}
{81}{009}{就目前而言，它看起来像一堆废金属。}
### {84}{008}{Well, yeah, it looks promising.}
{84}{008}{嗯，是的，看起来很有希望。}

#Node008
### {82}{}{[he laughs] Come on, it's just a pile of scrap metal. For now. But I know how to make it ready for the field testing. And this is where I need you.}
{82}{}{（他笑了）来吧，这只是一堆废金属。就目前而言。但我知道如何为现场测试做好准备。这就是我需要你的地方。}
### {83}{011}{Tell me more.}
{83}{011}{告诉我更多。}

#Node009
### {90}{}{You are completely right. But I know how to make it ready for the field testing. And this is where I need you.}
{90}{}{你完全是对的。但我知道如何为现场测试做好准备。这就是我需要你的地方。}
### {91}{011}{Tell me more.}
{91}{011}{告诉我更多。}

#Node010
### {100}{}{Hey, it's you again. Don't you still want to help someone who's doing the job of increasing your chances of survival?}
{100}{}{嘿，又是你。你难道还不想帮助一个正在增加你生存机会的人吗？}
### {101}{999}{No, I was just passing by.}
{101}{999}{没有，我只是路过。}
### {102}{007}{Come on, tell me about what you got here.}
{102}{007}{来吧，告诉我你在这里得到了什么。}
### {103}{}{Hey, nice to see you! Well, how are you search for servo-actuator?}
{103}{}{嘿，很高兴见到你！好吧，你是如何搜索伺服执行器的？}
### {104}{999}{Was just about to go look for it.}
{104}{999}{我正要去找它。}
### {105}{013}{Is this what you are looking for? [show the piece]}
{105}{013}{这就是你要找的吗？[展示作品]}


#Node011
### {110}{}{According to my applications, I collected almost everything needed. Some of the parts, unfortunately, had to be taken from the Defender suit, but I already came to terms with this. And the armor is made more than eighty percent of the original parts, which is already a major breakthrough. The catch is that during the last raid we lost too many people. The captain no longer authorizes operations in the Lumenier patrol zone. And I lack only one part - their new servo-actuator. [Taylor takes the damaged part off the table] Just like this one, but whole, not damaged. There's nothing that can replace such a thing. I need exactly that. If you can get it, you're in for a very generous gift.}
{110}{}{根据我的申请，我几乎收集了所有需要的东西。不幸的是，有些零件不得不取自路虎卫士的西装，但我已经接受了这一点。装甲是由80%以上的原始零件制成的，这已经是一个重大突破。问题是在上次突袭中我们损失了太多人。船长不再授权在卢梅尼尔巡逻区开展行动。我只缺一个零件——他们的新伺服执行器。[泰勒把损坏的部分从桌子上拿下来]就像这个，但是完整的，没有损坏。没有什么能取代这样的东西。我正需要这个。如果你能得到它，你将得到一份非常慷慨的礼物。}
### {111}{012}{Okay, I will do my best, but no promises. A job looks complicated.}
{111}{012}{好吧，我会尽我所能，但没有承诺。工作看起来很复杂。}
### {112}{012}{Okay, I will do this.}
{112}{012}{好的，我会这么做的。}

#Node012
### {120}{}{Good! The only way to get a servo-actuator is to take it off the upgraded Lumenier armor. Of course, I understand that the risk is pretty great, and I advise you to be extremely careful! This suit is very good, so do not be surprised if it is worn only by the best Lumenier fighters.}
{120}{}{好的获得伺服致动器的唯一方法是将其从升级后的Lumenier装甲上取下。当然，我知道风险很大，我建议你要格外小心！这套衣服非常好，所以如果只有最好的卢梅尼尔战士才能穿，也不要感到惊讶。}
### {121}{999}{Well then, I will be back with a spare part.}
{121}{999}{那么，我会带着一个备件回来的。}

#Node013
### {130}{}{Perfect! That's the way to do it! Soon our fighters will become even more tenacious, all thanks to you! Perhaps I should mention this in the report. However, first I need to assemble a prototype model and conduct field tests. Anyway, it's time for a reward, right? Wait for a little.}
{130}{}{完美的这就是办法！很快，我们的战士将变得更加顽强，这一切都要感谢你们！也许我应该在报告中提到这一点。然而，首先我需要组装一个原型模型并进行现场测试。不管怎样，是时候奖励了，对吧？等一下。}
### {131}{014}{[wait]}
{131}{014}{[等待]}

#Node014
### {140}{}{[Taylor returned a little more than an hour later, he is smiling from ear to ear] Damn, this is amazing! Perhaps I can finally stop puzzling over armors and switch back to the turrets. As for your reward... Let's go.}
{140}{}{[泰勒一个多小时后回来了，他笑得合不拢嘴]该死，这太神奇了！也许我终于可以停止对盔甲的困惑，转而使用炮塔了。至于你的奖励。。。我们走吧。}
### {141}{015}{[follow Taylor]}
{141}{015}{[跟随泰勒]}

#Node015
### {150}{}{[Taylor triumphantly leads you to the table where pieces of armor were previously laid out. Now the suit is fully assembled - and it looks really awesome] Take it, my friend! I installed a combat effectiveness analysis module into it. Wear this for a couple of weeks and come back. Or earlier, if you often find yourself in a mess. I will measure the performance. Just be smart and remember: DO NOT WEAR THIS SUIT INSIDE THE OLYMPUS TOWER! You know that our soldier boys shoot first and ask questions later. [the engineer pats you on the shoulder] Enjoy. I need to rest. }
{150}{}{[泰勒胜利地把你带到之前摆放盔甲的桌子旁。现在这套衣服已经组装好了，看起来真的很棒]拿去吧，我的朋友！我在里面安装了一个战斗力分析模块。戴上几个星期就回来了。或者更早，如果你经常发现自己一团糟。我会衡量表现。聪明一点，记住：不要在奥林巴斯大厦内穿这套衣服！你知道，我们的士兵先开枪，然后再提问。[工程师拍拍你的肩膀]享受吧。我需要休息。}
### {151}{999}{Thank you. I'll go try a new toy.}
{151}{999}{非常感谢。我要去试一个新玩具。}
