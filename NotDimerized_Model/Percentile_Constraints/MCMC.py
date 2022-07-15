# Author : Hoda Akl 
# Date : 05.04.2022 
import numpy as np 
import os 
import pandas as pd
from MARKOVCHAIN import RunMCMC
noise_factor=1
## set path 
path = '/blue/pdixit/hodaakl/A1MAXENT_EGF/Percentile_NonDimerized_07152022/'
ArraysPath = '/blue/pdixit/hodaakl/A1MAXENT_EGF/Code/Percentile_Constraints/ArraysForMaxEnt/'
file_name_lambda = path + '/Lambdas.csv'

if os.path.exists(file_name_lambda): 
    print('Fetching lambda')
    df_lambdas = pd.read_csv(file_name_lambda, sep = ',', header = None) 
    data_lambdas = df_lambdas.to_numpy()
    iteration, _ = data_lambdas.shape
    iteration = iteration -1
    Lambda = data_lambdas[-1,:]
else:
    raise ValueError('lambda file doesnt exist')
print(f'iteration {iteration}')
#### LOAD ARRAYS 
# the bin edges boundaries 
BinEdgesDict = np.load(f'{ArraysPath}BinEdges_9bins.npy', allow_pickle= True).item()
# abundance bounds 
AbundBounds = np.load(f'{ArraysPath}segfr_lims_10conds_0304.npy')
LowerLimAbund = AbundBounds[:,0]
UpperLimAbund = AbundBounds[:,1]
# parameter bounds 
LowerLimPars = np.load(f'{ArraysPath}Low_Pars_NoDimerazationModel_0301.npy')
UpperLimPars = np.load(f'{ArraysPath}high_Pars_NoDimerazationModel_0301.npy')
# Ligand concentration array 
Larr = np.load(f'{ArraysPath}EGFR_doses_10Conditions_20201116.npy')
nchain = 10**5
RunMCMC(outpath = path, Lagrange_multi = Lambda,  Cons_Bound_dict = BinEdgesDict, abund_low_lim= LowerLimAbund, abund_upp_lim =UpperLimAbund ,\
    params_upperbound = UpperLimPars , params_lowerbound = LowerLimPars , L = Larr, noise_factor = noise_factor,\
        N_chain= nchain, save_step = 50, ignore_steps = 20, iteration = iteration , param_range = 0.02, num_par_change = 5,\
            timethis=False, predfactor=1)