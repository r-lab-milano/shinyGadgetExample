# Definition --------------------------------------------------------------

myGadgetFunc <- function() {
	library(shiny)
	library(miniUI)

	ui <- miniPage(
		gadgetTitleBar("My Gadget"),
		miniContentPanel(
			# Define layout, inputs, outputs
			textInput("text1",
								"Label text 1",
								value = "",
								placeholder = "write here"
			),
			selectInput(inputId = "select2",
									label = "Label select 2",
									choices = list(A = "choice1:A",
																 B = "choice2:B"),
									selected = "choice1:A"
			)
		)
	)

	server <- function(input, output, session) {
		# Define reactive expressions, outputs, etc.

		# When the Done button is clicked, return a value
		observeEvent(input$done, {
			concatAll <- paste("Input fields are:",
												 input$text1,
												 input$select2,
												 sep = " ")
			returnValue <- concatAll
			stopApp(returnValue)
		})
	}

	runGadget(ui, server)
}

myAddinGadget <- function() {
	returnValue <- myGadgetFunc()
	cat(returnValue)
}

# Usage example -------------------------------------------------------------------

# rm(a)
# a <- myGadgetFunc()
# a


