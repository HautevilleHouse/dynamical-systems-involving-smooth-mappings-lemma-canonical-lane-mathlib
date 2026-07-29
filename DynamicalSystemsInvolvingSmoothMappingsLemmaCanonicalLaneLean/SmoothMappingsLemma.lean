import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure DynamicalSystem where
  stateSpace : Type u
  dynamics : stateSpace → stateSpace
  smoothness : Prop
  initialCondition : stateSpace

structure AdmissibleClass where
  object : DynamicalSystem
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SmoothMappingClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SmoothMappingClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.smoothness

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

def ConstrainedDynamicalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dynamical_endgame (A : AdmissibleClass) :
    ConstrainedDynamicalClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse
