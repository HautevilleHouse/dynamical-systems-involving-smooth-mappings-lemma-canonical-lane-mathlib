import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure SmoothMappingsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SmoothMappingsAdmittedObject where
  space : SmoothMappingsSpace
  smoothMapping : Prop
  dynamicalSystem : Prop
  conclusion : smoothMapping ∧ dynamicalSystem

def SmoothMappingsWitnessClosed (O : SmoothMappingsAdmittedObject) : Prop :=
  O.smoothMapping ∧ O.dynamicalSystem

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse