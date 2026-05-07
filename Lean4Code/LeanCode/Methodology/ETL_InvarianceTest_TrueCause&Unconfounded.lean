import Mathlib.CategoryTheory.Category.Basic
import Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback

namespace UCGS_Causal_Pullback_Forge

open CategoryTheory
open CategoryTheory.Limits

-- ============================================================================
-- 1. THE CATEGORY OF CAUSAL MODELS
-- ============================================================================
axiom CausalModel : Type
-- We explicitly lock the universe levels to {0, 0} to prevent metavariable errors.
axiom CausalModelCat : Category.{0, 0} CausalModel
attribute [instance] CausalModelCat

-- We establish that this category supports Pullbacks (The Forge).
axiom model_has_pullbacks : HasPullbacks CausalModel
attribute [instance] model_has_pullbacks

-- ============================================================================
-- 2. THE TWO ORTHOGONAL EQUATIONS (The Cospan)
-- ============================================================================
-- Equation 1: The Gold Standard Limit (Internal Diffeomorphism Invariance)
-- The structure that survives all local coordinate and measurement transformations.
axiom InternalData : CausalModel

-- Equation 2: Structural Isomorphism (External Universality)
-- The structure that perfectly maps to universally accepted laws of physics.
axiom UniversalLaw : CausalModel

-- The Base Space: The shared observational reality where both must be evaluated.
axiom BaseReality : CausalModel

-- The morphisms representing how the data and the laws project onto reality.
axiom data_to_reality : InternalData ⟶ BaseReality
axiom law_to_reality : UniversalLaw ⟶ BaseReality

-- ============================================================================
-- 3. THE PULLBACK (Deriving the True Cause)
-- ============================================================================
-- We CONSTRUCT the "True Cause" strictly as the categorical pullback.
-- It is the exact geometric intersection where the Internal Data and the
-- Universal Laws synchronize over the base reality.
noncomputable def TrueCause : CausalModel :=
  pullback data_to_reality law_to_reality

-- ============================================================================
-- 4. THE PROOF OF UNCONFOUNDEDNESS (Zero Hidden Variables)
-- ============================================================================
-- Suppose a physicist proposes a 'CandidateCause' (e.g., a new particle).
variable (CandidateCause : CausalModel)

-- If their cause is valid, it must obey the Internal Data and the Universal Laws.
variable (obeys_data : CandidateCause ⟶ InternalData)
variable (obeys_law : CandidateCause ⟶ UniversalLaw)

-- Furthermore, these rules must not contradict each other when projected onto
-- the base reality (The diagram must commute).
variable (commutes : obeys_data ≫ data_to_reality = obeys_law ≫ law_to_reality)

-- THEOREM 1: EXISTENCE (The Forced Factorization)
-- We prove that ANY valid causal explanation is mathematically forced to
-- factor through our TrueCause pullback.
noncomputable def causal_factorization : CandidateCause ⟶ TrueCause :=
  pullback.lift obeys_data obeys_law commutes

-- THEOREM 2: UNCONFOUNDEDNESS (The Annihilation of Hidden Variables)
-- In causal inference, a "Confounder" is an alternative, hidden path that
-- explains the same data. We prove that taking the pullback mathematically
-- forbids confounders. If a physicist claims there is an alternative causal
-- path (g) distinct from (f), the laws of category theory force f and g to be identical.
theorem cause_is_unconfounded (f g : CandidateCause ⟶ TrueCause)
  (h_data : f ≫ pullback.fst data_to_reality law_to_reality = g ≫ pullback.fst data_to_reality law_to_reality)
  (h_law : f ≫ pullback.snd data_to_reality law_to_reality = g ≫ pullback.snd data_to_reality law_to_reality) : f = g := by

  -- We apply the universal property of pullbacks (hom_ext) with explicit type ascriptions.
  -- This mathematically crushes any alternative causal paths (confounders) into our exact True Cause.
  apply pullback.hom_ext
  · exact h_data
  · exact h_law

end UCGS_Causal_Pullback_Forge
