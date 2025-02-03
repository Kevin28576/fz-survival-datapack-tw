// 計分板模組擴充插件
// 忽略假人分數
// **請勿修改檔案名稱！ ！ **

//** 工具函數 **//

contains(list, value) -> (
    return(list ~ value != null);
);

debug(msg) -> (
    logger('debug', msg);
    return();
);

require_not_null(value) -> (
    if(value == null, throw('空指針異常！'));
    return(value);
);

require_version(requirement) -> (
    req_ver = split('\\.', requirement);
    cur_ver = split('\\.', global_carpet_version);
    return(number(cur_ver:0) >= number(req_ver:0)
        && number(cur_ver:1) >= number(req_ver:1)
        && number(cur_ver:2) >= number(req_ver:2));       
);

//** 主要邏輯 **//

global_app_name = system_info('app_name');
global_app_version = '1.1-beta.1';
global_carpet_version = split('\\+', system_info('scarpet_version')):0;
global_current_scoreboard_list =  [
    'fzsd.module.scoreboard.display.activation',
    'fzsd.module.scoreboard.display.damage_taken',
    'fzsd.module.scoreboard.display.death_count',
    'fzsd.module.scoreboard.display.dig_count',
    'fzsd.module.scoreboard.display.fishing_count',
    'fzsd.module.scoreboard.display.kill_count',
    'fzsd.module.scoreboard.display.trade_count',
    'fzsd.module.scoreboard.display.bedrock_broken_count',
    'fzsd.module.scoreboard.display.aviating_distance',
    'fzsd.module.scoreboard.display.placement_count'
];
global_generals_old = {
    'fzsd.module.scoreboard.display.damage_taken' -> '總受傷害量',
    'fzsd.module.scoreboard.display.dig_count' -> '總挖掘量',
    'fzsd.module.scoreboard.display.placement_count' -> '總方塊放置數',
    'fzsd.module.scoreboard.display.death_count' -> '總死亡次數',
    'fzsd.module.scoreboard.display.trade_count' -> '總交易量'
};
global_current_generals = {
    'fzsd.module.scoreboard.display.activation' -> '總活躍時間',
    'fzsd.module.scoreboard.display.damage_taken' -> '總受傷害數',
    'fzsd.module.scoreboard.display.death_count' -> '總死亡數',
    'fzsd.module.scoreboard.display.dig_count' -> '總挖掘量',
    'fzsd.module.scoreboard.display.fishing_count' -> '總釣魚數',
    'fzsd.module.scoreboard.display.kill_count' -> '總擊殺數',
    'fzsd.module.scoreboard.display.trade_count' -> '總交易數',
    'fzsd.module.scoreboard.display.bedrock_broken_count' -> '總破基岩數',
    'fzsd.module.scoreboard.display.aviating_distance' -> '總飛行距離',
    'fzsd.module.scoreboard.display.placement_count' -> '總建造數'
};

__config() -> {
    'scope' -> 'global',
    'requires' -> {
        'carpet' -> '>=1.4.45',
        'minecraft' -> '>=1.18'
    },
    'command_permission' -> 2,
    'commands' -> {
        // '' -> 'help',
        // 'help' -> 'help',
        'restore whitelist' -> ['command_restore_whitelist', null],
        'restore whitelist <scoreboardID>' -> 'command_restore_whitelist',
        'restore player <playerName>' -> ['command_restore_player', null],
        'restore player <playerName> <scoreboardID>' -> 'command_restore_player',
        'recalculate <scoreboardID>' -> 'command_recalculate',
        'recalculate' -> ['command_recalculate', null],
        'commandPlayer <permissionType>' -> 'command_carpet_command_player',
        'reset <scoreboardPlayer> <scoreboardID>' -> 'command_reset',
        'reset <scoreboardPlayer>' -> ['command_reset', null],
        'set <playerName> <scoreboardID> <score>' -> 'command_set'
    },
    'arguments' -> {
        'playerName' -> {
            'type' -> 'term',
            'suggester' -> _(args) -> player('all')
        },
        'scoreboardID' -> {
            'type' -> 'term',
            'suggest' -> global_current_scoreboard_list
        },
        'scoreboardPlayer' -> {
            'type' -> 'term',
            'suggester' -> _(args) -> get_scoreboard_player_list()
        },
        'permissionType' -> {
            'type' -> 'term',
            'suggest' -> [
                'true',
                'false',
                'ops'
            ]
        },
        'score' -> {
            'type' -> 'int',
            'suggest' -> []
        }
    }
};

__on_start() -> (
    reload_configs();
    global_team_cache = read_file('team_cache', 'json');
    if(global_team_cache == null, // carpet 1.4.69 兼容
        global_team_cache = {};
    );
    print(player('all'), 'fzsd_score.sc 已載入！');
);

__on_close() -> (
    delete_file('team_cache', 'json');
    write_file('team_cache', 'json', global_team_cache);
);

if(require_version('1.4.999'), // 暫時無效
    __on_player_command(player, command) -> (
        l = length(command);
        if(l > 13
            && slice(command, 0, 6) == 'player'
            && slice(command, l - 5, l) == 'spawn'
            && !(global_config:'allow_spawn_whitelist_player')
            && contains(get_server_whitelist(), slice(command, 7, l - 6)),
            return('cancel');
        );
    );
);

__on_player_connects(player) -> (
    player_type = player ~ 'player_type';
    if(player_type == 'fake',
        (
            player_team = player ~ 'team';
            if(player_team != 'fzsd.module.scoreboard.fake',
                player_name = player ~ 'name';
                global_team_cache:player_name = player_team;
            );
            team_add('fzsd.module.scoreboard.fake', player);
            if(nbt_storage('fzsd:config'):'fzsd':'module':'scoreboard':'fake_player_prefix'
                || nbt_storage('fzsd:config'):'fzsd':'module':'scoreboard':'fake_player_prefix' == null,
                print(player('all'), '↑假人');
            );
        ),
        player_type == 'shadow',
        (
            player_team = player ~ 'team';
            if(player_team != 'fzsd.module.scoreboard.shadow',
                player_name = player ~ 'name';
                global_team_cache:player_name = player_team;
            );
            team_add('fzsd.module.scoreboard.shadow', player);
            if(nbt_storage('fzsd:config'):'fzsd':'module':'scoreboard':'fake_player_prefix'
                || nbt_storage('fzsd:config'):'fzsd':'module':'scoreboard':'fake_player_prefix' == null,
                print(player('all'), '掛機');
            );
        ),
        try_restore_team_from_cache(player);
    );
);

__on_player_disconnects(player, reason) -> (
    player_type = player ~ 'player_type';
    if(player_type == 'fake'
        && player_team != 'fzsd.module.scoreboard.fake'
        && (nbt_storage('fzsd:config'):'fzsd':'module':'scoreboard':'fake_player_prefix'
        || nbt_storage('fzsd:config'):'fzsd':'module':'scoreboard':'fake_player_prefix' == null),
        (
            print(player('all'), '↓假人');
        ),
        player_type == 'shadow' && player_team != 'fzsd.module.scoreboard.shadow'
        && (nbt_storage('fzsd:config'):'fzsd':'module':'scoreboard':'fake_player_prefix'
        || nbt_storage('fzsd:config'):'fzsd':'module':'scoreboard':'fake_player_prefix' == null),
        (
            print(player('all'), '↓掛機');
        )
    );
    try_restore_team_from_cache(player);
);

// 取得伺服器白名單
get_server_whitelist() -> (
    return(keys(system_info('server_whitelist')));
);

// 重載設定檔
reload_configs() -> (
    // 讀取設定檔
    global_config = read_file('config', 'json');
    if(global_config == null, // carpet 1.4.69 兼容
        global_config = {};
    );
    config_changed = false;
    // 讀取失敗或不存在
    if(length(global_config) == 0,
        global_config:'config_version' = '1.0.0'; // 佔位用，無實際作用
        config_changed = true;
    );
    // 暫時無效
    if(require_version('1.4.999') && !contains(global_config, 'allow_spawn_whitelist_player'),
        global_config:'allow_spawn_whitelist_player' = false;
        config_changed = true;
    );
    if(config_changed == true,
        delete_file('config', 'json'); // 避免一些意外的問題
        write_file('config', 'json', global_config);
    );
);

// 取得所有計分板下的所有玩家列表
get_scoreboard_player_list() -> (
    set = m();
    for(global_current_scoreboard_list, 
        for(scoreboard(_),
            if(_ ~ '\\w',
                put(set:_, null);
            );
        );
    );
    return(keys(set));
);

// 嘗試從快取恢復玩家隊伍，玩家/假人上下線時執行
try_restore_team_from_cache(player) -> (
    player_team = player ~ 'team';
    player_name = player ~ 'name';
    debug('restore_team_from_cache');
    if(player_team != 'fzsd.module.scoreboard.fake' 
        && player_team != 'fzsd.module.scoreboard.shadow',
        return();
    );
    if(global_team_cache:player_name == null,
        team_leave(player);
        ,
        team_add(global_team_cache:player_name , player);
        delete(global_team_cache:player_name);
    );
);

help() -> (
    return();
);

// 重置玩家計分板分數
command_reset(player, scoreboard_id) -> (
    if(scoreboard_id == null,
        run('scoreboard players reset ' + player);
        recalculate_general(null);
        print('已重置 ' + player + ' 的所有分數');
        return();
    );
    scoreboard_remove(scoreboard_id, player);
    recalculate_general(scoreboard_id);
    print('已重置 ' + player + ' 的 ' + scoreboard_id + ' 分數');
);

// 重算總分，scoreboard == null 時重算所有總分
command_recalculate(scoreboard_id) -> (
    recalculate_general(scoreboard_id);
);

// 設定玩家的計分板分數
command_set(player, scoreboard_id, score) -> (
    i = scoreboard(scoreboard_id, player, score);
    print('玩家 ' + player + ' 修改前的分數為： ' + i);
    recalculate_general(scoreboard_id);
    return(i);
);

command_carpet_command_player(level) -> (
    print(run('carpet setDefault commandPlayer ' + level):1:0);
);

command_restore_whitelist(scoreboard_id) -> (
    restore_scores_of_whitelist_players(scoreboard_id);
);

command_restore_player(player_name, scoreboard_id) -> (
    restore_score(player_name, scoreboard_id);
);

// impls...

recalculate_general(scoreboard_id) -> (
    if(scoreboard_id == null,
    (
        for(global_current_scoreboard_list, _recalculate_general(_));
    ),( // else
        _recalculate_general(scoreboard_id);
    ));
    display_generals();
);

_recalculate_general(scoreboard_id) -> (
    require_not_null(scoreboard_id);
    scoreboard_remove(scoreboard_id, global_generals_old:scoreboard_id); // shit compat...
    scoreboard_remove(scoreboard_id, global_current_generals:scoreboard_id); // shit compat...
    total_score = 0;
    for(scoreboard(scoreboard_id),
    ( // _ = player_name
        score = scoreboard(scoreboard_id, _);
        if(score <= 0,(
            scoreboard_remove(scoreboard_id, _);
            continue();
        ));
        total_score += scoreboard(scoreboard_id, _);
        if(total_score < 0,(
            total_score = 2147483647; // INT_MAX
            break();
        ));
    ));
    scoreboard('fzsd.module.scoreboard.assign.general', replace(scoreboard_id, 'display', 'total'), total_score); // shit... must call display_generals() later.
    return(total_score);
);

// 使用資料包函數標籤將總分賦值到顯示計分板上
display_generals() -> (
    // 運行函數，將分數賦值到顯示計分板上
    run('function #fzsd:module/scoreboard/assign/scoreboard/general');
);

restore_scores_of_whitelist_players(scoreboard_id) -> ( // whitelist players only!
    whitelist = get_server_whitelist();

    if(scoreboard_id != null,
    (
        for(whitelist,
        ( // _ = player_name
            _restore_score(_, scoreboard_id);
        ));
        recalculate_general(scoreboard_id);
        return();
    ));

    for(global_current_scoreboard_list,
    ( 
        scoreboard_id = _;
        for(whitelist,
        ( // _ = player_name
            _restore_score(_, scoreboard_id);
        ));
    ));
    recalculate_general(null);
);

// 恢復玩家的計分板分數
restore_score(player_name, scoreboard_id) -> (
    require_not_null(player_name);
    if(scoreboard_id == null || scoreboard_id == '',
    (
        for(global_current_scoreboard_list, _restore_score(player_name, _));
        recalculate_general(null);
        return(true);
    ));
    if(_restore_score(player_name, scoreboard_id),
    (
        recalculate_general(scoreboard_id);
        return(true);
    ));
    return(false);
);

_restore_score(player_name, scoreboard_id) -> (
    require_not_null(scoreboard_id);
    player = player(player_name);
    player_is_offline = false;
    if(player == null,
        (
            run('player ' + player_name + ' spawn at ~ ~ ~ facing 0 0 in minecraft:overworld in survival');
            player_is_offline = true;
            player = player(player_name);
        )
    );
    if(scoreboard_id == 'fzsd.module.scoreboard.display.activation',
        (
            play_ticks = statistic(player, 'custom', 'play_time');
            scoreboard('fzsd.event.play_ticks', player, play_ticks%72000);
            scoreboard(scoreboard_id, player, play_ticks/72000);
        ),
        scoreboard_id == 'fzsd.module.scoreboard.display.damage_taken',
        scoreboard(scoreboard_id, player, statistic(player, 'custom', 'damage_taken')/10);
        ,
        scoreboard_id == 'fzsd.module.scoreboard.display.death_count',
        scoreboard(scoreboard_id, player, statistic(player, 'custom', 'deaths'));
        ,
        scoreboard_id == 'fzsd.module.scoreboard.display.dig_count',
        (
            scoreboard(scoreboard_id, player, 0);
            for(block_list(), append_from_stat(scoreboard_id, player, 'mined', _));
        ),
        scoreboard_id == 'fzsd.module.scoreboard.display.fishing_count',
        scoreboard(scoreboard_id, player, statistic(player, 'custom', 'fish_caught'));
        ,
        scoreboard_id == 'fzsd.module.scoreboard.display.kill_count',
        (
            scoreboard(scoreboard_id, player, 0);
            for(entity_types('living'), append_from_stat(scoreboard_id, player, 'killed', _));
        ),
        scoreboard_id == 'fzsd.module.scoreboard.display.trade_count',
        scoreboard(scoreboard_id, player, statistic(player, 'custom', 'traded_with_villager'));
        return(false);
        ,
        scoreboard_id == 'fzsd.module.scoreboard.display.bedrock_broken_count',
        return(false);
        ,
        scoreboard_id == 'fzsd.module.scoreboard.display.aviating_distance',
        scoreboard(scoreboard_id, player, statistic(player, 'custom', 'aviate_one_cm')/200);
        ,
        scoreboard_id == 'fzsd.module.scoreboard.display.placement_count',
        (
            scoreboard(scoreboard_id, player, 0);
            for(block_list(), append_from_stat(scoreboard_id, player, 'used', _));
        ),
        print('未識別的計分板ID！' + scoreboard_id);
        return(false);
    );
    if(player_is_offline,
        world_spawn = system_info('world_spawn_point');
        run('spreadplayers ' + world_spawn:0 + ' ' + world_spawn:2 + ' 0 10 false ' + player);
        run('player ' + player + ' kill');
    );
    return(true);
);

append_from_stat(scoreboard, player, category, entry) -> (
    scoreboard(scoreboard, player,
        statistic(player, category, entry) + scoreboard(scoreboard, player)
    );
);

