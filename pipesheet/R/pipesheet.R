#' view - Function to View Excel Files
#'
#' This function writes the input data frame to an Excel file and opens it in either LibreOffice (for Unix-based systems) or Microsoft Excel (for Windows systems) for viewing.
#'
#' @param data A data frame to be written to Excel.
#' @param row.names Logical value indicating whether row names should be included in the Excel file. Default is \code{FALSE}.
#'
#' @export
#'
#' @examples
#' data(mtcars)
#' view(mtcars)
view <- function(data, row.names = F){
  f <- file.path(paste0(tempfile(),'.xlsx'))
  xlsx::write.xlsx(data,f, row.names = FALSE)
  if(.Platform$OS.type == "unix") {
    system(paste0('LD_LIBRARY_PATH= libreoffice ',f), wait = FALSE)
  } else {
    shell(paste0('start excel ',f, ' && ls'), wait = FALSE)
  }
}

#' edit - Function to Edit Excel Files
#'
#' This function writes the input data frame to an Excel file, opens it for editing in either LibreOffice (for Unix-based systems) or Microsoft Excel (for Windows systems), and returns the edited data as a tibble.
#'
#' @param data A data frame to be written to Excel.
#'
#' @return A tibble containing the edited data.
#'
#' @export
#'
#' @examples
#' data(mtcars)
#' edited_data <- edit(mtcars)
edit <- function(data){
  f <- file.path(paste0(tempfile(),'.xlsx'))
  xlsx::write.xlsx(data,f, row.names = FALSE)
  if(.Platform$OS.type == "unix") {
    system(paste0('LD_LIBRARY_PATH= libreoffice ',f), wait = TRUE)
  } else {
    shell(paste0('start excel ',f, ' && ls'), wait = TRUE)
  }
  data <- dplyr::as_tibble(xlsx::read.xlsx(f,sheetIndex = 1))
  data
}
