// This file was generated by Rcpp::compileAttributes
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// split_df_cpp
std::vector<CharacterVector> split_df_cpp(DataFrame df);
RcppExport SEXP Newsmap_split_df_cpp(SEXP dfSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< DataFrame >::type df(dfSEXP);
    __result = Rcpp::wrap(split_df_cpp(df));
    return __result;
END_RCPP
}
