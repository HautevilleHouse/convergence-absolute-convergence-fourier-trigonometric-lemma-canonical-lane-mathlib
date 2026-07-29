import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

structure CarlesonsTheoremPackage {L : FourierTrigonometricLemmaPackage} where
  almostEverywhereConvergence : Prop
  maximalFunction : Prop
  squareFunction : Prop
  timeFrequencyAnalysis : Prop

structure CarlesonsTheoremEvidence {L : FourierTrigonometricLemmaPackage}
    (C : CarlesonsTheoremPackage L) where
  almostEverywhereConvergenceClosed : C.almostEverywhereConvergence
  maximalFunctionClosed : C.maximalFunction
  squareFunctionClosed : C.squareFunction
  timeFrequencyAnalysisClosed : C.timeFrequencyAnalysis

def CarlesonsTheoremClosed {L : FourierTrigonometricLemmaPackage}
    (C : CarlesonsTheoremPackage L) : Prop :=
  C.almostEverywhereConvergence ∧ C.maximalFunction ∧
  C.squareFunction ∧ C.timeFrequencyAnalysis

theorem carlesons_theorem_closed_from_evidence
    {L : FourierTrigonometricLemmaPackage} (C : CarlesonsTheoremPackage L)
    (E : CarlesonsTheoremEvidence C) : CarlesonsTheoremClosed C := by
  exact And.intro E.almostEverywhereConvergenceClosed
    (And.intro E.maximalFunctionClosed
      (And.intro E.squareFunctionClosed
        E.timeFrequencyAnalysisClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse