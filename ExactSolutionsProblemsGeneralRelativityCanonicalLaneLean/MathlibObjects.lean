import ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ExactSolutionsSpacetime where
  carrier : Type
  topology : TopologicalSpace carrier

structure ExactSolutionsAdmittedObject where
  spacetime : ExactSolutionsSpacetime
  fourDimensionalLorentzian : Prop
  satisfiesEFE : Prop
  exactSolutionModel : Type
  exactSolutionModelTopology : TopologicalSpace exactSolutionModel
  diffeomorphicToSolution : Prop
  conclusion : diffeomorphicToSolution

structure ExactSolutionsEndgameState where
  object : ExactSolutionsAdmittedObject

def ExactSolutionsWitnessClosed (O : ExactSolutionsAdmittedObject) : Prop :=
  O.diffeomorphicToSolution

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse
