import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

structure TrigonometricKernelPackage where
  dirichletKernel : Type u
  fejerKernel : Type v
  kernelApproximation : Prop
  positiveKernel : Prop
  convergenceInNorm : Prop

structure TrigonometricKernelEvidence (K : TrigonometricKernelPackage) where
  kernelApproximationClosed : K.kernelApproximation
  positiveKernelClosed : K.positiveKernel
  convergenceInNormClosed : K.convergenceInNorm

def TrigonometricKernelClosed (K : TrigonometricKernelPackage) : Prop :=
  K.kernelApproximation ∧ K.positiveKernel ∧ K.convergenceInNorm

theorem trigonometric_kernel_closed_from_evidence
    (K : TrigonometricKernelPackage) (E : TrigonometricKernelEvidence K) :
    TrigonometricKernelClosed K := by
  exact And.intro E.kernelApproximationClosed
    (And.intro E.positiveKernelClosed E.convergenceInNormClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse