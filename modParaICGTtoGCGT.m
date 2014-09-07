function ICGTtoGCGTmaker()
    % Makes GCGT paras from ICGT ones
    % Navigate to the base directory containing all subject directories and run

    lis=dir; subjfolders={};
    for i=1:length(lis)
        if lis(i).isdir
            subjfolders{end+1}=lis(i).name;
        end
    end, subjfolders=subjfolders(3:end);
    curDir=cd;
    for subdir=1:length(subjfolders)
        cd([subjfolders{subdir} '/para']);
        lis=dir('*ICGT.para');
        for para=1:length(lis)
            fid = fopen(lis(para).name);
            tline = fgetl(fid);i=1;
            while ischar(tline)
                x{i,1}=tline;
                tline = fgetl(fid);
                i=i+1;
            end
            fclose(fid);

            for i=1:length(x)
                if  isequal(x{i},'#names ')
                    break;
                end
                tmp=strsplit(x{i}, ' ');
                for j=1:length(tmp)
                    if  ~isequal(str2num(tmp{j}),[]) && str2num(tmp{j}) ~= 2 && ...
                            round(str2num(tmp{j})) == str2num(tmp{j})
                        tmp{j}='1';
                    end
                end
                x{i} = strjoin(tmp,' ');
            end

            tmp=strsplit(lis(para).name,'ICGT');
            fileID = fopen([tmp{1} 'GCGT' tmp{2}],'w');
            formatSpec = '%s\n';
            [nrows,ncols] = size(x);
            for row = 1:nrows
                fprintf(fileID,formatSpec,x{row,:});
            end
            fclose(fileID);
        end
        cd(curDir);
    end
end