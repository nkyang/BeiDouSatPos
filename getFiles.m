ftpobj = ftp('ftp.csno-tarc.cn','tarc','gnsscenter');
cd(ftpobj,'brdc');
cd(ftpobj,'2021');
f = dir(ftpobj,'tarc*');
if ~isfolder('2021')
    mkdir 2021
end
cd 2021
fe = dir('tarc*');

for ii = 1:numel(f)
    if ~ismember(f(ii).name,{fe.name})||ii==numel(f)
        mget(ftpobj,f(ii).name);
    end
end

cd ..