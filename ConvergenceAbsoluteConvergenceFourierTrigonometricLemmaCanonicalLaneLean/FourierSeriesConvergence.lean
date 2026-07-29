import ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean.LebesgueIntegrable

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

structure FourierSeriesConvergencePackage where
  interval : Type u
  functionSpace : Type v
  fourierCoefficients : (Nat → ℝ) → Type w
  pointwiseConvergence : Prop
  uniformConvergence : Prop
  convergenceInMean : Prop

structure FourierSeriesConvergenceEvidence (F : FourierSeriesConvergencePackage) where
  pointwiseConvergenceClosed : F.pointwiseConvergence
  uniformConvergenceClosed : F.uniformConvergence
  convergenceInMeanClosed : F.convergenceInMean

def FourierSeriesConvergenceClosed (F : FourierSeriesConvergencePackage) : Prop :=
  F.pointwiseConvergence ∧ F.uniformConvergence ∧ F.convergenceInMean

theorem fourier_series_convergence_closed_from_evidence
    (F : FourierSeriesConvergencePackage) (E : FourierSeriesConvergenceEvidence F) :
    FourierSeriesConvergenceClosed F := by
  exact And.intro E.pointwiseConvergenceClosed
    (And.intro E.uniformConvergenceClosed E.convergenceInMeanClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse