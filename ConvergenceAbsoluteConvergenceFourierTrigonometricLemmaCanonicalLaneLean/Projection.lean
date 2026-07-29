import ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def fourierProjection : Projection FourierEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem fourier_projection_idempotent (x : FourierEndgameState) :
    fourierProjection.toFun (fourierProjection.toFun x) = fourierProjection.toFun x := by
  exact fourierProjection.idempotent x

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse