
%clc;
clear;

movedata;

%over 30 seconds:sola
typeCheck = 0;
while typeCheck ~= 1
    fastMove = input('Please type a fast move\n');
    typeCheck = strcmp(fastMove.type, 'Fast move');
    if typeCheck == 0;
        fprintf('Incorrect move type\n\n'); 
    end

end
fastMove.defcooldown = fastMove.cooldown + 2;
disp(fastMove);


typeCheck = 0;
while typeCheck ~= 1
    chargeMove = input('Please type a charge move\n');
    typeCheck = strcmp(chargeMove.type, 'Charge move');
    if typeCheck == 0;
        fprintf('Incorrect move type\n');
    end
end
chargeMove.defcooldown = chargeMove.cooldown + 2;
disp(chargeMove);

movestats(fastMove);
movestats(chargeMove);



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



