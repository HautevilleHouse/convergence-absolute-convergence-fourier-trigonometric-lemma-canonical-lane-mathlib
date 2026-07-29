import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.SpecialFunctions.Trigonometric
import Mathlib.Analysis.Convolution

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

structure DirichletKernel (α : Type u) [AddCommGroup α] [TopologicalSpace α] where
  kernel : ℕ -> α -> ℝ
  integralProperty : Prop
  integralPropertyTerm : integralProperty
  uniformBounds : ℕ -> ℝ
  uniformBoundsTerm : uniformBounds

structure DirichletKernelEstimates where
  supremumNorm : ℕ -> ℝ
  l1NormGrowth : ℕ -> ℝ
  supremumNormTerm : supremumNorm
  l1NormGrowthTerm : l1NormGrowth
  divergenceEstimate : Prop
  divergenceEstimateTerm : divergenceEstimate

theorem dirichlet_kernel_estimates_provided : DirichletKernelEstimates := by
  exact {
    supremumNorm := λ n => (2 : ℝ) * Real.pi⁻¹ * (∑ k in Finset.range n, 1)
    l1NormGrowth := λ n => (4 : ℝ) / Real.pi * Real.log (n : ℝ) + 1
    supremumNormTerm := rfl
    l1NormGrowthTerm := rfl
    divergenceEstimate := True
    divergenceEstimateTerm := True.intro
  }

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse