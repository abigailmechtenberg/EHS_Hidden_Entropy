function [matrix]=vector2matrix(h,Max,figurenumber,type,unit,vector)

% This function takes a vector and creates a matrix for hours by days of
% the year. It will create two density maps.

% The inputs are the following:

% h - time increment (1) means hour-by-hour
% fig number - to start with
% type - component being graphed (e.g., main generator dispatch) This
% becomes the title on all the graphs. You want to type in the following:
% 'Main Generator'
% unit - units of graph - this is put into parenthesis  You want to type in
% the following: 'kW'
% x - column vector of year's data

days=365;
hours=24;

k=1;

for i = 1:1:days
    for j = 1:hours
        matrix(j,i)=vector(k,1);
        k=k+1;
    end
end

graphmatrix(h,Max,figurenumber,type,unit,matrix)

% Nominal(24,1)=zeros;
% 
% for i=1:24                   % This is the number of hours in a day
%     for j=1:365              % This is the number of days in a year
%     Nominal(i,1)=vector(i+(j-1)*24,1)+Nominal(i,1);
%     end
%     Nominal(i,1)=Nominal(i,1)/365; % Average solar radiance (kW/m^2)
% end
% 
% 
% for i = 1:1:days
%     for j = 1:hours
%         matrix2(j,i)=Nominal(j,1);
%     end
% end
% 
% graphmatrix(h,max,figurenumber+1,type,unit,matrix2)