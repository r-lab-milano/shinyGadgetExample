# Libraries ---------------------------------------------------------------

library(shiny)
library(miniUI)

# Definition --------------------------------------------------------------

myGadgetFunc <- function(inputValue1, inputValue2) {

	ui <- miniPage(
		gadgetTitleBar("My Gadget"),
		miniContentPanel(
			# Define layout, inputs, outputs
			textInput("text1",
								"Label text 1",
								value = "",
								placeholder = "write here"
			)
		)
	)

	server <- function(input, output, session) {
		# Define reactive expressions, outputs, etc.

		# When the Done button is clicked, return a value
		observeEvent(input$done, {
			returnValue <- input$text1
			stopApp(returnValue)
		})
	}

	runGadget(ui, server)
}


# Usage example -------------------------------------------------------------------

rm(a)
a <- myGadgetFunc()
a


