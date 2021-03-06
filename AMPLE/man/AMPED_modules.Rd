% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/modules.R
\name{AMPED modules}
\alias{AMPED modules}
\alias{stoch_params_setterUI}
\alias{stoch_params_setter}
\alias{set_stoch_params}
\alias{stock_params_setterUI}
\alias{stock_params_setter}
\alias{get_lh_params}
\alias{mp_params_setterUI}
\alias{mp_params_setter}
\alias{mp_params_switcheroo}
\title{Modules for common features of the AMPED Shiny apps.}
\usage{
stoch_params_setterUI(
  id,
  show_biol_prod_sigma = TRUE,
  show_biol_est_sigma = TRUE,
  show_biol_est_bias = TRUE,
  init_prod_sigma = 0,
  init_est_sigma = 0,
  init_est_bias = 0,
  show_var = TRUE
)

stoch_params_setter(input, output, session)

set_stoch_params(input)

stock_params_setterUI(id)

stock_params_setter(input, output, session)

get_lh_params(input)

mp_params_setterUI(
  id,
  mp_visible = NULL,
  title = "Select the type of HCR you want to test.",
  init_thresh_max_catch = 140,
  init_thresh_belbow = 0.5,
  init_constant_catch = 50,
  init_constant_effort = 1,
  input_label = "HCR Type"
)

mp_params_setter(input, output, session)

mp_params_switcheroo(input)
}
\arguments{
\item{id}{Shiny magic id}

\item{show_biol_prod_sigma}{Show the biological productivity variability option.}

\item{show_biol_est_sigma}{Show the estimation variability option.}

\item{show_biol_est_bias}{Show the estimation bias option.}

\item{init_prod_sigma}{Default value for biological productivity variability.}

\item{init_est_sigma}{Default value for estimation variability.}

\item{init_est_bias}{Default value for estimation bias.}

\item{show_var}{Show the variability options.}

\item{input}{The UI input.}

\item{output}{Shiny magic.}

\item{session}{Shiny magic.}

\item{mp_visible}{Which HCR types to show.}

\item{title}{The title.}

\item{init_thresh_max_catch}{Initial value of the maximum catch for the catch threshold HCR.}

\item{init_thresh_belbow}{Initial value of the belbow for the catch threshold HCR.}

\item{init_constant_catch}{Initial value of constant catch for the constant catch HCR.}

\item{init_constant_effort}{Initial value of constant effort for the constant effort HCR.}

\item{input_label}{The label of the menu.}
}
\value{
A taglist

A list of stochasticity options.

A taglist

A list of stock options.

A taglist

A list of HCR options.
}
\description{
stoch_params_setterUI() is the interface for the stochasticity options.

stoch_params_setter() does the setting.

set_stoch_params() Sets up default values. Only exported to get the examples to work.

stock_params_setterUI() is the interface for the stock options (e.g. life history and exploitation status).

stock_params_setter() does the setting.

get_lh_params() Sets up default values. Only exported to get the examples to work.

mp_params_setterUI() is the interface for the HCR options

mp_params_setter() does the setting.

mp_params_switcheroo() Sets up default values. Only exported to get the examples to work.
}
\examples{
\dontrun{
 # Put something like this in the Shiny apps UI code
 mp_params_setterUI("mpparams", mp_visible=c("Threshold catch", "Constant catch",
 "Threshold effort", "Constant effort"))
 # And then something like this in the Shiny server code
 get_mp_params <- callModule(mp_params_setter, "mpparams") 
}
}
