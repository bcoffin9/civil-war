class ScenesController < ApplicationController
	include ScenesHelper

	def create
		@scene = Scene.new(scene_params)
		@scene.battle_id = params[:battle_id]

		@scene.save

		redirect_to battle_path(@scene.battle)
	end

end
