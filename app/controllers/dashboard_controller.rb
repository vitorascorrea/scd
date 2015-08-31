class DashboardController < ApplicationController
	def show
		@dash = Dashboard.new
		@gather = Gather.all
		@dash.graficoAgencias
		@dash.graficoUrnas
		@dash.graficoVelorios
	end
end
