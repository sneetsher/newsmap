% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/textmodel_newsmap.R
\name{textmodel_newsmap}
\alias{textmodel_newsmap}
\title{Semi-supervised Bayesian multinomial model for geographical document
classification}
\usage{
textmodel_newsmap(x, y, smooth = 1, verbose = quanteda_options("verbose"))
}
\arguments{
\item{x}{dfm from which features will be extracted}

\item{y}{dfm in which features will be class labels}

\item{smooth}{smoothing parameter for word frequency}

\item{verbose}{if \code{TRUE}, show progress of training}
}
\description{
Train a Newsmap model to predict geographical focus of documents using a
pre-defined seed dictionary. Currently seed dictionaries are available in
English, German and Japanese.
}
\examples{
require(quanteda)

# English classifier
text_en <- c(text1 = "This is an article about Ireland.",
             text2 = "The South Korean prime minister was re-elected.")

toks_en <- tokens(text_en)
label_toks_en <- tokens_lookup(toks_en, data_dictionary_newsmap_en, levels = 3)
label_dfm_en <- dfm(label_toks_en)

feat_dfm_en <- dfm(toks_en, tolower = FALSE)

model_en <- textmodel_newsmap(feat_dfm_en, label_dfm_en)
predict(model_en)

# German classifier
text_de <- c(text1 = "Ein Artikel über Irland.",
             text2 = "Der südkoreanische Premierminister wurde wiedergewählt.")

toks_de <- tokens(text_de)
label_toks_de <- tokens_lookup(toks_de, data_dictionary_newsmap_de, levels = 3)
label_dfm_de <- dfm(label_toks_de)

feat_dfm_de <- dfm(toks_de, tolower = FALSE)

model_de <- textmodel_newsmap(feat_dfm_de, label_dfm_de)
predict(model_de)

# Japanese classifier
text_ja <- c(text1 = "これはアイルランドに関する記事です。",
             text2 = "韓国首相が再選された。")

toks_ja <- tokens(text_ja)
label_toks_ja <- tokens_lookup(toks_ja, data_dictionary_newsmap_ja, levels = 3)
label_dfm_ja <- dfm(label_toks_ja)

feat_dfm_ja <- dfm(toks_ja, tolower = FALSE)

model_ja <- textmodel_newsmap(feat_dfm_ja, label_dfm_ja)
predict(model_ja)

# Spanish classifier
text_es <- c(text1 = "Este es un artículo sobre Irlanda.",
             text2 = "El primer ministro de Corea del Sur fue re-elegido.")

toks_es <- tokens(text_es)
label_toks_es <- tokens_lookup(toks_es, data_dictionary_newsmap_es, levels = 3)
label_dfm_es <- dfm(label_toks_es)

feat_dfm_es <- dfm(toks_es, tolower = FALSE)

model_es <- textmodel_newsmap(feat_dfm_es, label_dfm_es)
predict(model_es)

}
\references{
Kohei Watanabe. 2018.
  "\href{http://www.tandfonline.com/eprint/dDeyUTBrhxBSSkHPn5uB/full}{Newsmap:
  semi-supervised approach to geographical news classification.}"
  \emph{Digital Journalism} 6(3): 294-309.
}
