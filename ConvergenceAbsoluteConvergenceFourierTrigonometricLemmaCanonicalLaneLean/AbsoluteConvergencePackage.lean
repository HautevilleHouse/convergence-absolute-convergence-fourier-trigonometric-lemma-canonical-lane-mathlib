import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

structure AbsoluteConvergencePackage {F : FourierSeriesPackage} where
  absoluteSummability : Prop
  weierstrassMCriterion : Prop
  dominatedConvergence : Prop
  rearrangementInvariance : Prop
  absoluteConvergenceTest : Prop

structure AbsoluteConvergenceEvidence {F : FourierSeriesPackage}
    (A : AbsoluteConvergencePackage F) where
  absoluteSummabilityClosed : A.absoluteSummability
  weierstrassMCriterionClosed : A.weierstrassMCriterion
  dominatedConvergenceClosed : A.dominatedConvergence
  rearrangementInvarianceClosed : A.rearrangementInvariance
  absoluteConvergenceTestClosed : A.absoluteConvergenceTest

def AbsoluteConvergenceClosed {F : FourierSeriesPackage}
    (A : AbsoluteConvergencePackage F) : Prop :=
  A.absoluteSummability ∧ A.weierstrassMCriterion ∧
  A.dominatedConvergence ∧ A.rearrangementInvariance ∧ A.absoluteConvergenceTest

theorem absolute_convergence_closed_from_evidence
    {F : FourierSeriesPackage} (A : AbsoluteConvergencePackage F)
    (E : AbsoluteConvergenceEvidence A) : AbsoluteConvergenceClosed A := by
  exact And.intro E.absoluteSummabilityClosed
    (And.intro E.weierstrassMCriterionClosed
      (And.intro E.dominatedConvergenceClosed
        (And.intro E.rearrangementInvarianceClosed E.absoluteConvergenceTestClosed)))

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse