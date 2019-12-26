% clear;

% chom=doubledotff(inversegeneral(0.1*symidendityf+0.9*inversegeneral(symidendityf-doubledotff(Ptensor(3,2,2,1),matrixc(2,1)))),matrixc(2,1));

chom=0.1*doubledotff(matrixc(3,2),inversegeneral(0.1*symidendityf+0.9*inversegeneral(symidendityf-doubledotff(Ptensor(3,2,3,2),matrixc(3,2)))));

% ig=eshelbyoblate(3,2,2,1);
% ip=doubledotff(Ptensor(3,2,2,1),matrixc(2,1));
% it=inversetest(eshelbyoblate(3,2,2,1));