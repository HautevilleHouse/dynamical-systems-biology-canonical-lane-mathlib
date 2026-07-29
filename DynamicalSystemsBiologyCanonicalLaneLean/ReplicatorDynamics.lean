import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyCanonicalLaneLean

structure ReplicatorDynamicsPackage where
  payoffMatrix : Type u
  nStrategies : ℕ
  nStrategiesPos : nStrategies > 0
  fitnessFunction (x : Vector ℝ nStrategies) : Vector ℝ nStrategies
  replicatorEquation : Prop
  interiorEquilibrium : Prop

def ReplicatorDynamicsClosed (R : ReplicatorDynamicsPackage) : Prop :=
  R.replicatorEquation ∧ R.interiorEquilibrium

theorem replicator_dynamics_closed (R : ReplicatorDynamicsPackage) : ReplicatorDynamicsClosed R :=
  And.intro R.replicatorEquation R.interiorEquilibrium

end DynamicalSystemsBiologyCanonicalLaneLean
end HautevilleHouse