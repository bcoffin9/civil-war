module BattlesHelper
	
	def battle_params
		params.require(:battle).permit(:title, :description, :tag_list)
	end
end


