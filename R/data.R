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
	e$d
}
