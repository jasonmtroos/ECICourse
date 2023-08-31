#' @export
upload_images_to_canvas <- function() {
	if (require(canvasapicore)) {
		knitr::opts_knit$set(upload.fun = function(file) {
			canvasapicore::load_token_and_domain()
			resp <- cnvs::cnvs_upload(file, "/api/v1/folders/1450068/files")
			structure(resp$url, XML = resp)
		})
	}
}
