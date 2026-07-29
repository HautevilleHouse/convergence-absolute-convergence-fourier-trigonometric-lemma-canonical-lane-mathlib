import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

structure AbsoluteConvergencePackage where
  series : ℕ -> ℝ
  coefficients : ℕ -> ℝ
  partialSums : ℕ -> ℝ
  absoluteSummation : Prop
  convergenceCondition : Prop
  absoluteConvergent : Prop

structure AbsoluteConvergenceEvidence (A : AbsoluteConvergencePackage) where
  absoluteSummationClosed : A.absoluteSummation
  convergenceConditionClosed : A.convergenceCondition
  absoluteConvergentClosed : A.absoluteConvergent

def AbsoluteConvergenceClosed (A : AbsoluteConvergencePackage) : Prop :=
  A.absoluteSummation ∧ A.convergenceCondition ∧ A.absoluteConvergent

theorem absolute_convergence_closed_from_evidence (A : AbsoluteConvergencePackage)
    (E : AbsoluteConvergenceEvidence A) : AbsoluteConvergenceClosed A := by
  exact And.intro E.absoluteSummationClosed
    (And.intro E.convergenceConditionClosed E.absoluteConvergentClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse
