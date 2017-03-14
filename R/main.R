# Libraries ---------------------------------------------------------------

library(shiny)
library(miniUI)

# Definition --------------------------------------------------------------

myGadgetFunc <- function(inputValue1, inputValue2) {

	ui <- miniPage(
		gadgetTitleBar("My Gadget"),
		miniContentPanel(
			# Define layout, inputs, outputs
		)
	)

	server <- function(input, output, session) {
		# Define reactive expressions, outputs, etc.

		# When the Done button is clicked, return a value
		observeEvent(input$done, {
			returnValue <- "test OK"
			stopApp(returnValue)
		})
	}

	runGadget(ui, server)
}


# Usage example -------------------------------------------------------------------

a <- myGadgetFunc()
a


