%%
%Read data from DAT file and return cell data
%%
function r = handleData(filePath,colu)
fid = fopen(filePath,'r');
colus = '%s'
for c=1:colu
    colus = strcat(colus,'%s')
end
C2 = textscan(fid,colus, 'CollectOutput',1);
fclose(fid);
r = C2{1,1};

