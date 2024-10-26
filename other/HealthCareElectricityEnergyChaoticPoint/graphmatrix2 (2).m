function graphmatrix2(h,Max,figurenumber,type,unit,x)

% NOTE: Default graphmatrix(1,10,1,'Solar Radiance','kW',Matrix of Data)

% Graphing Time-Increment (h), Maximum Number of Colors on Graph (max), type and units of data (type/unit) and Data (x)
% This will graph the matrix of Yearly Data 
% When type='Yearly Solar Radiance' string then this will be the title
% When unit='kW/m2' string then this will be the units for the title
% When h=1, then it will graph hour-by-hour data
% When max=10, then a gradient of ten colors will be used
% When unit=kW/m2, then the units on the graph will be printed as this.
% When h=1 and the x-vector is solar radiance (kW/m2), then the graph will be
% hour-by-hour solar resource

if(h==1)       % This is for the time increment of a Year - hour-by-hour each DAY (24 x 365)
    days=365;  % This means the vertical-axis on Matrix graph will be days of year (365)
    hours=24;  % Therefore, the horizontal-axis will be hours in a day (24)
end            

for(i=1:days)
    for(j=1:hours)
    GraphMatrix(j,i)=x(j,i);
    k=(i-1)*24+j;
    Vector_x(k,1)=x(j,i);
    end 
end

Vector_x;

MatrixAverage=mean(Vector_x);
MatrixMax=max(Vector_x);

if(h==1)                                      % This is for the time increment of a Year - hour-by-hour each DAY (24 x 365)
    figure(figurenumber)
    colormap(jet(Max))                        % This sets the type of gradient used (name: hot,grey,jet,winter) and the number of colors in the gradient (max)
    image(GraphMatrix,'CDataMapping','scaled')
    axis xy
    colorbar('Ticks',[0,MatrixAverage,MatrixMax],...
         'TickLabels',{'Off','Mean','Max'})
    title([type, ' (',unit,')'],'FontSize',16)
    xlabel('365 Days of Year','FontSize',16)
    ylabel('Hours during the Day','FontSize',16)
end

% figurenumber=figurenumber+1

%end
