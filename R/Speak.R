#' speak no evil
#'
#' Plays an audioclip of the words "No evil".
#' On Windows and Linux machines the function should directly call the system default player of .wav files.
#' On Mac machines it might be necessary to set the default with something like tuneR::setWavPlayer("/Applications/'QuickTime Player.app'/Contents/MacOS/'QuickTime Player'").
#'
#' @author Greg Pilgrim \email{gpilgrim2670@@gmail.com}
#'
#' @importFrom tuneR play
#' @return Plays an audio clip of the words "No Evil.".
#'
#' @param ... an input, doesn't matter, isn't used
#' @export
#'
#' @examples \dontrun{
#' Speak()
#' }
#'

Speak <- function(...) {
  file_path <- system.file("audio", "No_Evil.wav", package = "ThreeWiseMonkeys")
  # file_path <- here::here("audio", "No_Evil.wav")
  # tuneR::setWavPlayer("/Applications/'QuickTime Player.app'/Contents/MacOS/'QuickTime Player'")
  if(Sys.info()[['sysname']] == "Darwin") {
    message("ThreeWiseMonkeys requires you supply a .wav player as for example tuneR::setWavPlayer(path to player) prior to calling Here()")
    tuneR::play(file_path)
  } else {
    message("ThreeWiseMonkeys will launch your default .wav player.")
    tuneR::play(file_path)
  }
}
