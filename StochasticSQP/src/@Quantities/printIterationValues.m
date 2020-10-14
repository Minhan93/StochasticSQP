% Copyright (C) 2020 Frank E. Curtis
%
% All Rights Reserved.
%
% Authors: Frank E. Curtis

% Quantities: printIterationValues
function printIterationValues(Q,reporter)

% Print iteration values
reporter.printf(Enumerations.R_SOLVER,Enumerations.R_PER_ITERATION,...
  '%6d %+e %+e %+e',...
  Q.iterationCounter,...
  Q.currentIterate.objectiveFunction(Q),...
  Q.currentIterate.constraintNormInf(Q),...
  Q.meritParameter*Q.currentIterate.objectiveFunction(Q) + Q.currentIterate.constraintNorm1(Q));

end % printIterationValues