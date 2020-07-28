///scr_playerJump()
if (onLand || onPlatform || place_meeting(x, y + global.grav, obj_water)) {
    vspeed = -(jumpsHeight[0] * global.grav);
    scr_recoverJumps();
    audio_play_sound(snd_jump, 0, false);
    scr_earnAchievement(0);
} else if (jumpsLeft > 0 || place_meeting(x, y + global.grav, obj_water2) || jumps == -1) {
    vspeed = -(jumpsHeight[1] * global.grav);
    sprite_index = spr_playerJump;

    if (!place_meeting(x, y + global.grav, obj_water3)) {
        if (jumpsLeft > 0) {
            jumpsLeft--;
        }
    } else {
        scr_recoverJumps();
    }
    
    audio_play_sound(snd_doubleJump, 0, false);
    scr_earnAchievement(0);
}
