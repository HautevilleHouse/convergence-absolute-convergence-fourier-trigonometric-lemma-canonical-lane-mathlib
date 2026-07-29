import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

structure FejerKernelPackage where
  kernelFunction : ℕ -> ℝ -> ℝ
  positivity : ℕ -> ℝ -> Prop
  approximationIdentity : Prop
  cesaroSummation : Prop
  uniformApproximation : Prop

structure FejerKernelEvidence (F : FejerKernelPackage) where
  positivityClosed : ∀ n x, F.positivity n x
  approximationIdentityClosed : F.approximationIdentity
  cesaroSummationClosed : F.cesaroSummation
  uniformApproximationClosed : F.uniformApproximation

def FejerKernelClosed (F : FejerKernelPackage) : Prop :=
  (∀ n x, F.positivity n x) ∧ F.approximationIdentity ∧ F.cesaroSummation ∧ F.uniformApproximation

theorem fejer_kernel_closed_from_evidence (F : FejerKernelPackage)
    (E : FejerKernelEvidence F) : FejerKernelClosed F := by
  exact And.intro (fun n x => E.positivityClosed n x)
    (And.intro E.approximationIdentityClosed
      (And.intro E.cesaroSummationClosed E.uniformApproximationClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse
