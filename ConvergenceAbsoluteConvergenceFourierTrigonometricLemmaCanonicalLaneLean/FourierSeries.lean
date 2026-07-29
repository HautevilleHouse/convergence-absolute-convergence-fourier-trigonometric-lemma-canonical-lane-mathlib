import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

structure FourierSeriesPackage where
  functionSpace : Type u
  domain : Type v
  orthonormalBasis : Type w
  seriesExpansion : (functionSpace -> domain -> ℝ) -> (ℕ -> ℝ)
  partialSums : ℕ -> (functionSpace -> domain -> ℝ)
  uniformConvergence : Prop
  pointwiseConvergence : Prop

structure FourierSeriesEvidence (F : FourierSeriesPackage) where
  uniformConvergenceClosed : F.uniformConvergence
  pointwiseConvergenceClosed : F.pointwiseConvergence

def FourierSeriesClosed (F : FourierSeriesPackage) : Prop :=
  F.uniformConvergence ∧ F.pointwiseConvergence

theorem fourier_series_closed_from_evidence (F : FourierSeriesPackage)
    (E : FourierSeriesEvidence F) : FourierSeriesClosed F := by
  exact And.intro E.uniformConvergenceClosed E.pointwiseConvergenceClosed

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse
