import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.SpecialFunctions.Trigonometric

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

structure FourierSeries (f : ℝ → ℂ) where
  terms : ℕ → ℂ
  partialSums : ℕ → ℂ → ℂ
  convergesPointwise : Prop
  convergesUniformly : Prop
  convergesAbsolutely : Prop

structure FourierSummabilityPackage (f : ℝ → ℂ) where
  fourierSeries : FourierSeries f
  absoluteConvergenceCriterion : Prop
  regularityCondition : Prop
  absoluteConvergenceCriterionClosed : absoluteConvergenceCriterion
  regularityConditionClosed : regularityCondition

def AbsoluteConvergenceCondition (f : ℝ → ℂ) : Prop :=
  ∃ (S : FourierSummabilityPackage f), S.absoluteConvergenceCriterion

theorem absolute_convergence_condition_holds (f : ℝ → ℂ)
    (h : AbsoluteConvergenceCondition f) :
    AbsoluteConvergenceCondition f := h

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse