import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

structure EndpointClassificationPackage {C : CarlesonsTheoremPackage} where
  targetFunction : Type u
  endpointLpConvergence : Prop
  endpointAlmostEverywhereConvergence : Prop
  endpointMatchesFourierTheory : Prop

structure EndpointClassificationEvidence {C : CarlesonsTheoremPackage}
    (E : EndpointClassificationPackage C) where
  endpointLpConvergenceClosed : E.endpointLpConvergence
  endpointAlmostEverywhereConvergenceClosed : E.endpointAlmostEverywhereConvergence
  endpointMatchesFourierTheoryClosed : E.endpointMatchesFourierTheory

def EndpointClassificationClosed {C : CarlesonsTheoremPackage}
    (E : EndpointClassificationPackage C) : Prop :=
  E.endpointLpConvergence ∧ E.endpointAlmostEverywhereConvergence ∧
  E.endpointMatchesFourierTheory

theorem endpoint_classification_closed_from_evidence
    {C : CarlesonsTheoremPackage} (E : EndpointClassificationPackage C)
    (Ev : EndpointClassificationEvidence E) : EndpointClassificationClosed E := by
  exact And.intro Ev.endpointLpConvergenceClosed
    (And.intro Ev.endpointAlmostEverywhereConvergenceClosed
      Ev.endpointMatchesFourierTheoryClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse