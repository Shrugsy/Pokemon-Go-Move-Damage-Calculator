function [totDamage, totTime, fastCounter, chargeCounter] = attackSim(fastMove, chargeMove, simTime)

%fast vars: type, damage, speed, energy gain
%charge vars: type, damage, speed, energy use

%simTime goes from 0 to simTime

currentEnergy = 0;
totTime = 0;
totDamage = 0;
fastCounter = 0;
chargeCounter = 0;


while totTime < simTime;
    
    %simulate casting fast move until charge move ready
    while (currentEnergy < chargeMove.enUse) && (totTime < simTime);
        totDamage       = totDamage + fastMove.damage;
        totTime         = totTime + fastMove.cooldown;  
        currentEnergy   = currentEnergy + fastMove.enGain;
        fastCounter = fastCounter + 1;
        totTime;
    end
    %simulate casting charge move
    if totTime < simTime;
        currentEnergy = currentEnergy - chargeMove.enUse;
        totTime = totTime + chargeMove.cooldown;
        totDamage = totDamage + chargeMove.damage;
        chargeCounter = chargeCounter + 1;
        totTime;
    end
end


end