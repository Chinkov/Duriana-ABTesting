require 'utils'

ab_test "Force shipping" do
  alternatives "with_force_shipping", "without_force_shipping"
  description "New feature only available to some projects"
  metrics :force_shippings
  score_method :bayes_bandit_score
end

::Utils.set_probabilities(:force_shippings, [90,10])
