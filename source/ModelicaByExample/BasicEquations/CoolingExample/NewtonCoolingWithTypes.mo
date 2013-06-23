within ModelicaByExample.BasicEquations.CoolingExample;
model NewtonCoolingWithTypes "Cooling example with physical types"
  // Types
  type Temperature=Real(unit="K", min=0);
  type ConvectionCoefficient=Real(unit="W/K", min=0);
  type Mass=Real(unit="kg", min=0);
  type SpecificHeat=Real(unit="J/(K.kg)", min=0);

  // Parameters
  parameter Temperature T_inf=300.0 "Ambient temperature";
  parameter Temperature T0=280.0 "Initial temperature";
  parameter ConvectionCoefficient h=0.7 "Convective cooling coefficient";
  parameter Mass m=0.1 "Mass of thermal capacitance";
  parameter SpecificHeat c_p=1.2 "Specific heat";

  // Variables
  Temperature T "Temperature";
initial equation
  T = T0 "Specify initial value for T";
equation
  m*c_p*der(T) = h*(T_inf-T) "Newton's Law of Cooling";
end NewtonCoolingWithTypes;