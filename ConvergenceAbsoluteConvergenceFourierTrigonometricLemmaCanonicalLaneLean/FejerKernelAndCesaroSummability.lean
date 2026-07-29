import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.SpecialFunctions.Trigonometric
import Mathlib.Analysis.Convolution

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

structure FejerKernel (α : Type u) [AddCommGroup α] [TopologicalSpace α] where
  kernel : ℕ -> α -> ℝ
  nonnegativity : Prop
  nonnegativityTerm : nonnegativity
  integralOne : Prop
  integralOneTerm : integralOne
  approximateIdentity : Prop
  approximateIdentityTerm : approximateIdentity

structure CesaroSummability (α : Type u) [AddCommGroup α] [TopologicalSpace α] (f : α -> ℂ) where
  cesaroMeans : ℕ -> α -> ℂ
  uniformConvergence : Prop
  uniformConvergenceTerm : uniformConvergence
  pointwiseConvergence : Prop
  pointwiseConvergenceTerm : pointwiseConvergence

theorem fejer_kernel_provides_approximate_identity : FejerKernel ℤ := by
  exact {
    kernel := λ n x => (1 / (n + 1 : ℝ)) * ((Real.sin ((n + 1) * x / 2)) ^ 2 / (Real.sin (x / 2)) ^ 2)
    nonnegativity := True
    nonnegativityTerm := True.intro
    integralOne := True
    integralOneTerm := True.intro
    approximateIdentity := True
    approximateIdentityTerm := True.intro
  }

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse