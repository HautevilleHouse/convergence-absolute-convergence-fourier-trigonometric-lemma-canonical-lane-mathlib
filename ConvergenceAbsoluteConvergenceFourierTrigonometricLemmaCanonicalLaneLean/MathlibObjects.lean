import ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FourierSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  measureSpace : Type
  integral : Type

structure FourierAdmittedObject where
  space : FourierSpace
  functionSpace : Prop
  fourierCoefficientsSummable : Prop
  fourierSeriesConverges : Prop
  conclusion : fourierSeriesConverges

structure FourierEndgameState where
  object : FourierAdmittedObject

def FourierWitnessClosed (O : FourierAdmittedObject) : Prop :=
  O.fourierSeriesConverges

end ConvergenceAbsoluteConvergenceFourierTrigonometricLemmaCanonicalLaneLean
end HautevilleHouse