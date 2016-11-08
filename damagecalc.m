
%clc;
clear;

bite.moveName = 'bite';
bite.damage = 6;
bite.cooldown = 0.5;

twister.moveName = 'twister';
twister.damage = 25;
twister.cooldown = 2.7;

%over 30 seconds:
move = input('Please type a move\n');
move.defcooldown = move.cooldown + 2;
disp(move);

attDPS = move.damage/move.cooldown;
defDPS = move.damage/move.defcooldown;
numAttacksAtt = fix(30/move.cooldown);
numAttacksDef = fix(30/move.defcooldown);
dam30att = numAttacksAtt*move.damage;
dam30def = numAttacksDef*move.damage;

attDPSString = num2str(attDPS);
defDPSString = num2str(defDPS);
dam30attString = num2str(dam30att);
dam30defString = num2str(dam30def);

attString = ['Attacking DPS for move ', move.moveName, ': ', attDPSString];
disp(attString);

dam30attPrint = ['Attacking damage output over 30 seconds: ', dam30attString];
disp(dam30attPrint);

defString = ['Defending DPS for move ', move.moveName, ': ', defDPSString];
disp(defString);

dam30defPrint = ['Defending damage output over 30 seconds: ', dam30defString];
disp(dam30defPrint);
fprintf('\n');



