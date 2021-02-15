-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages
experienceStages = {
	{
		minlevel = 1,
		maxlevel = 8,
		multiplier = 15
	}, {
		minlevel = 9,
		maxlevel = 200,
		multiplier = 300
	}, {
		minlevel = 201,
		maxlevel = 300,
		multiplier = 250
	}, {
		minlevel = 301,
		maxlevel = 500,
		multiplier = 140
	}, {
		minlevel = 501,
		maxlevel = 600,
		multiplier = 120
	}, {
		minlevel = 601,
		maxlevel = 700,
		multiplier = 100
	}, {
		minlevel = 701,
		maxlevel = 800,
		multiplier = 50
	}, {
		minlevel = 801,
		multiplier = 20
	}
}

skillsStages = {
	{
		minlevel = 10,
		maxlevel = 90,
		multiplier = 60000
	}, {
		minlevel = 91,
		maxlevel = 100,
		multiplier = 40
	}, {
		minlevel = 101,
		maxlevel = 110,
		multiplier = 15
	}, {
		minlevel = 111,
		maxlevel = 125,
		multiplier = 5
	}, {
		minlevel = 126,
		multiplier = 2
	}
}

magicLevelStages = {
	{
		minlevel = 0,
		maxlevel = 10,
		multiplier = 4500
	},
	{
		minlevel = 11,
		maxlevel = 60,
		multiplier = 45
	}, {
		minlevel = 61,
		maxlevel = 80,
		multiplier = 25
	}, {
		minlevel = 81,
		maxlevel = 100,
		multiplier = 15
	}, {
		minlevel = 101,
		maxlevel = 110,
		multiplier = 9
	}, {
		minlevel = 111,
		maxlevel = 125,
		multiplier = 5
	}, {
		minlevel = 126,
		multiplier = 2
	}
}
