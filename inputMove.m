function [outMove] = inputMove(moveType)

typeCheck = 0;
stabCheck = 0;
movedata;

while typeCheck ~= 1
    inputText = ['Please input a ', moveType, ': '];
    outMove = input(inputText);
    
    typeCheck = strcmp(outMove.type, moveType);
    if typeCheck == 0;
        fprintf('Incorrect move type\n\n'); 
    end

end

while stabCheck ~=1
    stabBonus = input('Does this move have STAB? y/n: ', 's');
    if strcmp(stabBonus, 'y')
        fprintf('Move deals 1.25x damage from STAB.\n');
        outMove.damage = outMove.damage * 1.25;        
        stabCheck = 1;
    elseif strcmp(stabBonus, 'n')
        fprintf('No STAB.\n');
        stabCheck = 1;
    else
        fprintf('Incorrect input.\n');
    end
end





end