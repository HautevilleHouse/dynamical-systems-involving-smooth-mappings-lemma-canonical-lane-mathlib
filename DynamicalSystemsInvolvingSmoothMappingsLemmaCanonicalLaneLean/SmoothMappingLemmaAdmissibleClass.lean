import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure DynamicalSmoothMappingObject where
  source : Type u
  target : Type v
  mapping : source → target
  smoothStructure : Prop
  dynamicalConstraint : Prop
  conclusion : dynamicalConstraint

structure AdmissibleClass where
  object : DynamicalSmoothMappingObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SmoothWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def SmoothWitnessClosed (O : DynamicalSmoothMappingObject) : Prop :=
  O.dynamicalConstraint

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse