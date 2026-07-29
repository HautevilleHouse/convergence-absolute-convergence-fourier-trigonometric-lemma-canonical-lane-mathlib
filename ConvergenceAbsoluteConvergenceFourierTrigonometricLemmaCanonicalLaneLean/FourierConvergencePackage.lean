import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

structure FourierConvergencePackage where
  integrableFunction : Type u
  l1Norm : Prop
  fourierCoefficients : Prop
  partialSums : Prop
  pointwiseConvergence : Prop
  uniformConvergence : Prop
  convergenceInL1 : Prop

structure FourierConvergenceEvidence (F : FourierConvergencePackage) where
  integrableFunctionClosed : F.integrableFunction
  l1NormClosed : F.l1Norm
  fourierCoefficientsClosed : F.fourierCoefficients
  partialSumsClosed : F.partialSums
  pointwiseConvergenceClosed : F.pointwiseConvergence
  uniformConvergenceClosed : F.uniformConvergence
  convergenceInL1Closed : F.convergenceInL1

def FourierConvergenceClosed (F : FourierConvergencePackage) : Prop :=
  F.integrableFunction ∧ F.l1Norm ∧ F.fourierCoefficients ∧
  F.partialSums ∧ F.pointwiseConvergence ∧ F.uniformConvergence ∧
  F.convergenceInL1

theorem fourier_convergence_closed_from_evidence
    (F : FourierConvergencePackage) (E : FourierConvergenceEvidence F) :
    FourierConvergenceClosed F := by
  exact And.intro E.integrableFunctionClosed
    (And.intro E.l1NormClosed
      (And.intro E.fourierCoefficientsClosed
        (And.intro E.partialSumsClosed
          (And.intro E.pointwiseConvergenceClosed
            (And.intro E.uniformConvergenceClosed
              E.convergenceInL1Closed)))))

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse