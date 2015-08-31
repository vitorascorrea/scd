class Dashboard < ActiveRecord::Base
	
	def graficoAgencias
		@agency = Agency.all
		g = Gruff::Bar.new(550)
		g.legend_font_size = 18
		g.title = "Número de vendas por agência"
		g.theme = { # Declare a custom theme
			:colors => %w(orange purple green blue red gray pink black brown), # colors can be described on hex values (#0f0f0f)
			:marker_color => 'black', # The horizontal lines color
			:background_colors => %w(white white) # you can use instead: :background_image => ‘some_image.png’
		}
		@agency.each do |a|
			g.data a.name, Gather.where(agency: a).count
		end
		g.write("app/assets/images/charts/barra_agencias.png")
	end

	def graficoUrnas
		@coffin = Coffin.all
		g = Gruff::Pie.new(550)

		@coffin.each do |c|
			g.data c.name, Gather.where(coffin: c).count unless Gather.where(coffin: c).count == 0
		end
		g.sort = true	

		g.legend_font_size = 18
		g.title = "Urnas mais vendidas"
		g.theme = { # Declare a custom theme
			:colors => %w(orange purple green blue red gray pink black brown), # colors can be described on hex values (#0f0f0f)
			:marker_color => 'black', # The horizontal lines color
			:background_colors => %w(white white) # you can use instead: :background_image => ‘some_image.png’
		}
		g.title_margin = 0
		#g.hide_legend = true

		
		g.write("app/assets/images/charts/pizza_urnas.png")
	end

	def graficoVelorios
		@funeral = Funeral.all
		g = Gruff::Bar.new(550)
		g.legend_font_size = 18
		g.title = "Velórios mais reservados"
		g.theme = { # Declare a custom theme
			:colors => %w(orange purple green blue red gray pink black brown), # colors can be described on hex values (#0f0f0f)
			:marker_color => 'black', # The horizontal lines color
			:background_colors => %w(white white) # you can use instead: :background_image => ‘some_image.png’
		}
		
		
		@funeral.each do |f|
			g.data f.name, Gather.where(funeral: f).count
		end
		g.sort = true
		g.write("app/assets/images/charts/linha_velorio.png")
	end

end