import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure SmoothMappingsSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : Prop

structure SmoothMappingsAdmittedObject where
  space : SmoothMappingsSpace
  smoothMappingLemmaSatisfied : Prop
  targetAttractor : Type
  attractorTopology : TopologicalSpace targetAttractor
  convergenceToAttractor : Prop
  conclusion : convergenceToAttractor

structure SmoothMappingsEndgameState where
  object : SmoothMappingsAdmittedObject

def SmoothMappingsWitnessClosed (O : SmoothMappingsAdmittedObject) : Prop :=
  O.convergenceToAttractor

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse
