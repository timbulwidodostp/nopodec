# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Decomposition of the observed difference between averages of y of group A and B in 4 components, as in Nopo (2008) Use nopodec (decr) With (In) R Software
install.packages("remotes")
remotes::install_github("gibonet/decr")
library("decr")
nopodec = read.csv("https://raw.githubusercontent.com/timbulwidodostp/nopodec/main/nopodec/nopodec.csv",sep = ";")
# Estimation Decomposition of the observed difference between averages of y of group A and B in 4 components, as in Nopo (2008) Use nopodec (decr) With (In) R Software
# Common support and computation of counterfactual weights
nopodec <- reweight_strata_all2(data = nopodec, treatment = "gender", variables = c("sector", "education"), y = "wage", weights = "sample_weights")
# Computation of the elements necessary to the decomposition
nopodec <- nopodec_mean(nopodec)
# Nopo decomposition
nopodec(nopodec, counterfactual = "AB")
# Decomposition of the observed difference between averages of y of group A and B in 4 components, as in Nopo (2008) Use nopodec (decr) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished