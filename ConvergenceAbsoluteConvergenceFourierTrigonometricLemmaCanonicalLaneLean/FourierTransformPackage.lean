import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

structure FourierTransformPackage where
  transformDefinition : Type u
  inversionTheorem : Prop
  convolutionTheorem : Prop
  plancherelTheorem : Prop
  riemannLebesgueLemma : Prop

structure FourierTransformEvidence (T : FourierTransformPackage) where
  inversionTheoremClosed : T.inversionTheorem
  convolutionTheoremClosed : T.convolutionTheorem
  plancherelTheoremClosed : T.plancherelTheorem
  riemannLebesgueLemmaClosed : T.riemannLebesgueLemma

def FourierTransformClosed (T : FourierTransformPackage) : Prop :=
  T.inversionTheorem ∧ T.convolutionTheorem ∧
  T.plancherelTheorem ∧ T.riemannLebesgueLemma

theorem fourier_transform_closed_from_evidence
    (T : FourierTransformPackage) (E : FourierTransformEvidence T) :
    FourierTransformClosed T := by
  exact And.intro E.inversionTheoremClosed
    (And.intro E.convolutionTheoremClosed
      (And.intro E.plancherelTheoremClosed E.riemannLebesgueLemmaClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse