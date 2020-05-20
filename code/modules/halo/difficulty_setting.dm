#define DIFFICULTY_EASY 1
#define DIFFICULTY_NORMAL 2
#define DIFFICULTY_HEROIC 3
#define DIFFICULTY_LEGENDARY 4

GLOBAL_VAR_INIT(difficulty_level, DIFFICULTY_NORMAL)

mob/living/simple_animal/proc/apply_difficulty_setting()
	//apply difficulty
	switch(GLOB.difficulty_level)
		if(DIFFICULTY_EASY)
			//make enemies weaker
			health -= 25
			maxHealth -= 25
			resistance = max(resistance - 5, 0)
		if(DIFFICULTY_NORMAL)
			//no change
		if(DIFFICULTY_HEROIC)
			//make enemies stronger
			health += 50
			maxHealth += 50
		if(DIFFICULTY_LEGENDARY)
			//make enemies much stronger
			health += 100
			maxHealth += 100
			resistance += 5

/mob/living/simple_animal/getRollDist()
	switch(GLOB.difficulty_level)
		if(DIFFICULTY_EASY)
			return 0
		if(DIFFICULTY_NORMAL)
			return 2
		if(DIFFICULTY_HEROIC)
			return 2
		if(DIFFICULTY_LEGENDARY)
			return 3

mob/living/simple_animal/getPerRollDelay()
	switch(GLOB.difficulty_level)
		if(DIFFICULTY_EASY)
			return 3
		if(DIFFICULTY_NORMAL)
			return 2
		if(DIFFICULTY_HEROIC)
			return 1
		if(DIFFICULTY_LEGENDARY)
			return 0