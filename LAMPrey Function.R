library(ggplot2)
library(tidyverse)
dat = read.csv(choose.files(), header = T)
colnames(dat)[1] = "Well"
as.factor <-dat$Well

UsedWells$Well <- droplevels(UsedWells$Well)

UsedWells <- dat %>% filter(Well %in% c("A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "A10", "A11", "A12", 
                                        "B1", "B2", "B3", "B4", "B5", "B6", "B7", "B8", "B9", "B10", "B11", "B12",
                                        "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "C12",
                                        "D1", "D2", "D3", "D4", "D5", "D6", "D7", "D8", "D9", "D10", "D11", "D12",
                                        "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12",
                                        "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10", "F11", "F12",
                                        "G1", "G2", "G3", "G4", "G5", "G6", "G7", "G8", "G9", "G10", "G11", "G12",
                                        "H1", "H2", "H3", "H4", "H5", "H6"))

A1 = UsedWells[UsedWells$Well == "A1",]
A2 = UsedWells[UsedWells$Well == "A2",]
A3 = UsedWells[UsedWells$Well == "A3",]
A4 = UsedWells[UsedWells$Well == "A4",]
A5 = UsedWells[UsedWells$Well == "A5",]
A6 = UsedWells[UsedWells$Well == "A6",]
A7 = UsedWells[UsedWells$Well == "A7",]
A8 = UsedWells[UsedWells$Well == "A8",]
A9 = UsedWells[UsedWells$Well == "A9",]
A10 = UsedWells[UsedWells$Well == "A10",]
A11 = UsedWells[UsedWells$Well == "A11",]
A12 = UsedWells[UsedWells$Well == "A12",]
B1 = UsedWells[UsedWells$Well == "B1",]
B2 = UsedWells[UsedWells$Well == "B2",]
B3 = UsedWells[UsedWells$Well == "B3",]
B4 = UsedWells[UsedWells$Well == "B4",]
B5 = UsedWells[UsedWells$Well == "B5",]
B6 = UsedWells[UsedWells$Well == "B6",]
B7 = UsedWells[UsedWells$Well == "B7",]
B8 = UsedWells[UsedWells$Well == "B8",]
B9 = UsedWells[UsedWells$Well == "B9",]
B10 = UsedWells[UsedWells$Well == "B10",]
B11 = UsedWells[UsedWells$Well == "B11",]
B12 = UsedWells[UsedWells$Well == "B12",]
C1 = UsedWells[UsedWells$Well == "C1",]
C2 = UsedWells[UsedWells$Well == "C2",]
C3 = UsedWells[UsedWells$Well == "C3",]
C4 = UsedWells[UsedWells$Well == "C4",]
C5 = UsedWells[UsedWells$Well == "C5",]
C6 = UsedWells[UsedWells$Well == "C6",]
C7 = UsedWells[UsedWells$Well == "C7",]
C8 = UsedWells[UsedWells$Well == "C8",]
C9 = UsedWells[UsedWells$Well == "C9",]
C10 = UsedWells[UsedWells$Well == "C10",]
C11 = UsedWells[UsedWells$Well == "C11",]
C12 = UsedWells[UsedWells$Well == "C12",]
D1 = UsedWells[UsedWells$Well == "D1",]
D2 = UsedWells[UsedWells$Well == "D2",]
D3 = UsedWells[UsedWells$Well == "D3",]
D4 = UsedWells[UsedWells$Well == "D4",]
D5 = UsedWells[UsedWells$Well == "D5",]
D6 = UsedWells[UsedWells$Well == "D6",]
D7 = UsedWells[UsedWells$Well == "D7",]
D8 = UsedWells[UsedWells$Well == "D8",]
D9 = UsedWells[UsedWells$Well == "D9",]
D10 = UsedWells[UsedWells$Well == "D10",]
D11 = UsedWells[UsedWells$Well == "D11",]
D12 = UsedWells[UsedWells$Well == "D12",]
E1 = UsedWells[UsedWells$Well == "E1",]
E2 = UsedWells[UsedWells$Well == "E2",]
E3 = UsedWells[UsedWells$Well == "E3",]
E4 = UsedWells[UsedWells$Well == "E4",]
E5 = UsedWells[UsedWells$Well == "E5",]
E6 = UsedWells[UsedWells$Well == "E6",]
E7 = UsedWells[UsedWells$Well == "E7",]
E8 = UsedWells[UsedWells$Well == "E8",]
E9 = UsedWells[UsedWells$Well == "E9",]
E10 = UsedWells[UsedWells$Well == "E10",]
E11 = UsedWells[UsedWells$Well == "E11",]
E12 = UsedWells[UsedWells$Well == "E12",]
F1 = UsedWells[UsedWells$Well == "F1",]
F2 = UsedWells[UsedWells$Well == "F2",]
F3 = UsedWells[UsedWells$Well == "F3",]
F4 = UsedWells[UsedWells$Well == "F4",]
F5 = UsedWells[UsedWells$Well == "F5",]
F6 = UsedWells[UsedWells$Well == "F6",]
F7 = UsedWells[UsedWells$Well == "F7",]
F8 = UsedWells[UsedWells$Well == "F8",]
F9 = UsedWells[UsedWells$Well == "F9",]
F10 = UsedWells[UsedWells$Well == "F10",]
F11 = UsedWells[UsedWells$Well == "F11",]
F12 = UsedWells[UsedWells$Well == "F12",]
G1 = UsedWells[UsedWells$Well == "G1",]
G2 = UsedWells[UsedWells$Well == "G2",]
G3 = UsedWells[UsedWells$Well == "G3",]
G4 = UsedWells[UsedWells$Well == "G4",]
G5 = UsedWells[UsedWells$Well == "G5",]
G6 = UsedWells[UsedWells$Well == "G6",]
G7 = UsedWells[UsedWells$Well == "G7",]
G8 = UsedWells[UsedWells$Well == "G8",]
G9 = UsedWells[UsedWells$Well == "G9",]
G10 = UsedWells[UsedWells$Well == "G10",]
G11 = UsedWells[UsedWells$Well == "G11",]
G12 = UsedWells[UsedWells$Well == "G12",]
H1 = UsedWells[UsedWells$Well == "H1",]
H2 = UsedWells[UsedWells$Well == "H2",]
H3 = UsedWells[UsedWells$Well == "H3",]
H4 = UsedWells[UsedWells$Well == "H4",]
H5 = UsedWells[UsedWells$Well == "H5",]
H6 = UsedWells[UsedWells$Well == "H6",]

normlamp = data.frame("A1" = A1$GREEN - A1$GREEN[A1$Cycle==1],
                      "A2" = A2$GREEN - A2$GREEN[A2$Cycle==1],
                      "A3" = A3$GREEN - A3$GREEN[A3$Cycle==1],
                      "A4" = A4$GREEN - A4$GREEN[A4$Cycle==1],
                      "A5" = A5$GREEN - A5$GREEN[A5$Cycle==1],
                      "A6" = A6$GREEN - A6$GREEN[A6$Cycle==1],
                      "A7" = A7$GREEN - A7$GREEN[A7$Cycle==1],
                      "A8" = A8$GREEN - A8$GREEN[A8$Cycle==1],
                      "A9" = A9$GREEN - A9$GREEN[A9$Cycle==1],
                      "A10" = A10$GREEN - A10$GREEN[A10$Cycle==1],
                      "A11" = A11$GREEN - A11$GREEN[A11$Cycle==1],
                      "A12" = A12$GREEN - A12$GREEN[A12$Cycle==1],
                      "B1" = B1$GREEN - B1$GREEN[B1$Cycle==1],
                      "B2" = B2$GREEN - B2$GREEN[B2$Cycle==1],
                      "B3" = B3$GREEN - B3$GREEN[B3$Cycle==1],
                      "B4" = B4$GREEN - B4$GREEN[B4$Cycle==1],
                      "B5" = B5$GREEN - B5$GREEN[B5$Cycle==1],
                      "B6" = B6$GREEN - B6$GREEN[B6$Cycle==1],
                      "B7" = B7$GREEN - B7$GREEN[B7$Cycle==1],
                      "B8" = B8$GREEN - B8$GREEN[B8$Cycle==1],
                      "B9" = B9$GREEN - B9$GREEN[B9$Cycle==1],
                      "B10" = B10$GREEN - B10$GREEN[B10$Cycle==1],
                      "B11" = B11$GREEN - B11$GREEN[B11$Cycle==1],
                      "B12" = B12$GREEN - B12$GREEN[B12$Cycle==1],
                      "C1" = C1$GREEN - C1$GREEN[C1$Cycle==1],
                      "C2" = C2$GREEN - C2$GREEN[C2$Cycle==1],
                      "C3" = C3$GREEN - C3$GREEN[C3$Cycle==1],
                      "C4" = C4$GREEN - C4$GREEN[C4$Cycle==1],
                      "C5" = C5$GREEN - C5$GREEN[C5$Cycle==1],
                      "C6" = C6$GREEN - C6$GREEN[C6$Cycle==1],
                      "C7" = C7$GREEN - C7$GREEN[C7$Cycle==1],
                      "C8" = C8$GREEN - C8$GREEN[C8$Cycle==1],
                      "C9" = C9$GREEN - C9$GREEN[C9$Cycle==1],
                      "C10" = C10$GREEN - C10$GREEN[C10$Cycle==1],
                      "C11" = C11$GREEN - C11$GREEN[C11$Cycle==1],
                      "C12" = C12$GREEN - C12$GREEN[C12$Cycle==1],
                      "D1" = D1$GREEN - D1$GREEN[D1$Cycle==1],
                      "D2" = D2$GREEN - D2$GREEN[D2$Cycle==1],
                      "D3" = D3$GREEN - D3$GREEN[D3$Cycle==1],
                      "D4" = D4$GREEN - D4$GREEN[D4$Cycle==1],
                      "D5" = D5$GREEN - D5$GREEN[D5$Cycle==1],
                      "D6" = D6$GREEN - D6$GREEN[D6$Cycle==1],
                      "D7" = D7$GREEN - D7$GREEN[D7$Cycle==1],
                      "D8" = D8$GREEN - D8$GREEN[D8$Cycle==1],
                      "D9" = D9$GREEN - D9$GREEN[D9$Cycle==1],
                      "D10" = D10$GREEN - D10$GREEN[D10$Cycle==1],
                      "D11" = D11$GREEN - D11$GREEN[D11$Cycle==1],
                      "D12" = D12$GREEN - D12$GREEN[D12$Cycle==1],
                      "E1" = E1$GREEN - E1$GREEN[E1$Cycle==1],
                      "E2" = E2$GREEN - E2$GREEN[E2$Cycle==1],
                      "E3" = E3$GREEN - E3$GREEN[E3$Cycle==1],
                      "E4" = E4$GREEN - E4$GREEN[E4$Cycle==1],
                      "E5" = E5$GREEN - E5$GREEN[E5$Cycle==1],
                      "E6" = E6$GREEN - E6$GREEN[E6$Cycle==1],
                      "E7" = E7$GREEN - E7$GREEN[E7$Cycle==1],
                      "E8" = E8$GREEN - E8$GREEN[E8$Cycle==1],
                      "E9" = E9$GREEN - E9$GREEN[E9$Cycle==1],
                      "E10" = E10$GREEN - E10$GREEN[E10$Cycle==1],
                      "E11" = E11$GREEN - E11$GREEN[E11$Cycle==1],
                      "E12" = E12$GREEN - E12$GREEN[E12$Cycle==1],
                      "F1" = F1$GREEN - F1$GREEN[F1$Cycle==1],
                      "F2" = F2$GREEN - F2$GREEN[F2$Cycle==1],
                      "F3" = F3$GREEN - F3$GREEN[F3$Cycle==1],
                      "F4" = F4$GREEN - F4$GREEN[F4$Cycle==1],
                      "F5" = F5$GREEN - F5$GREEN[F5$Cycle==1],
                      "F6" = F6$GREEN - F6$GREEN[F6$Cycle==1],
                      "F7" = F7$GREEN - F7$GREEN[F7$Cycle==1],
                      "F8" = F8$GREEN - F8$GREEN[F8$Cycle==1],
                      "F9" = F9$GREEN - F9$GREEN[F9$Cycle==1],
                      "F10" = F10$GREEN - F10$GREEN[F10$Cycle==1],
                      "F11" = F11$GREEN - F11$GREEN[F11$Cycle==1],
                      "F12" = F12$GREEN - F12$GREEN[F12$Cycle==1],
                      "G1" = G1$GREEN - G1$GREEN[G1$Cycle==1],
                      "G2" = G2$GREEN - G2$GREEN[G2$Cycle==1],
                      "G3" = G3$GREEN - G3$GREEN[G3$Cycle==1],
                      "G4" = G4$GREEN - G4$GREEN[G4$Cycle==1],
                      "G5" = G5$GREEN - G5$GREEN[G5$Cycle==1],
                      "G6" = G6$GREEN - G6$GREEN[G6$Cycle==1],
                      "G7" = G7$GREEN - G7$GREEN[G7$Cycle==1],
                      "G8" = G8$GREEN - G8$GREEN[G8$Cycle==1],
                      "G9" = G9$GREEN - G9$GREEN[G9$Cycle==1],
                      "G10" = G10$GREEN - G10$GREEN[G10$Cycle==1],
                      "G11" = G11$GREEN - G11$GREEN[G11$Cycle==1],
                      "G12" = G12$GREEN - G12$GREEN[G12$Cycle==1],
                      "H1" = H1$GREEN - H1$GREEN[H1$Cycle==1],
                      "H2" = H2$GREEN - H2$GREEN[H2$Cycle==1],
                      "H3" = H3$GREEN - H3$GREEN[H3$Cycle==1],
                      "H4" = H4$GREEN - H4$GREEN[H4$Cycle==1],
                      "H5" = H5$GREEN - H5$GREEN[H5$Cycle==1],
                      "H6" = H6$GREEN - H6$GREEN[H6$Cycle==1]
)

normlamp$cycle = 1:100
normlamp2 = pivot_longer(normlamp, cols =1:90)
normlamp2$gene = rep(c("ACTB",
                   "ACTB",
                   "ACTB",
                   "ELFA1",
                   "ELFA1",
                   "ELFA1",
                   "CXCR3",
                   "CXCR3",
                   "CXCR3",
                   "CALCA",
                   "CALCA",
                   "CALCA",
                   "TRPV1",
                   "TRPV1",
                   "TRPV1",
                   "LYVE1",
                   "LYVE1",
                   "LYVE1",
                   "F7",
                   "F7",
                   "F7",
                   "PROX1",
                   "PROX1",
                   "PROX1",
                   "TAF5L",
                   "TAF5L",
                   "TAF5L",
                   "GPCR5BB",
                   "GPCR5BB",
                   "GPCR5BB",
                   "ACTB",
                   "ACTB",
                   "ACTB",
                   "ELFA1",
                   "ELFA1",
                   "ELFA1",
                   "CXCR3",
                   "CXCR3",
                   "CXCR3",
                   "CALCA",
                   "CALCA",
                   "CALCA",
                   "TRPV1",
                   "TRPV1",
                   "TRPV1",
                   "LYVE1",
                   "LYVE1",
                   "LYVE1",
                   "F7",
                   "F7",
                   "F7",
                   "PROX1",
                   "PROX1",
                   "PROX1",
                   "TAF5L",
                   "TAF5L",
                   "TAF5L",
                   "GPCR5BB",
                   "GPCR5BB",
                   "GPCR5BB",
                   "ACTB",
                   "ACTB",
                   "ACTB",
                   "ELFA1",
                   "ELFA1",
                   "ELFA1",
                   "CXCR3",
                   "CXCR3",
                   "CXCR3",
                   "CALCA",
                   "CALCA",
                   "CALCA",
                   "TRPV1",
                   "TRPV1",
                   "TRPV1",
                   "LYVE1",
                   "LYVE1",
                   "LYVE1",
                   "F7",
                   "F7",
                   "F7",
                   "PROX1",
                   "PROX1",
                   "PROX1",
                   "TAF5L",
                   "TAF5L",
                   "TAF5L",
                   "GPCR5BB",
                   "GPCR5BB",
                   "GPCR5BB"),100)
normlamp2$sample = rep(c(rep(1,30),rep(2,30),rep(3,30)),100)
CT = list()

CT$A1 = approx(normlamp$A1, normlamp$cycle, xout=300000)[2]
CT$A2 = approx(normlamp$A2, normlamp$cycle, xout=300000)[2]
CT$A3 = approx(normlamp$A3, normlamp$cycle, xout=300000)[2]
CT$A4 = approx(normlamp$A4, normlamp$cycle, xout=300000)[2]
CT$A5 = approx(normlamp$A5, normlamp$cycle, xout=300000)[2]
CT$A6 = approx(normlamp$A6, normlamp$cycle, xout=300000)[2]
CT$A7 = approx(normlamp$A7, normlamp$cycle, xout=300000)[2]
CT$A8 = approx(normlamp$A8, normlamp$cycle, xout=300000)[2]
CT$A9 = approx(normlamp$A9, normlamp$cycle, xout=300000)[2]
CT$A10 = approx(normlamp$A10, normlamp$cycle, xout=300000)[2]
CT$A11 = approx(normlamp$A11, normlamp$cycle, xout=300000)[2]
CT$A12 = approx(normlamp$A12, normlamp$cycle, xout=300000)[2]


CT$B1 = approx(normlamp$B1, normlamp$cycle, xout=300000)[2]
CT$B2 = approx(normlamp$B2, normlamp$cycle, xout=300000)[2]
CT$B3 = approx(normlamp$B3, normlamp$cycle, xout=300000)[2]
CT$B4 = approx(normlamp$B4, normlamp$cycle, xout=300000)[2]
CT$B5 = approx(normlamp$B5, normlamp$cycle, xout=300000)[2]
CT$B6 = approx(normlamp$B6, normlamp$cycle, xout=300000)[2]
CT$B7 = approx(normlamp$B7, normlamp$cycle, xout=300000)[2]
CT$B8 = approx(normlamp$B8, normlamp$cycle, xout=300000)[2]
CT$B9 = approx(normlamp$B9, normlamp$cycle, xout=300000)[2]
CT$B10 = approx(normlamp$B10, normlamp$cycle, xout=300000)[2]
CT$B11 = approx(normlamp$B11, normlamp$cycle, xout=300000)[2]
CT$B12 = approx(normlamp$B12, normlamp$cycle, xout=300000)[2]

CT$C1 = approx(normlamp$C1, normlamp$cycle, xout=300000)[2]
CT$C2 = approx(normlamp$C2, normlamp$cycle, xout=300000)[2]
CT$C3 = approx(normlamp$C3, normlamp$cycle, xout=300000)[2]
CT$C4 = approx(normlamp$C4, normlamp$cycle, xout=300000)[2]
CT$C5 = approx(normlamp$C5, normlamp$cycle, xout=300000)[2]
CT$C6 = approx(normlamp$C6, normlamp$cycle, xout=300000)[2]
CT$C7 = approx(normlamp$C7, normlamp$cycle, xout=300000)[2]
CT$C8 = approx(normlamp$C8, normlamp$cycle, xout=300000)[2]
CT$C9 = approx(normlamp$C9, normlamp$cycle, xout=300000)[2]
CT$C10 = approx(normlamp$C10, normlamp$cycle, xout=300000)[2]
CT$C11 = approx(normlamp$C11, normlamp$cycle, xout=300000)[2]
CT$C12 = approx(normlamp$C12, normlamp$cycle, xout=300000)[2]

CT$D1 = approx(normlamp$D1, normlamp$cycle, xout=300000)[2]
CT$D2 = approx(normlamp$D2, normlamp$cycle, xout=300000)[2]
CT$D3 = approx(normlamp$D3, normlamp$cycle, xout=300000)[2]
CT$D4 = approx(normlamp$D4, normlamp$cycle, xout=300000)[2]
CT$D5 = approx(normlamp$D5, normlamp$cycle, xout=300000)[2]
CT$D6 = approx(normlamp$D6, normlamp$cycle, xout=300000)[2]
CT$D7 = approx(normlamp$D7, normlamp$cycle, xout=300000)[2]
CT$D8 = approx(normlamp$D8, normlamp$cycle, xout=300000)[2]
CT$D9 = approx(normlamp$D9, normlamp$cycle, xout=300000)[2]
CT$D10 = approx(normlamp$D10, normlamp$cycle, xout=300000)[2]
CT$D11 = approx(normlamp$D11, normlamp$cycle, xout=300000)[2]
CT$D12 = approx(normlamp$D12, normlamp$cycle, xout=300000)[2]

CT$E1 = approx(normlamp$E1, normlamp$cycle, xout=300000)[2]
CT$E2 = approx(normlamp$E2, normlamp$cycle, xout=300000)[2]
CT$E3 = approx(normlamp$E3, normlamp$cycle, xout=300000)[2]
CT$E4 = approx(normlamp$E4, normlamp$cycle, xout=300000)[2]
CT$E5 = approx(normlamp$E5, normlamp$cycle, xout=300000)[2]
CT$E6 = approx(normlamp$E6, normlamp$cycle, xout=300000)[2]
CT$E7 = approx(normlamp$E7, normlamp$cycle, xout=300000)[2]
CT$E8 = approx(normlamp$E8, normlamp$cycle, xout=300000)[2]
CT$E9 = approx(normlamp$E9, normlamp$cycle, xout=300000)[2]
CT$E10 = approx(normlamp$E10, normlamp$cycle, xout=300000)[2]
CT$E11 = approx(normlamp$E11, normlamp$cycle, xout=300000)[2]
CT$E12 = approx(normlamp$E12, normlamp$cycle, xout=300000)[2]

CT$F1 = approx(normlamp$F1, normlamp$cycle, xout=300000)[2]
CT$F2 = approx(normlamp$F2, normlamp$cycle, xout=300000)[2]
CT$F3 = approx(normlamp$F3, normlamp$cycle, xout=300000)[2]
CT$F4 = approx(normlamp$F4, normlamp$cycle, xout=300000)[2]
CT$F5 = approx(normlamp$F5, normlamp$cycle, xout=300000)[2]
CT$F6 = approx(normlamp$F6, normlamp$cycle, xout=300000)[2]
CT$F7 = approx(normlamp$F7, normlamp$cycle, xout=300000)[2]
CT$F8 = approx(normlamp$F8, normlamp$cycle, xout=300000)[2]
CT$F9 = approx(normlamp$F9, normlamp$cycle, xout=300000)[2]
CT$F10 = approx(normlamp$F10, normlamp$cycle, xout=300000)[2]
CT$F11 = approx(normlamp$F11, normlamp$cycle, xout=300000)[2]
CT$F12 = approx(normlamp$F12, normlamp$cycle, xout=300000)[2]

CT$G1 = approx(normlamp$G1, normlamp$cycle, xout=300000)[2]
CT$G2 = approx(normlamp$G2, normlamp$cycle, xout=300000)[2]
CT$G3 = approx(normlamp$G3, normlamp$cycle, xout=300000)[2]
CT$G4 = approx(normlamp$G4, normlamp$cycle, xout=300000)[2]
CT$G5 = approx(normlamp$G5, normlamp$cycle, xout=300000)[2]
CT$G6 = approx(normlamp$G6, normlamp$cycle, xout=300000)[2]
CT$G7 = approx(normlamp$G7, normlamp$cycle, xout=300000)[2]
CT$G8 = approx(normlamp$G8, normlamp$cycle, xout=300000)[2]
CT$G9 = approx(normlamp$G9, normlamp$cycle, xout=300000)[2]
CT$G10 = approx(normlamp$G10, normlamp$cycle, xout=300000)[2]
CT$G11 = approx(normlamp$G11, normlamp$cycle, xout=300000)[2]
CT$G12 = approx(normlamp$G12, normlamp$cycle, xout=300000)[2]

CT$H1 = approx(normlamp$H1, normlamp$cycle, xout=300000)[2]
CT$H2 = approx(normlamp$H2, normlamp$cycle, xout=300000)[2]
CT$H3 = approx(normlamp$H3, normlamp$cycle, xout=300000)[2]
CT$H4 = approx(normlamp$H4, normlamp$cycle, xout=300000)[2]
CT$H5 = approx(normlamp$H5, normlamp$cycle, xout=300000)[2]
CT$H6 = approx(normlamp$H6, normlamp$cycle, xout=300000)[2]


df = data.frame("ct" = t(data.frame(CT)))
df$y = 300000

ggplot(data = normlamp2, aes(x=cycle, y= value)) + geom_line(aes(col=name)) + geom_hline(yintercept = 300000, lty = 2, col = "red") + theme_minimal() + facet_wrap(~gene+sample) + theme(legend.position = "NONE") + labs(title = "KD-APB")
#ggplot(data = normlamp2, aes(x=cycle, y= value)) + geom_line(aes(col=name)) + geom_point(data = df, aes(x = ct, y=y, col="red")) +  geom_hline(yintercept = 300000, lty = 2, col = "red") + theme_minimal() + facet_wrap(~gene)
