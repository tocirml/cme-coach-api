module Api
  module V1
    class CmeCoachLicensesController < ApplicationController
      def cme_coach
        if valid_parameters?(params[:specialty], params[:state])
          return render json: { status: 'ERROR', message: 'Invalid parameters' },
                        status: 400
        end

        specialty = Specialty.find_by_name(params[:specialty])

        cmelicenses = specialty.licenses_by_state(params[:state])

        recommendations = specialty.cme_recommendations

        render json: { licenses: CmeCoachLicenseSerializer.new(cmelicenses),
                       recommendations: CmeRecommendationSerializer.new(recommendations) }
      end

      private

      def valid_parameters?(_state, _specialty)
        #ideally we would also valid here if both params have also valid data
        params[:specialty].nil? || params[:state].nil?
      end
    end
  end
end
