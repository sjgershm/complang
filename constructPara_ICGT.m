function ConstructPara_ICGT(filename,dat,stimIdx)
    
    % ICGT (Individual Cue, General Target)
    % Construct paradigm (onset) files.
    %
    % USAGE: ConstructPara_ICGT('subj01c_06',dat,sentencesIdx)
    %
    % INPUTS:
    %   filename - name of file to be created, 'subj[subjNum]_[runNum]'
    %   dat - preloaded dat file created during complang scan for a
    %           particular run
    %   stimIdx - premade structure of stim keys pointing to corresponding
    %               analysis indices (see sentences/reversibles/conceptsIdx)
    %
    % OUTPUTS:
    %   New para file named 'subj01c_06_ICGT.para' (as per example above)
    %
    % Walid Bendris, June 2014
    
    clear onsets; names='cue target';
    cueDur=dat.opts.dur_cue/2;tarDur=num2str(dat.opts.dur_target/2);
    f=fields(stimIdx);
    names=[names sprintf(' %s',f{:})];
    durations = [num2str(cueDur) ' ' tarDur sprintf(' %0.3f',ones(1,length(f)).*cueDur)];
    count=1;
    for i=1:length(dat.stim)
        c=strsplit(dat.stim(i).cue,'/');c=strsplit(c{end},'.');c=strsplit(c{1},'_snippet');c=c{1};c=strrep(c, ' ', '_');%c(c==' ')=[]; 
        if ~isequal(c(end),'i') && ~isempty(str2num(c(end))) && isnumeric(str2num(c(end)))
            c=c(1:end-1);
        end
        onsets(1,count)=dat.cue_onset(i)/2;
        onsets(2,count)=stimIdx.(lower(c));
        count=count+1;

        onsets(1,count)=dat.target_onset(i)/2;
        onsets(2,count)=2;%stimIdx.(t);
        count=count+1;
    end

    fid=fopen([filename '_ICGT.para'],'wt');
    fprintf(fid,'%s \n\n','#onsets');
    fprintf(fid,'%f %1.0f\n',onsets);
    fprintf(fid,'%s \n','');
    fprintf(fid,'%s \n','#names');
    fprintf(fid,'%s \n\n',names);
    fprintf(fid,'%s \n','#durations');
    fprintf(fid,'%s \n',durations);
    fclose(fid);
end