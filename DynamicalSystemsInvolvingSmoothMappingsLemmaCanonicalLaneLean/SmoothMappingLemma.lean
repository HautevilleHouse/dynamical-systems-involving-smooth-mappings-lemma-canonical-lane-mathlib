import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure SmoothMappingLemmaPackage (D : SmoothMappingsDynamicalSystem) where
  smoothMapping : D.stateSpace → D.stateSpace
  smoothness : ContDiff ⊤ smoothMapping
  commutesWithFlow : ∀ (t : D.timeDomain) (x : D.stateSpace), smoothMapping (D.smoothFlow t x) = D.smoothFlow t (smoothMapping x)
  periodicOrbitStructure : Prop
  fixedPointSet : Set D.stateSpace
  fixedPointSmooth : smoothMapping '' fixedPointSet = fixedPointSet
  hyperbolicity : Prop
  stableManifold : Prop
  unstableManifold : Prop

structure SmoothMappingLemmaEvidence (D : SmoothMappingsDynamicalSystem) (L : SmoothMappingLemmaPackage D) where
  commutesWithFlowClosed : L.commutesWithFlow
  periodicOrbitStructureClosed : L.periodicOrbitStructure
  hyperbolicityClosed : L.hyperbolicity
  stableManifoldClosed : L.stableManifold
  unstableManifoldClosed : L.unstableManifold

def SmoothMappingLemmaClosed (D : SmoothMappingsDynamicalSystem) (L : SmoothMappingLemmaPackage D) : Prop :=
  L.commutesWithFlow ∧ L.periodicOrbitStructure ∧ L.hyperbolicity ∧ L.stableManifold ∧ L.unstableManifold

theorem smooth_mapping_lemma_closed_from_evidence
    (D : SmoothMappingsDynamicalSystem) (L : SmoothMappingLemmaPackage D)
    (E : SmoothMappingLemmaEvidence D L) : SmoothMappingLemmaClosed D L := by
  exact And.intro E.commutesWithFlowClosed
    (And.intro E.periodicOrbitStructureClosed
      (And.intro E.hyperbolicityClosed
        (And.intro E.stableManifoldClosed E.unstableManifoldClosed)))

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse