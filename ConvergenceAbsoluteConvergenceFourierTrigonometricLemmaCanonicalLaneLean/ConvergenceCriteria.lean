import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

structure ConvergenceCriteriaPackage where
  function : ℝ -> ℝ
  fourierCoefficients : ℕ -> ℝ
  pointwiseCondition : Prop
  uniformCondition : Prop
  absoluteCondition : Prop
  carlesonCondition : Prop

structure ConvergenceCriteriaEvidence (C : ConvergenceCriteriaPackage) where
  pointwiseConditionClosed : C.pointwiseCondition
  uniformConditionClosed : C.uniformCondition
  absoluteConditionClosed : C.absoluteCondition
  carlesonConditionClosed : C.carlesonCondition

def ConvergenceCriteriaClosed (C : ConvergenceCriteriaPackage) : Prop :=
  C.pointwiseCondition ∧ C.uniformCondition ∧ C.absoluteCondition ∧ C.carlesonCondition

theorem convergence_criteria_closed_from_evidence (C : ConvergenceCriteriaPackage)
    (E : ConvergenceCriteriaEvidence C) : ConvergenceCriteriaClosed C := by
  exact And.intro E.pointwiseConditionClosed
    (And.intro E.uniformConditionClosed
      (And.intro E.absoluteConditionClosed E.carlesonConditionClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse
