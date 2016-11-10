function movestats(moveChoice)

attDPS = moveChoice.damage/moveChoice.cooldown;
defDPS = moveChoice.damage/moveChoice.defcooldown;
numAttacksAtt = fix(30/moveChoice.cooldown);
numAttacksDef = fix(30/moveChoice.defcooldown);
dam30att = numAttacksAtt*moveChoice.damage;
dam30def = numAttacksDef*moveChoice.damage;



attDPSString = num2str(attDPS);
defDPSString = num2str(defDPS);
dam30attString = num2str(dam30att);
dam30defString = num2str(dam30def);


attString = ['Attacking DPS for move ', moveChoice.moveName, ': ', attDPSString];
disp(attString);

dam30attPrint = ['Attacking damage output over 30 seconds: ', dam30attString];
disp(dam30attPrint);

defString = ['Defending DPS for move ', moveChoice.moveName, ': ', defDPSString];
disp(defString);

dam30defPrint = ['Defending damage output over 30 seconds: ', dam30defString];
disp(dam30defPrint);
fprintf('\n');


end