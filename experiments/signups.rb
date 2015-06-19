require 'utils'

ab_test "Signup" do
  alternatives "with_onboarding", "without_onboarding"
  description "New feature only available to some projects"
  metrics :signups
  score_method :bayes_bandit_score
end

::Utils.set_probabilities(:signups, [80,20])
