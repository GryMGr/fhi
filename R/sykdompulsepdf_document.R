#' hi
#' @param ... test
#' @importFrom rmarkdown pandoc_available pdf_document
#' @export sykdompuls_mage_document
sykdompuls_mage_document <- function(...) {
  rmarkdown::pandoc_available("1.9", TRUE)
  template <- system.file("rmarkdown", "templates", "sykdompuls_mage_document", "resources", "template.latex",
    package = "fhi"
  )
  base <- rmarkdown::pdf_document(..., template = template, latex_engine = "xelatex")
  base$inherits <- "pdf_document"

  base
}


#' hi
#' @param ... test
#' @importFrom rmarkdown pandoc_available pdf_document
#' @export sykdompuls_luft_document
sykdompuls_luft_document <- function(...) {
  rmarkdown::pandoc_available("1.9", TRUE)

  template <- system.file("rmarkdown", "templates", "sykdompuls_luft_document", "resources", "template.latex",
    package = "fhi"
  )

  base <- rmarkdown::pdf_document(..., template = template, latex_engine = "xelatex")
  base$inherits <- "pdf_document"

  base
}


#' hi
#' @param output_dir a
#' @export sykdompulspdf_resources_copy
sykdompulspdf_resources_copy <- function(output_dir) {
  dir <- system.file("rmarkdown", "templates", "sykdompuls_luft_document", "skeleton",
    package = "fhi"
  )
  files <- list.files(dir, pattern = "^_skeleton")
  for (f in files) {
    file.copy(
      from = file.path(dir, f),
      to = file.path(output_dir, f)
    )
  }
}


#' hi
#' @param output_dir a
#' @export sykdompulspdf_resources_remove
sykdompulspdf_resources_remove <- function(output_dir) {
  dir <- system.file("rmarkdown", "templates", "sykdompuls_luft_document", "skeleton",
    package = "fhi"
  )
  files <- list.files(dir, pattern = "^_skeleton")

  for (f in files) {
    file.remove(file.path(output_dir, f))
  }
}
