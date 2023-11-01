#############################################################
#Critter text file << Livos resident guy in the filtration room >> 
#############################################################
#File structure:
#lines 1-9 - description of the character;
#lines 10-29 - acquaintance with a personage;
#lines 30-99 - I don't know yet, but I think it will be useful...
#Next, on the branches of the dialogue.
#Each branch is a multiple of 100, i.e. 100 is one topic of dialogue, 200 is another.
#Character replicas go after 10, i.e. 100, 110, 120, etc. With that
#for replica 100 use Node010, for replica 240 use Node024.
#For player answers - continuous numbering, i.e. the replica 650 responses will be 651, 652, 653, etc.
#For special branches use additional numbers (for example, the replica 360 is divided into 3601 and 3602,
#the same applies to the Node procedure, the answers will be in the usual form - 361, 362, etc.)
#############################################################
#Such an organizational system does not allow creating too complex dialogues,
#which for me personally is very good!!!
############################################################
#specially for "Olympus 2207", by Rainman, 13/04/2013
#############################################################
#
#CRITTER DESCRIPTION
#
### {1}{}{You see a guy.}
{1}{}{你看到一个男人。 -- You see a guy.}
### {2}{}{You see a local guy.}
{2}{}{你看到一个当地人。 -- You see a local guy.}
### {3}{}{You see a young man.}
{3}{}{你看到一个年轻人。 -- You see a young man.}
### {4}{}{You see a resident of the vault.}
{4}{}{你看到一个地下室的居民。 -- You see a resident of the vault.}
### {5}{}{You see a dweller of Livos.}
{5}{}{你看到了利沃斯的居民。 -- You see a dweller of Livos.}
### {6}{}{A young man. The web of blue veins is clearly seen through the pale skin.}
{6}{}{一个年轻人。透过苍白的皮肤可以清楚地看到青筋网。 -- A young man. The web of blue veins is clearly seen through the pale skin.}
### {7}{}{He dresses quite well.}
{7}{}{他穿得很好。 -- He dresses quite well.}
### {8}{}{He does not seem to bother himself with too much work.}
{8}{}{他似乎没有为太多的工作而烦恼。 -- He does not seem to bother himself with too much work.}
### {9}{}{He looks at you as if you owed him something very valuable.}
{9}{}{他看着你，好像你欠了他一些很有价值的东西。 -- He looks at you as if you owed him something very valuable.}
#
{10}{}{}
{11}{}{}
{12}{}{}
{13}{}{}
{14}{}{}
{15}{}{}
{16}{}{}
{17}{}{}
{18}{}{}
{19}{}{}
#
#SWIMMING MESSAGES
# Positive messages
### {1000}{}{Greetings brother!}
{1000}{}{问候兄弟！ -- Greetings brother!}
### {1001}{}{Good day, friend!}
{1001}{}{你好，朋友！ -- Good day, friend!}
### {1002}{}{Hello! Let's hang out by the wine machine later!}
{1002}{}{你好让我们稍后在酿酒机旁闲逛吧！ -- Hello! Let's hang out by the wine machine later!}
### {1003}{}{Yes, yes, I'm glad to see you too.}
{1003}{}{是的，是的，我也很高兴见到你。 -- Yes, yes, I'm glad to see you too.}
### {1004}{}{Wonderful day today, isn't it?}
{1004}{}{今天天气真好，不是吗？ -- Wonderful day today, isn't it?}
### {1005}{}{I'm so glad to see you!}
{1005}{}{见到你我很高兴！ -- I'm so glad to see you!}
### {1006}{}{I cannot express with words how glad I am to see you, my friend!}
{1006}{}{我无法用语言表达我多么高兴见到你，我的朋友！ -- I cannot express with words how glad I am to see you, my friend!}
### {1007}{}{Let's make contact at any time!}
{1007}{}{让我们随时联系！ -- Let's make contact at any time!}
### {1008}{}{You are our pride!}
{1008}{}{你是我们的骄傲！ -- You are our pride!}
### {1009}{}{Without second thoughts, my dear!}
{1009}{}{不假思索，亲爱的！ -- Without second thoughts, my dear!}
# Neutral messages
### {1010}{}{What now?}
{1010}{}{现在怎么办？ -- What now?}
### {1011}{}{N-no, just leave.}
{1011}{}{不，走吧。 -- N-no, just leave.}
### {1012}{}{Find yourself something to do.}
{1012}{}{给自己找点事做。 -- Find yourself something to do.}
### {1013}{}{You are invading my personal space.}
{1013}{}{你侵犯了我的私人空间。 -- You are invading my personal space.}
### {1014}{}{How do I say it... Scat away from me.}
{1014}{}{我该怎么说呢…从我身边溜走。 -- How do I say it... Scat away from me.}
### {1015}{}{You are preventing me from admiring our chambers.}
{1015}{}{你阻止我欣赏我们的房间。 -- You are preventing me from admiring our chambers.}
### {1016}{}{Go stick to the Hortons. They are friendly.}
{1016}{}{去霍顿家。他们很友好。 -- Go stick to the Hortons. They are friendly.}
### {1017}{}{Better go irritate Schweins.}
{1017}{}{最好去激怒Schweins。 -- Better go irritate Schweins.}
### {1018}{}{Listen, new one... On the other hand, I'm too lazy to talk to you.}
{1018}{}{听着，新的。。。另一方面，我懒得和你说话。 -- Listen, new one... On the other hand, I'm too lazy to talk to you.}
### {1019}{}{Ew! The smell of you!}
{1019}{}{哇！你的味道！ -- Ew! The smell of you!}
# Negative messages
### {1020}{}{Arrrgh! Go away!}
{1020}{}{阿！走开！ -- Arrrgh! Go away!}
### {1021}{}{I hate you, scum!}
{1021}{}{我恨你，人渣！ -- I hate you, scum!}
### {1022}{}{How dare you!?...}
{1022}{}{你怎么敢！？。。。 -- How dare you!?...}
### {1023}{}{Get away, the abomination of hell!}
{1023}{}{走开，这可恶的地狱！ -- Get away, the abomination of hell!}
### {1024}{}{Oh you fucking burp of a nasty beast!}
{1024}{}{哦，你这混蛋打嗝！ -- Oh you fucking burp of a nasty beast!}
### {1025}{}{I'm gonna tear out your spleen and eat it with a glass of Chianti!}
{1025}{}{我要把你的脾脏撕下来，和一杯基安蒂一起吃！ -- I'm gonna tear out your spleen and eat it with a glass of Chianti!}
### {1026}{}{We urgently need to clear the world of your presence, you bastard!}
{1026}{}{我们迫切需要清除你的存在，你这个混蛋！ -- We urgently need to clear the world of your presence, you bastard!}
### {1027}{}{What the hell do you want from me?!}
{1027}{}{你到底想从我这里得到什么？！ -- What the hell do you want from me?!}
### {1028}{}{Just thinking about you makes me sick!}
{1028}{}{一想到你就让我恶心！ -- Just thinking about you makes me sick!}
### {1029}{}{You... You... Bitch!}
{1029}{}{你你婊子！ -- You... You... Bitch!}
#Sleeping messages
### {1030}{}{Need. To. Keep. The. Damn. Mechanisms. Working.}
{1030}{}{需要去。保持。这个该死机制。工作 -- Need. To. Keep. The. Damn. Mechanisms. Working.}
### {1031}{}{I huffed and puffed and hit hard - but it still makes noise...}
{1031}{}{我气喘吁吁，重重地打了一拳——但它仍然发出噪音。。。 -- I huffed and puffed and hit hard - but it still makes noise...}
### {1032}{}{I definitely picked the wrong turn in life...}
{1032}{}{我肯定选错了人生的转折点。。。 -- I definitely picked the wrong turn in life...}
### {1033}{}{Why am I doomed to do this, I wonder? Is it karma? Maybe there is no such thing as fate and everything is in vain...}
{1033}{}{我想知道为什么我注定要这么做？是因果报应吗？也许世上没有所谓的命运，一切都是徒劳的。。。 -- Why am I doomed to do this, I wonder? Is it karma? Maybe there is no such thing as fate and everything is in vain...}
### {1034}{}{To knock, to spit, to scratch the back of my head... It seems that I do everything according to the instructions, but it is not being repaired.}
{1034}{}{敲，吐，挠我的后脑勺。。。我似乎一切都按指示做，但没有修好。 -- To knock, to spit, to scratch the back of my head... It seems that I do everything according to the instructions, but it is not being repaired.}
### {1035}{}{Someone, bring me an electric hammer! I will show these gears...}
{1035}{}{有人，给我一个电锤！我会展示这些装备。。。 -- Someone, bring me an electric hammer! I will show these gears...}
### {1036}{}{I am the light of the New World! I must breed, not sweat here...}
{1036}{}{我是新世界之光！我必须繁殖，而不是在这里流汗。。。 -- I am the light of the New World! I must breed, not sweat here...}
### {1037}{}{Rrrh, n- oh, come on! Work, you hellish device!}
{1037}{}{Rrrh，n-哦，来吧！工作，你这个该死的家伙！ -- Rrrh, n- oh, come on! Work, you hellish device!}
### {1038}{}{Filters don't filter, the generator does not generate...}
{1038}{}{过滤器不过滤，生成器不生成。。。 -- Filters don't filter, the generator does not generate...}
### {1039}{}{...We need to make filters filter and regenerate the generator!}
{1039}{}{…我们需要使过滤器过滤和再生发电机！ -- ...We need to make filters filter and regenerate the generator!}
