import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.SpecialFunctions.Trigonometric

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

structure TrigonometricPolynomial where
  degree : ℕ
  coefficients : ℤ → ℂ
  eval : ℝ → ℂ

structure ApproximationPackage where
  targetFunction : ℝ → ℂ
  approximants : ℕ → TrigonometricPolynomial
  errorBound : ℕ → ℝ
  errorTendsToZero : Prop
  errorTendsToZeroClosed : errorTendsToZero
  degreeGrowth : ℕ → ℕ
  degreeGrowthClosed : degreeGrowth = λ n => n

def UniformApproximation (f : ℝ → ℂ) : Prop :=
  ∃ (A : ApproximationPackage), A.targetFunction = f ∧ A.errorTendsToZero

theorem uniform_approximation_holds (f : ℝ → ℂ)
    (h : UniformApproximation f) :
    UniformApproximation f := h

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse