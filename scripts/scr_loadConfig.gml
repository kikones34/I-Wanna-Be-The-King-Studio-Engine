///scr_loadConfig()
ini_open("Config.ini");

global.leftButton = ini_read_real("Controls", "LeftButton", vk_left);
global.rightButton = ini_read_real("Controls", "RightButton", vk_right);
global.jumpButton = ini_read_real("Controls", "JumpButton", vk_shift);
global.shootButton = ini_read_real("Controls", "ShootButton", ord("Z"));
global.downButton = ini_read_real("Controls", "DownButton", vk_down);
global.upButton = ini_read_real("Controls", "UpButton", vk_up);
global.restartButton = ini_read_real("Controls", "RestartButton", ord("R"));
global.pauseButton = ini_read_real("Controls", "PauseButton", ord("P"));

global.menuLeftButton = vk_left;
global.menuRightButton = vk_right;
global.menuUpButton = vk_up;
global.menuDownButton = vk_down;
global.menuAcceptButton = vk_shift;
global.menuBackButton = ord("Z");

global.soundVolume = ini_read_real("System", "SoundVolume", 1);

ini_close();
