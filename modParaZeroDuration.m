function zeroDurationParaMaker(subjectdirectory)
    % Makes GCGT paras from ICGT ones
    % Navigate to the base directory containing all subject directories and run
    orgDir=cd; cd(subjectdirectory);
    lis=dir; subjfolders={};
    for i=1:length(lis)
        if lis(i).isdir
            subjfolders{end+1}=lis(i).name;
        end
    end, subjfolders=subjfolders(3:end);
    curDir=cd;
    for subdir=1:length(subjfolders)
        cd([subjfolders{subdir} '/para']);
        lis=vertcat(dir('*ICGT.para'),dir('*GCGT.para'));
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
                if  isequal(x{i},'#durations ')
                    tmp=strsplit(x{i+1}, ' ');
                    for j=1:length(tmp)
                        if  ~isequal(str2num(tmp{j}),[]) && str2num(tmp{j}) ~= 0
                            tmp{j}='0';
                        end
                    end
                    x{i+1} = strjoin(tmp,' ');
                    break;
                end
            end

            tmp=strsplit(lis(para).name,'.');
            fileID = fopen([tmp{1} '_zero.' tmp{2}],'w');
            formatSpec = '%s\n';
            [nrows,ncols] = size(x);
            for row = 1:nrows
                fprintf(fileID,formatSpec,x{row,:});
            end
            fclose(fileID);
        end
        cd(curDir);
    end
    cd(orgDir);
end