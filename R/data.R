#' @export
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

	e$d
}
