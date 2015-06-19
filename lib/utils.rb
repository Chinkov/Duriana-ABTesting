module Utils
  module_function

  def set_probabilities(experiment, probabilities=[])
    alternatives = Vanity.playground.experiment(experiment).alternatives
    alternatives.each_with_index do |alternative, index|
      alternative.probability = probabilities[index]
    end
    Vanity.playground.experiment(experiment).set_alternative_probabilities alternatives
    Vanity.playground.experiment(experiment)
  end
end
