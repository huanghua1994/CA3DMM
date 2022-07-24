m = 1200000;
n = 6000;
k = 6000;
op_gflops = 2 * m * n * k / 1e9;

cosma_ncl_ms = [ ...
7068 7075 7076 7080 7081 7081 7088 7093 7095 7102; ...
3699 3701 3703 3704 3706 3711 3747 3781 3783 3800; ...
1909 1912 1914 1915 1915 1925 1926 1928 2012 2148; ...
1021 1027 1027 1027 1028 1028 1068 1089 1140 1185; ...
574 587 597 599 600 601 602 604 602 604; ...
];

cosma_cl_ms = [ ...
8162 8172 8181 8174 8165 8181 8204 8169 8174 8218; ...
4493 4499 4513 4640 4538 4493 4525 4481 4533 4512; ...
3270 3242 3239 3187 3232 3239 3165 3188 3180 3228; ...
8702 7836 9840 7869 8499 8546 7932 8884 8226 8930; ...
10667 11419 10449 10096 10620 10086 10444 11515 10159 10785; ...
];

ca3dmm_ncl_ms = [ ...
6678 6674 6688 6675 6681 6688 6695 6677 6674 6677; ...
3399 3396 3366 3434 3330 3475 3413 3391 3457 3427; ...
1815 1821 1900 1817 1828 1819 1820 1886 2106 1823; ...
 985 1071  952 1141 1020 1153  961  961 1051 1055; ...
 674  647  555  593  561  571  563  562  558  562; ...
];

ca3dmm_cl_ms = [ ...
8436 8435 8428 8456 8448 8445 8452 8429 8463 8422; ...
4422 4399 4406 4448 4417 4488 4438 4444 4488 4436; ...
2398 2396 2463 2406 2401 2398 2400 2491 2690 2401; ...
5029 5072 4934 5065 5035 5180 5051 5083 5160 5157; ...
4031 3774 3898 3924 3827 3962 3789 3916 3946 3841; ...
];

ctf_ncl_s = [ ...
45.218 44.171 44.174 44.920 44.062 44.350 44.990 44.273 44.247 45.307; ...
16.168 16.470 16.431 16.445 16.420 16.463 16.440 16.451 16.450 16.438; ...
22.923 24.457 25.725 24.178 24.926 25.745 24.582 25.574 26.749 22.861; ...
8.278 8.846 8.343 8.282 8.266 8.254 8.225 8.872 8.592 8.643; ...
4.060 5.327 4.932 3.876 3.668 3.673 3.692 4.207 4.186 4.683; ...
];
ctf_ncl_ms = ctf_ncl_s * 1000;

plot_efficiency(' ', op_gflops, cosma_ncl_ms, ca3dmm_ncl_ms, ctf_ncl_ms, cosma_cl_ms, ca3dmm_cl_ms);