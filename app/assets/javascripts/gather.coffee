# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
$(document).on 'ready page:load', ->
	$("#healthcare_company").hide()
	form = $('#healthcare_company').html()	
	$('#gather_healthcare').change ->
		selecionado = $('#gather_healthcare :selected').text()
		if selecionado == "Sim"
			$("#healthcare_company").show()
			$('#healthcare_company').html(form)
		else
			$('#healthcare_company').empty			
			$('#healthcare_company').hide()

	$("#not_outside").hide()
	form_o = $('#not_outside').html()	
	$('#gather_outside').change ->
		selecionado = $('#gather_outside :selected').text()
		if selecionado == "Não"
			$("#not_outside").show()
			$('#not_outside').html(form_o)
		else
			$('#not_outside').empty			
			$('#not_outside').hide()