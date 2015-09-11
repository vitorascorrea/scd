class DashboardController < ApplicationController
	def show
		@dash = Dashboard.new
		@gather = Gather.all
		@intervalo = params[:interval]
		@dash.graficoAgencias(@intervalo)
		@dash.graficoUrnas(@intervalo)
		@dash.graficoVelorios(@intervalo)
		@dash.graficoCemiterios(@intervalo)
	end
end
