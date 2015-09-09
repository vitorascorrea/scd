class Dashboard < ActiveRecord::Base
	
	def graficoAgencias(intervalo)
		@agency = Agency.all
		g = Gruff::Bar.new(545)
		g.legend_font_size = 18
		g.title = "Número de vendas por agência"
		g.theme = { # Declare a custom theme
			:colors => %w(orange purple green blue red gray pink black brown violet), # colors can be described on hex values (#0f0f0f)
			:marker_color => 'black', # The horizontal lines color
			:background_colors => %w(white white) # you can use instead: :background_image => ‘some_image.png’
		}
		@agency.each do |a|
			g.data a.name, Gather.where(["agency_id = ?", a.id]).count
		end
		g.write("app/assets/images/charts/barra_agencias.png")
	end

	def graficoUrnas(intervalo)
		@coffin = Gather.group(:coffin_id).order('count_id DESC').limit(5).count(:id)
		g = Gruff::Pie.new(545)
		@coffin.each do |c|
			if c[0] != nil
				g.data Coffin.find(c[0]).name, c[1]
			end
		end		

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

	def graficoCemiterios(intervalo)
		@cemetery = Gather.group(:cemetery_id).order('count_id DESC').limit(5).count(:id)
		g = Gruff::Pie.new(545)
		@cemetery.each do |c|
			if c[0] != nil
				g.data Cemetery.find(c[0]).name, c[1]
			end
		end		

		g.legend_font_size = 18
		g.title = "Cemitérios mais contratados"
		g.theme = { # Declare a custom theme
			:colors => %w(orange purple green blue red gray pink black brown), # colors can be described on hex values (#0f0f0f)
			:marker_color => 'black', # The horizontal lines color
			:background_colors => %w(white white) # you can use instead: :background_image => ‘some_image.png’
		}
		g.title_margin = 0
		#g.hide_legend = true		
		g.write("app/assets/images/charts/pizza_cemiterios.png")
	end

	def graficoVelorios(intervalo)
		@funeral = Gather.group(:funeral_id).order('count_id DESC').all.count(:id)
		g = Gruff::Bar.new(545)
		g.legend_font_size = 18
		 g.y_axis_increment = 1
		g.title = "Número de reservas por velório"
		g.theme = { # Declare a custom theme
			:colors => %w(orange purple green blue red gray pink black brown violet), # colors can be described on hex values (#0f0f0f)
			:marker_color => 'black', # The horizontal lines color
			:background_colors => %w(white white) # you can use instead: :background_image => ‘some_image.png’
		}		
		
		@funeral.each do |f|
			if f[0] != nil
				g.data Funeral.find(f[0]).name, f[1]
			end
		end
		g.sort = true
		g.write("app/assets/images/charts/linha_velorio.png")
	end

end