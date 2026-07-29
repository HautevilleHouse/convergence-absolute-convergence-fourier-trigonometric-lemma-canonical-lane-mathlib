import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

structure FourierTrigonometricSeries (α : Type u) [AddCommGroup α] [TopologicalSpace α] where
  domain : α -> Prop
  coefficients : ℤ -> ℂ
  terms : ℤ -> α -> ℂ
  partialSums : ℕ -> α -> ℂ
  seriesConvergesPointwise : Prop
  seriesConvergesUniformly : Prop

structure FourierCoefficientCondition (α : Type u) [AddCommGroup α] [TopologicalSpace α] (f : α -> ℂ) where
  integrability : Prop
  integrabilityTerm : integrability
  coefficientFormula : ℤ -> ℂ
  coefficientDecay : Prop
  coefficientDecayTerm : coefficientDecay

structure ConvergenceCondition (α : Type u) [AddCommGroup α] [TopologicalSpace α] (f : α -> ℂ) where
  pointwiseConvergence : Prop
  uniformConvergence : Prop
  absoluteConvergence : Prop
  pointwiseConvergenceTerm : pointwiseConvergence
  uniformConvergenceTerm : uniformConvergence
  absoluteConvergenceTerm : absoluteConvergence

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse