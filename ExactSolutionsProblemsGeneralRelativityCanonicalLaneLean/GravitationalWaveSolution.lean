import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean.EinsteinFieldEquations

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure GravitationalWaveSolutionPackage (E : EinsteinFieldEquationsPackage) where
  polarizationPlus : Type v
  polarizationCross : Type v
  propagationSpeed : ℝ
  transverseTraceless : Prop
  vacuumSolution : Prop
  linearizedEinsteinEquations : Prop
  planeWaveApproximation : Prop

structure GravitationalWaveSolutionEvidence {E : EinsteinFieldEquationsPackage}
    (G : GravitationalWaveSolutionPackage E) where
  transverseTracelessClosed : G.transverseTraceless
  vacuumSolutionClosed : G.vacuumSolution
  linearizedEinsteinEquationsClosed : G.linearizedEinsteinEquations
  planeWaveApproximationClosed : G.planeWaveApproximation

def GravitationalWaveSolutionClosed {E : EinsteinFieldEquationsPackage}
    (G : GravitationalWaveSolutionPackage E) : Prop :=
  G.transverseTraceless ∧ G.vacuumSolution ∧ G.linearizedEinsteinEquations ∧
  G.planeWaveApproximation

theorem gravitational_wave_solution_closed_from_evidence
    {E : EinsteinFieldEquationsPackage} (G : GravitationalWaveSolutionPackage E)
    (Ev : GravitationalWaveSolutionEvidence G) : GravitationalWaveSolutionClosed G := by
  exact And.intro Ev.transverseTracelessClosed
    (And.intro Ev.vacuumSolutionClosed
      (And.intro Ev.linearizedEinsteinEquationsClosed Ev.planeWaveApproximationClosed))

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse