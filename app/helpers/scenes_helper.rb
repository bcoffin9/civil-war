module ScenesHelper
	def scene_params
		params.require(:scene).permit(:name, :type_of_scene, :description)
	end
end
