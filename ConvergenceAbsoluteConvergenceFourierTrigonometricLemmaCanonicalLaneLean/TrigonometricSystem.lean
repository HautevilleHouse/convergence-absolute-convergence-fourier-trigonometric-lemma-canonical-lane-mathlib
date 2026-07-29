import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

structure TrigonometricSystemPackage where
  basisFunctions : ℕ -> (ℝ -> ℝ)
  period : ℝ
  orthogonality : Prop
  completeness : Prop
  density : Prop

structure TrigonometricSystemEvidence (T : TrigonometricSystemPackage) where
  orthogonalityClosed : T.orthogonality
  completenessClosed : T.completeness
  densityClosed : T.density

def TrigonometricSystemClosed (T : TrigonometricSystemPackage) : Prop :=
  T.orthogonality ∧ T.completeness ∧ T.density

theorem trigonometric_system_closed_from_evidence (T : TrigonometricSystemPackage)
    (E : TrigonometricSystemEvidence T) : TrigonometricSystemClosed T := by
  exact And.intro E.orthogonalityClosed
    (And.intro E.completenessClosed E.densityClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse
