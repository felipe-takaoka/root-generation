function clearAndUpdatePropTable(propTable)
    % clearAndUpdatePropTable(propTable) clears and updates the string
    % values in the properties of propTable for a new root structure
    % created.
    %
    % See also SETINPROPTABLE.
    
    t = get(propTable,'Data');
    t{2} = '???';
    t{3} = '???';
    t{4} = '???';
    set(propTable,'Data',t);
    
    hv = RootStruct.params.hv_distr;
    hv_distr_str = 'n/a';
    if ~isempty(hv) && all(~isnan(hv))
        hv_distr_str = [num2str(hv(1)) '/' num2str(hv(2))];
    end
    
    L_fork = RootStruct.params.L_fork;
    L_fork_str = 'n/a';
    if ~isempty(L_fork)
        L_fork_str = [num2str(RootStruct.params.L_fork, '%1.3f') ' m'];
    end
    
    setInPropTable(propTable, ...
       'n_laterals', num2str(RootStruct.params.n_laterals, '%1.0f'), ...
       'tap_root', RootStruct.params.tap_root, ...
       'hv_distr', hv_distr_str, ...
       'stochastic', RootStruct.params.stochastic, ...
       'branch_tap', RootStruct.params.branch_tap, ...
       'taper_enable', RootStruct.params.taper_enable, ...
       'fork_enable', RootStruct.params.fork_enable, ...
       'max_radius', [num2str(RootStruct.params.max_radius, '%1.3f') ' m'], ...
       'max_depth', [num2str(RootStruct.params.max_depth, '%1.3f') ' m'], ...
       'max_order', num2str(RootStruct.params.max_order, '%1.0f'), ...
       'fixed_volume', [num2str(RootStruct.params.fixed_volume, '%1.3f') ' m^3'], ...
       'brcDRatio', num2str(RootStruct.params.brcDRatio, '%1.3f'), ...
       'L_branch',[num2str(RootStruct.params.L_branch, '%1.3f') ' m'], ...
       'n_branches', num2str(RootStruct.params.n_branches, '%1.0f'), ...
       'L_fork', L_fork_str, ...
       'dl', [num2str(RootStruct.params.dl, '%1.3f') ' m']);
end