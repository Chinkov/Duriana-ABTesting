class Api::V1::AbTestingsController < ApplicationController
  before_filter :check_prerequisites

  use_vanity { |c| c.params[:userID] }

  def variants
    variant = ab_test(experiment)
    render :json => { variant: variant, s: 0 }.to_json
  end

  def track # if the experiment is success, we call this method
    track!(experiment, { identity: params[:userID] })
    render :json => { s: 0 }
  end

  private

  def experiment
    params[:experiment].try(:to_sym)
  end

  def check_prerequisites
    render_error unless params[:userID] && params[:experiment]
  end
end
