
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Capacity Shortage DMAP
%% Electrical Power Shortage (kW) DMAP
%% saves to pdf all the figures
%%
%% Co-Authors Fall 2019
%% Musodiq Ogunlow
%% Dr. A Mechtenberg
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
clc


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% ESDD Lab - Electricity and Power Load of Health Care Center Research
% Last revision: October 1st 2019
% This is a program that aims at creating a way to analyze data from 
% Homer Pro simulations to look at moving from Stability to Chaos in Health
% Care Centers
%
% 1.  Load the data in the program
% 2.  DMAP for Capacity Shortage
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% For the 4 uncertainties 0,1,5,10
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

T=readtable('Guzamala_CS40_PL55kWh_d.csv');          % csv filename
% Capacity Shortage
CS=T{:,19};
save('Guzamala_CS40_PL55kWh_d.mat','CS');      % Saved as .mat workspace file
  
CS_final=CS(2:8761);

CS_final2=cellfun(@str2num,CS_final);

CS_final3=vector2matrix(1,20000,1,'Capacity Shortage','kW',CS_final2)