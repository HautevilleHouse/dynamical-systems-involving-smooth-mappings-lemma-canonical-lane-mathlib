import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure AdmittedObject where
  sys : SmoothMappingsDynamicalSystem
  lemma : SmoothMappingLemmaPackage sys
  invariant : InvariantManifoldTheoremPackage lemma
  hyperbolic : HyperbolicDynamicsPackage lemma
  pesin : PesinTheoryPackage hyperbolic

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse