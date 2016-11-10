%files to include with this script:
%attackSim.m
%damagecalc.m
%movedata.m

%clc;
clear;

movedata;


fprintf('--Pokemon Go move damage calculator/simulator--\nFormatting: Use all lower case with underscores. E.g. ''Solar Beam'' should be input as ''solar_beam''.\n')

fastMove = inputMove('Fast move');
fastMove.defcooldown = fastMove.cooldown + 2;
fastMove.attackingDPS = fastMove.damage/fastMove.cooldown;
fastMove.defendingDPS = fastMove.damage/fastMove.defcooldown;

chargeMove = inputMove('Charge move');
chargeMove.defcooldown = chargeMove.cooldown + 2;
chargeMove.attackingDPS = chargeMove.damage/chargeMove.cooldown;
chargeMove.defendingDPS = chargeMove.damage/chargeMove.defcooldown;

disp(fastMove);
disp(chargeMove);


%%
simTime = input('Simulate battle for how many seconds?\n');
simTimeString = num2str(simTime);

simMessage = ['Simulating attacking with ', fastMove.moveName, ' and ', chargeMove.moveName, ' for ', simTimeString, ' seconds.'];
disp(simMessage);
fprintf('\n');


[totDamage, totTime, fastCounter, chargeCounter] = attackSim(fastMove, chargeMove, simTime);

totDamageString = num2str(totDamage);
totTimeString = num2str(totTime);
fastCounterString = num2str(fastCounter);
chargeCounterString = num2str(chargeCounter);

simMessage2 = ['Simulated ', fastCounterString, ' uses of ', fastMove.moveName, ' and ', chargeCounterString, ' uses of ', chargeMove.moveName, ' over ', totTimeString, ' seconds.'];
disp(simMessage2);
fprintf('\n');
simMessage3 = ['Total damage dealt: ', totDamageString];
disp(simMessage3);
fprintf('\n');





