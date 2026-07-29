import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

structure FourierSeriesPackage where
  functionSpace : Type u
  integrabilityCondition : Prop
  orthonormalSystem : Prop
  basisComplete : Prop
  partialSumConvergence : Prop
  fourierCoefficients : Type v
  growthCondition : Prop

structure FourierSeriesEvidence (F : FourierSeriesPackage) where
  integrabilityConditionClosed : F.integrabilityCondition
  orthonormalSystemClosed : F.orthonormalSystem
  basisCompleteClosed : F.basisComplete
  partialSumConvergenceClosed : F.partialSumConvergence
  growthConditionClosed : F.growthCondition

def FourierSeriesClosed (F : FourierSeriesPackage) : Prop :=
  F.integrabilityCondition ∧ F.orthonormalSystem ∧
  F.basisComplete ∧ F.partialSumConvergence ∧ F.growthCondition

theorem fourier_series_closed_from_evidence (F : FourierSeriesPackage)
    (E : FourierSeriesEvidence F) : FourierSeriesClosed F := by
  exact And.intro E.integrabilityConditionClosed
    (And.intro E.orthonormalSystemClosed
      (And.intro E.basisCompleteClosed
        (And.intro E.partialSumConvergenceClosed E.growthConditionClosed)))

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse