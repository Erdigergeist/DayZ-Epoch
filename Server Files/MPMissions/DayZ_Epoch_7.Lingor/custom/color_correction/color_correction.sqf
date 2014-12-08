//Color Buff
_hndl = ppEffectCreate ["colorCorrections", 1501];
_hndl ppEffectEnable true;
_hndl ppEffectAdjust [ 1, 1, 0, [0, 0, 0, -0.31],[1.9, 2.5, 1.64, 0.7],[0.2, 0.1, -0.5, 1.64]];
_hndl ppEffectCommit 0;

//Clear contrast 
//_hndl = ppEffectCreate ["colorCorrections", 1501];
//_hndl ppEffectEnable true;
//_hndl ppEffectAdjust [ 1, 1, 0, [0, 0, 0, -0.31],[1.9, 1.9, 1.73, 0.7],[0.2, 1.1, -1.5, 1.64]];
//_hndl ppEffectCommit 0;

//Wasteland 
//_hndl = ppEffectCreate ["colorCorrections", 1501];
//_hndl ppEffectEnable true;
//_hndl ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [0.8*2, 0.5*2, 0.0, 0.7], [0.9, 0.9, 0.9, 0.0]];
//_hndl ppEffectCommit 0;

//Dark draining
//_hndl = ppEffectCreate ["colorCorrections", 1501];
//_hndl ppEffectEnable true;
//_hndl ppEffectAdjust [ 1, 0.21, 0, [0.1, 0, 0, 0],[3.59, 3.49, 3.78, 0.83],[-0.31, 0.08, 3.79, 5]];
//_hndl ppEffectCommit 0;

//Sandy
//_hndl = ppEffectCreate ["colorCorrections", 1501];
//_hndl ppEffectEnable true;
//_hndl ppEffectAdjust [ 1, 1, 0, [1.01, -2.46, -1.23, 0],[2.11, 1.6, 0.71, 0.8],[1.43, 0.56, 3.69, 0.31]];
//_hndl ppEffectCommit 0;

//Sumer Chernarus 
//_hndl = ppEffectCreate ["colorCorrections", 1501];
//_hndl ppEffectEnable true;
//_hndl ppEffectAdjust [1,1,0,[0,0,0,0],[2,0,0,1.25],[2.5,-2.5,0,0]];
//_hndl ppEffectCommit 0;

//Dog Vision 
//_hndl = ppEffectCreate ["colorCorrections", 1501];
//_hndl ppEffectEnable true;
//_hndl ppEffectAdjust [1,0.6,0,[0,0,0,0],[3,3,1,0.75],[2.5,2.5,-2.75,0]];
//_hndl ppEffectCommit 0;

//Tropical
//_hndl = ppEffectCreate ["colorCorrections", 1501];
//_hndl ppEffectEnable true;
//_hndl ppEffectAdjust [ 1, 1, 0.01, [-0.11, -0.65, -0.76, 0.015],[-5, 2.74, 0.09, 0.95],[-1.14, -0.73, 1.14, -0.09]];
//_hndl ppEffectCommit 0;

//Photo
//_hndl = ppEffectCreate ["colorCorrections", 1501];
//_hndl ppEffectEnable true;
//_hndl ppEffectAdjust [ 0.2050, 35, 0, [6.32, 0.57, 10.71, -0.0015],[1.29, 0.81, 1.2, 0.67],[-1.24, 2.03, 0.37, -3.69]];
//_hndl ppEffectCommit 0;

//WarZone
//_hndl = ppEffectCreate ["colorCorrections", 1501];
//_hndl ppEffectEnable true;
//_hndl ppEffectAdjust [ .079990001, 7, 0.055, [1.320, 1.57, 1.31, -.022],[2.05, 1.8611, 1.62, .6807],[-1.954, 3.95553, 4.898, 5.19]];
//_hndl ppEffectCommit 0;

//Operation Flashpoint
//_hndl = ppEffectCreate ["colorCorrections", 1501];
//_hndl ppEffectEnable true;
//_hndl ppEffectAdjust [1,1,0,[0,0,0,0],[1,1,1.2,0.85],[1,1,-2.5,0]];
//_hndl ppEffectCommit 0;

//Africa 
//_hndl = ppEffectCreate ["colorCorrections", 1501];
//_hndl ppEffectEnable true;
//_hndl ppEffectAdjust [ 1, 1.3, 0.001, [-0.11, -0.65, -0.76, 0.015],[-5, -1.74, 0.09, 0.86],[-1.14, -0.73, 1.14, -0.09]];
//_hndl ppEffectCommit 0;

//Blue 
//_hndl = ppEffectCreate ["colorCorrections", 1501];
//_hndl ppEffectEnable true;
//_hndl ppEffectAdjust [ 0.9, 1, 0, [-2.32, 0.17, 0.71, 0],[1.09, 0.91, 1.1, 0.27],[-1.24, 3.03, 0.37, -1.69]];
//_hndl ppEffectCommit 0;

//Arma mission colours 
//_hndl = ppEffectCreate ["colorCorrections", 1501];
//_hndl ppEffectEnable true;
//_hndl ppEffectAdjust [ 1.0, 1, -0.003, [0.2, 0.15, -0.0, 0.125],[-2, -1.5, -1, 0.55],[-0.54, -0.53, 0.4, -0.09]];
//_hndl ppEffectCommit 0;

//Heavy Colour Correction 
//_hndl = ppEffectCreate ["colorCorrections", 1501];
//_hndl ppEffectEnable true;
//_hndl ppEffectAdjust [1, 1.04, -0.004, [0.0, 0.0, 0.0, 0.0], [1, 0.8, 0.6, 0.5], [0.199, 0.587, 0.114, 0.0]];
//_hndl ppEffectCommit 0;

//--- Wind & Dust
[] spawn {
    waituntil {isplayer player};
    setwind [0.201112,0.204166,true];
    while {true} do {
        _ran = ceil random 5;
        playsound format ["wind_%1",_ran];
        _obj = vehicle player;
        _pos = position _obj;
 
        //--- Dust
            setwind [0.201112*2,0.204166*2,false];
        _velocity = [random 10,random 10,-1];
        _color = [1.0, 0.9, 0.8];
        _alpha = 0.02 + random 0.02;
        _ps = "#particlesource" createVehicleLocal _pos;
        _ps setParticleParams [["\Ca\Data\ParticleEffects\Universal\universal.p3d", 16, 12, 8], "", "Billboard", 1, 3, [0, 0, -6], _velocity, 1, 1.275, 1, 0, [9], [_color + [0], _color + [_alpha], _color + [0]], [1000], 1, 0, "", "", _obj];
        _ps setParticleRandom [3, [30, 30, 0], [0, 0, 0], 1, 0, [0, 0, 0, 0.01], 0, 0];
        _ps setParticleCircle [0.1, [0, 0, 0]];
        _ps setDropInterval 0.01;
 
        sleep (random 1);
        deletevehicle _ps;
        _delay = 10 + random 20;
        sleep _delay;
 
    };
};
 
//--- Ash
[] spawn {
    waituntil {isplayer player};
    _pos = position player;
    _parray = [
    /* 00 */        ["\Ca\Data\ParticleEffects\Universal\Universal", 16, 12, 8, 1],//"\Ca\Data\cl_water",
    /* 01 */        "",
    /* 02 */        "Billboard",
    /* 03 */        1,
    /* 04 */        4,
    /* 05 */        [0,0,0],
    /* 06 */        [0,0,0],
    /* 07 */        1,
    /* 08 */        0.000001,
    /* 09 */        0,
    /* 10 */        1.4,
    /* 11 */        [0.05,0.05],
    /* 12 */        [[0.1,0.1,0.1,1]],
    /* 13 */        [0,1],
    /* 14 */        0.2,
    /* 15 */        1.2,
    /* 16 */        "",
    /* 17 */        "",
    /* 18 */        vehicle player
    ];
    _snow = "#particlesource" createVehicleLocal _pos;
    _snow setParticleParams _parray;
    _snow setParticleRandom [0, [10, 10, 7], [0, 0, 0], 0, 0.01, [0, 0, 0, 0.1], 0, 0];
    _snow setParticleCircle [0.0, [0, 0, 0]];
    _snow setDropInterval 0.01;
 
    _oldPlayer = vehicle player;
    while {true} do {
        waituntil {vehicle player != _oldPlayer};
        _parray set [18,vehicle player];
        _snow setParticleParams _parray;
        _oldPlayer = vehicle player;
    };
};