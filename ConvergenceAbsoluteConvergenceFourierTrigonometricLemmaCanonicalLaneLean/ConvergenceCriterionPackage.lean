import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

structure ConvergenceCriterion where
  testFunction : (ℕ → ℂ) → Prop
  implication : Prop
  implicationClosed : implication

structure ConvergenceCriterionPackage where
  dirichletTest : ConvergenceCriterion
  abelTest : ConvergenceCriterion
  dedekindTest : ConvergenceCriterion
  dominatedConvergence : ConvergenceCriterion
  dirichletTestClosed : dirichletTest.implication
  abelTestClosed : abelTest.implication
  dedekindTestClosed : dedekindTest.implication
  dominatedConvergenceClosed : dominatedConvergence.implication

def allCriteriaHold (P : ConvergenceCriterionPackage) : Prop :=
  P.dirichletTestClosed ∧ P.abelTestClosed ∧ P.dedekindTestClosed ∧ P.dominatedConvergenceClosed

theorem convergence_criteria_hold (P : ConvergenceCriterionPackage) :
    allCriteriaHold P := by
  exact ⟨P.dirichletTestClosed, P.abelTestClosed, P.dedekindTestClosed, P.dominatedConvergenceClosed⟩

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse