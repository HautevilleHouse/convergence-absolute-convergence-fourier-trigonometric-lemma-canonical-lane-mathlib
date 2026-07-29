import ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean.AbsoluteConvergence

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

structure FourierTrigonometricLemmaPackage {F : FourierSeriesConvergencePackage}
    {A : AbsoluteConvergencePackage F} where
  convergenceCondition : Prop
  trigonometricLemmaProof : Prop
  seriesSumToFunction : Prop

structure FourierTrigonometricLemmaEvidence {F : FourierSeriesConvergencePackage}
    {A : AbsoluteConvergencePackage F} (L : FourierTrigonometricLemmaPackage A) where
  convergenceConditionClosed : L.convergenceCondition
  trigonometricLemmaProofClosed : L.trigonometricLemmaProof
  seriesSumToFunctionClosed : L.seriesSumToFunction

def FourierTrigonometricLemmaClosed {F : FourierSeriesConvergencePackage}
    {A : AbsoluteConvergencePackage F} (L : FourierTrigonometricLemmaPackage A) : Prop :=
  L.convergenceCondition ∧ L.trigonometricLemmaProof ∧ L.seriesSumToFunction

theorem fourier_trigonometric_lemma_closed_from_evidence
    {F : FourierSeriesConvergencePackage} {A : AbsoluteConvergencePackage F}
    (L : FourierTrigonometricLemmaPackage A) (E : FourierTrigonometricLemmaEvidence L) :
    FourierTrigonometricLemmaClosed L := by
  exact And.intro E.convergenceConditionClosed
    (And.intro E.trigonometricLemmaProofClosed E.seriesSumToFunctionClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse