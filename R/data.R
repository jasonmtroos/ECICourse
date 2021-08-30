#' Access data sets used for tutorials and problem sets
#'
#' @param name The name of the data set
#' @return An object, typically a data frame
#' @examples
#' satisfaction <- get_ECI_data('problem-set-2-satisfaction')
#' @export
#' 
get_ECI_data <- function(name = NULL) {
	name <- tolower(name)
	
	e <- new.env(parent = environment())
	if (name %in% c('module-2-tutorial', 'module-4-tutorial')) {
		utils::data('M2_experiment', package = 'ECICourse', envir = e)
		assign('d', e$M2_experiment, envir = e)
	}
	if (name == 'problem-set-2-satisfaction')  {
		utils::data('P2_satisfaction', package = 'ECICourse', envir = e)
		assign('d', e$P2_satisfaction, envir = e)
	}
	if (name == 'module-6-tutorial') {
		utils::data('M6_coupon', package = 'ECICourse',  envir =  e)
		assign('d', e$M6_coupon, envir = e)
	}
	if (name == 'module-7-tutorial') {
		utils::data('M7_soda_prices', package = 'ECICourse', envir  = e)
		assign('d', e$M7_soda_prices, envir = e)
	}
	if (name == 'module-8-tutorial') {
		utils::data('M8_loyalty', package = 'ECICourse', envir = e)
		assign('d', e$M8_loyalty, envir = e)
	}
	if (name == 'final-observational') {
		utils::data('final_obs', package = 'ECICourse', envir = e)
		assign('d', e$final_obs, envir = e)
	}
	if (name == 'final-experimental') {
		utils::data('final_exp', package = 'ECICourse', envir = e)
		assign('d', e$final_exp, envir = e)
	}
	if (!is.null(e$d)) {
		return(e$d)
	}
	msg <- paste0("\n\n  There is no data set named '", name, "'.\n\n  This could because you have misspelled the name of the data set,\n  or it might be due to the ECICourse R package being\n  updated after you installed it.\n\n  To reinstall the ECICourse R package, run the following R code:\n\n    unloadNamespace('ECICourse')\n    remotes::install_github('jasonmtroos/ECICourse')\n\n")
	stop(msg)
}
