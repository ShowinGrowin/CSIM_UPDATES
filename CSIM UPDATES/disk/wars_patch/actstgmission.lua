---------------------------------------------------------------
-- Parameter description
--  name            : Stage code. Unique identifier.
--  dir             : The resource path of the stage to use.
--  player_chara    : Player character type. "Sonic", "buddy", "tag", "classic", "Shadow" Five kinds, if not specified, it becomes development setting.
--  stage_no        : Stage number, non-overlapping serial number. 0 Origin.
--  sequence_no     : Sequence number, number in scenario release order.1 Origin.
--  category_no     : Extra or challenge number.
--  bgm             : BGM file name.
--  amb             : Ambience file name.
--  bgm_retry_start : BGM playback start position (second) at retry
--  bgm_retry_fade  : BGM fade-in time at retry (sec)
--  static_sectors  : A table of static terrain sectors, read before the stage starts.
--  dynamic_sectors : Dynamic terrain sector table. Dynamic loading from left to right.
--  chunk_type      : Chunk type. Play except the initial chunk can not play until additional installation finishes
--  attrs           : Stage attribute.
--                  : "boss", - boss.
--                  : "extra", - Extras.
--                  : "special", - special.
--                  : "dlc", -- DLC.
--                  : "chara-change", - Character switching stage.
--                  : "shiftbp", - Shift the broad phase.
--                  : "topview", -- topview.
--                  : "appgfxparam", - stage with application specific Graphics parameters.
--                  : "numberring", - stage with numbering.
--                  : "yellowmoonring" - stage with yellow moon ring.
--                  : "use_sos" - A stage that can be used in an SOS mission.


mission_all = {
    {
        missions = {
            -- w1：監獄衛星
            {
                name = "w1a01",
                dir = "w1a01",
                player_chara = "sonic",
                stage_no = 0,
                sequence_no = 6,
                amb = "obj_w1a01_env1",
                static_sectors = {11},
                attrs = { "use_sos", "numberring", "yellowmoonring" },
                cleared_events = { "ev0510c" },
                chunk_type = "initial",
            },
            -- w1：監獄衛星
            {
                name = "w1a02",
                dir = "w1a02",
                player_chara = "buddy",
                stage_no = 1,
                sequence_no = 4,
                amb = "obj_w1a02_env1",
                static_sectors = { 10, 11, 12, 14, 17},
                attrs = { "use_sos", "numberring", "yellowmoonring", "appgfxparam" },
                chunk_type = "initial",
            },
            -- w1：監獄衛星:クラシック（クラソニ）stage18
            {
                name = "w1a04",
                dir = "w1a04",
                player_chara = "classic",
                stage_no = 2,
                sequence_no = 22,
                amb = "obj_w1a04_env1",
                static_sectors = {11, 51, 52, 53, 54, 55, 61, 62, 63, 71, 91},
                attrs = { "use_sos", "numberring", "yellowmoonring" },
                cleared_events = { "ev1830c" },
                chunk_type = "after",
            },
            -- w1：監獄衛星 boss01"
            {
                name = "w1b01",
                dir = "w1b01",
                player_chara = "sonic",
                stage_no = 3,
                sequence_no = 5,
                amb = "obj_w1b01_env1",
                attrs = { "boss", "topview" },
                opening_events = { "ev0430c" },
                cleared_events = { "ev0440c" },
                chunk_type = "initial",
            },
            -- w2：スペースポート・海上基地（ソニック） stage17
            {
                name = "w2a01",
                dir = "w2a01",
                player_chara = "sonic",
                stage_no = 4,
                sequence_no = 21,
                amb = "obj_w2a01_env1",
                static_sectors = { 11, 12, 13, 22 },
                attrs = { "use_sos", "numberring", "yellowmoonring", "appgfxparam" },
                chunk_type = "after",
            },
            -- w2：スペースポート・宇宙港（バディ）stage2
            {
                name = "w2a02",
                dir = "w2a02",
                player_chara = "buddy",
                stage_no = 5,
                sequence_no = 2,
                amb = "obj_w2a02_env1",
                static_sectors = { 11, 12, 13 },
                attrs = { "use_sos", "numberring", "yellowmoonring", "appgfxparam" },
                chunk_type = "initial",
            },
            -- w2：スペースポート:クラシック（クラソニ）stage14
            {
                name = "w2a04",
                dir = "w2a04",
                player_chara = "classic",
                stage_no = 6,
                sequence_no = 18,
                amb = "obj_w2a04_env1",
                static_sectors = { 11, 12, 13, 21 },
                attrs = { "use_sos", "numberring", "yellowmoonring", "appgfxparam" },
                chunk_type = "after",
            },
            -- w3：市街地 01
            {
                name = "w3a01",
                dir = "w3a01",
                player_chara = "sonic",
                stage_no = 7,
                sequence_no = 15,
                amb = "obj_w3a01_env1",
                static_sectors = { 1, 10, 11, 2, 3, 5 ,12, 20, 21, 22 },
                dynamic_sectors = { 4, 7, 6, 8, 30, 31, 32, 40, 41, 42, 43 },
                attrs = { "use_sos", "numberring", "yellowmoonring" },
                cleared_events = { "ev1220c" },
                chunk_type = "after",
            },
            -- w3：市街地 02
            {
                name = "w3a02",
                dir = "w3a02",
                player_chara = "buddy",
                stage_no = 8,
                sequence_no = 12,
                amb = "obj_w3a02_env1",
                static_sectors = { 1, 5, 7, 8, 20, 21 },
                dynamic_sectors = { 22, 30, 4, 5, 6, 8, 30, 31, 32, 40, 41, 42, 43, 44, 45, 99 },
                attrs = { "use_sos", "numberring", "yellowmoonring" },
                chunk_type = "initial",
            },
            -- w3：市街地 03
            {
                name = "w3a03",
                dir = "w3a03",
                player_chara = "tag",
                stage_no = 9,
                sequence_no = 19,
                amb = "obj_w3a03_env1",
                static_sectors = { 1, 10, 11, 21, 25 },
                attrs = { "shiftbp", "numberring", "yellowmoonring" },
                cleared_events = { "ev1530c" },
                chunk_type = "after",
            },
            -- w3：市街地:クラシック（クラソニ）stage3
            {
                name = "w3a04",
                dir = "w3a04",
                player_chara = "classic",
                stage_no = 10,
                sequence_no = 3,
                amb = "obj_w3a04_env1",
                static_sectors = { 11, 21 },
                attrs = { "use_sos", "numberring", "yellowmoonring" },
                dynamic_sectors = { 1, 31, 3, 39, 41, 51, 6, 61, 99 },
                opening_events = { "ev0310c" },
                cleared_events = { "ev0325n", "ev0330c" },
                chunk_type = "initial",
            },
            -- w4：カジノ:ジャングル（ソニック） stage7　
            {
                name = "w4a01",
                dir = "w4a01",
                player_chara = "sonic",
                stage_no = 11,
                sequence_no = 8,
                amb = "obj_w4a01_env1",
                static_sectors = { 3, 10, 11, 13, 15 },
                attrs = { "use_sos", "numberring", "yellowmoonring", "appgfxparam" },
                chunk_type = "initial",
            },
            -- w4：カジノ:カジノ急流下り（バディ）stage15
            {
                name = "w4a02",
                dir = "w4a02",
                player_chara = "buddy",
                stage_no = 12,
                sequence_no = 14,
                amb = "obj_w4a02_env1",
                static_sectors = { 11, 21 },
                attrs = { "numberring", "yellowmoonring", "appgfxparam" },
                cleared_events = { "ev1120c" },
                chunk_type = "initial",
            },
            -- w4：カジノ:クラシック（クラソニ）stage10
            {
                name = "w4a04",
                dir = "w4a04",
                player_chara = "classic",
                stage_no = 13,
                sequence_no = 13,
                amb = "obj_w4a04_env1",
                static_sectors = { 10, 11, 21, 30 },
                attrs = { "use_sos", "numberring", "yellowmoonring", "appgfxparam" },
                chunk_type = "initial",
            },
            -- w4：カジノ boss02"
            {
                name = "w4b01",
                dir = "w4b01",
                player_chara = "sonic",
                stage_no = 14,
                bgm_retry_start = 13.3,
                bgm_retry_fade = 0.4,
                sequence_no = 9,
                static_sectors = { 05, 21, 31, 61 },
                amb = "obj_w4b01_env1",
                attrs = { "boss", "appgfxparam" },
                opening_events = { "ev0720c" },
                cleared_events = { "ev0730c" },
                chunk_type = "initial",
            },
            -- w5：荒廃グリーンヒル stage1"
            {
                name = "w5a01",
                dir = "w5a01",
                stage_no = 15,
                sequence_no = 1,
                player_chara = "sonic",
                amb = "obj_w5a01_env1",
                static_sectors = { 10, 01, 20 },
                attrs = { "use_sos", "numberring", "yellowmoonring" },
                opening_events = { "ev0010c" },
                cleared_events = { "ev0120c", "ev0125n", "ev0130c" },
                chunk_type = "initial",
            },
            -- w5：荒廃グリーンヒル stage11"
            {
                name = "w5a02",
                dir = "w5a02",
                player_chara = "buddy",
                stage_no = 16,
                sequence_no = 20,
                amb = "obj_w5a02_env1",
                static_sectors = { 10, 50, },
                dynamic_sectors = { 11, 20, 21, 30, 31, 40, 99 },
                attrs = { "use_sos", "numberring", "yellowmoonring" },
                chunk_type = "after",
            },
            -- w5：荒廃グリーンヒル stage6"
            {
                name = "w5a03",
                dir = "w5a03",
                player_chara = "tag",
                stage_no = 17,
                sequence_no = 7,
                amb = "obj_w5a03_env1",
                static_sectors = { 05, 10, 19, 40 },
                attrs = { "use_sos", "numberring", "yellowmoonring", "appgfxparam" },
                chunk_type = "initial",
            },
            -- w5：荒廃グリーンヒル:クラシック（クラソニ）stage8
            {
                name = "w5a04",
                player_chara = "classic",
                stage_no = 18,
                sequence_no = 10,
                static_sectors = { 10, 11, 12, 20, 21, 22 },
                attrs = { "use_sos", "numberring", "yellowmoonring" },
                amb = "obj_w5a04_env1",
                chunk_type = "initial",
            },
            -- w5：荒廃グリーンヒル:ボス boss03"
            {
                name = "w5b01",
                player_chara = "classic",
                stage_no = 19,
                sequence_no = 11,
                amb = "obj_w5b01_env1",
                attrs = { "boss" },
                opening_events = { "ev0820c" },
                cleared_events = { "ev0840c" },
                chunk_type = "initial",
            },
            -- w6:メトロポリス stage16
            {
                name = "w6a01",
                dir = "w6a01",
                player_chara = "sonic",
                stage_no = 20,
                sequence_no = 23,
                amb = "obj_w6a01_env1",
                static_sectors = { 11, 13 },
                attrs = { "use_sos", "numberring", "yellowmoonring" },
                chunk_type = "after",
            },
            -- w6:メトロポリス stage8
            {
                name = "w6a02",
                dir = "w6a02",
                player_chara = "buddy",
                stage_no = 21,
                sequence_no = 16,
                amb = "obj_w6a02_env1",
                static_sectors = { 02, 03, 05, 07, 11, 12 },
                attrs = { "use_sos", "numberring", "yellowmoonring" },
                chunk_type = "after",
            },
            -- w6:メトロポリス stage17
            {
                name = "w6a03",
                dir = "w6a03",
                player_chara = "tag",
                stage_no = 22,
                sequence_no = 24,
                amb = "obj_w6a03_env1",
                static_sectors = { 10, 11 },
                dynamic_sectors = { 20, 21, 24, 22, 23, 25, 26 },
                attrs = { "use_sos", "numberring", "yellowmoonring", "appgfxparam" },
                opening_events = { "ev2010c" },
                cleared_events = { "ev2030c" },
                chunk_type = "after",
            },
            -- w6：メトロポリス:ボス boss04
            {
                name = "w6b01",
                dir = "w6b01",
                player_chara = "buddy",
                stage_no = 23,
                sequence_no = 17,
                amb = "obj_w6b01_env1",
                attrs = { "boss", "appgfxparam" },
                opening_events = { "ev1330c" },
                cleared_events = { "ev1340c" },
                chunk_type = "after",
            },
            -- w7:エッグマン帝国要塞 stage26
            {
                name = "w7a01",
                dir = "w7a01",
                player_chara = "sonic",
                stage_no = 24,
                bgm_retry_start = 21.9,
                bgm_retry_fade = 0.0,
                sequence_no = 26,
                amb = "obj_w7a01_env1",
                static_sectors = { 01, 05, 06, 11 },
                attrs = { "use_sos", "numberring", "yellowmoonring" },
                chunk_type = "after",
            },
            -- w7:エッグマン帝国要塞 stage25
            {
                name = "w7a02",
                dir = "w7a02",
                player_chara = "buddy",
                stage_no = 25,
                sequence_no = 25,
                bgm_retry_start = 25.5,
                bgm_retry_fade = 1.0,
                amb = "obj_w7a02_env1",
                static_sectors = { 05, 08, 11 },
                attrs = { "use_sos", "numberring", "yellowmoonring" },
                opening_events = { "ev2120c" },
                cleared_events = { "ev2140c" },
                chunk_type = "after",
            },
            -- w7:エッグマン帝国要塞 stage21
            {
                name = "w7a03",
                dir = "w7a03",
                player_chara = "tag",
                stage_no = 26,
                sequence_no = 29,
                bgm_retry_start = 15.5,
                bgm_retry_fade = 0.1,
                amb = "obj_w7a03_env1",
                static_sectors = { 10, 11 },
                attrs = { "numberring", "yellowmoonring", "appgfxparam" },
                chunk_type = "after",
            },
            -- w7：エッグマン帝国要塞:クラシック（クラソニ）stage23
            {
                name = "w7a04",
                dir = "w7a04",
                player_chara = "classic",
                stage_no = 27,
                sequence_no = 28,
                amb = "obj_w7a04_env1",
                static_sectors = { 05, 07, 11 },
                attrs = { "use_sos", "numberring", "yellowmoonring" },
                chunk_type = "after",
            },
            -- w7：エッグマン帝国要塞::ボス boss05
            {
                name = "w7b01",
                dir = "w7b01",
                player_chara = "sonic",
                stage_no = 28,
                sequence_no = 27,
                amb = "obj_w7b01_env1",
                attrs = { "boss", "chara-change", "shiftbp", "appgfxparam" },
                static_sectors = { 02, 05, 11 },
                opening_events = { "ev2220c" },
                cleared_events = { "ev2240c" },
                chunk_type = "after",
            },
            -- w7：エッグマン帝国要塞::ボス boss06
            {
                name = "w7b02",
                dir = "w7b02",
                player_chara = "classic",
                stage_no = 29,
                sequence_no = 30,
                amb = "obj_w7b02_env1",
                attrs = { "boss", "chara-change", "shiftbp", "appgfxparam" },
                static_sectors = { 01, 05, 06 },
                opening_events = { "ev2420c" },
                chunk_type = "after",
            },

            ---------------------------------------------------------------
            -- for secret extra
            -- w1：監獄衛星：Exステージ7"
            {
                name = "w1x01",
                dir = "w1a02",
                player_chara = "sonic",
                stage_no = 30,
                amb = "obj_w1x01_env1",
                attrs = { "extra" },
                category_no = 8,
                static_sectors = { 19, 20, 21, 22, 23, 24 },
                chunk_type = "after",
            },
            -- w2：スペースポート：Exステージ2"
            {
                name = "w2x01",
                dir = "w2a01",
                player_chara = "buddy",
                stage_no = 31,
                amb = "obj_w2x01_env1",
                attrs = { "extra", "appgfxparam" },
                category_no = 3,
                static_sectors = { 23, 31, 32, 33 },
                chunk_type = "after",
            },
            -- w3：市街地 EXステージ6"
            {
                name = "w3x01",
                dir = "w3a02",
                player_chara = "sonic",
                stage_no = 32,
                amb = "obj_s03_env1",
                attrs = { "extra" },
                category_no = 7,
                static_sectors = { 1, 5, 7, 8, 40, 41, 42, 43, 44, 45, 99 },
                dynamic_sectors = { 4 },
                chunk_type = "after",
            },
            -- w4：カジノ：Exステージ5"
            {
                name = "w4x01",
                dir = "w4a01",
                player_chara = "buddy",
                stage_no = 33,
                amb = "obj_w4x01_env1",
                attrs = { "extra", "appgfxparam" },
                category_no = 6,
                static_sectors = { 14, 15, 20, 21 },
                chunk_type = "after",
            },
            -- w5：荒廃グリーンヒル：Exステージ4"
            {
                name = "w5x01",
                dir = "w5a02",
                player_chara = "sonic",
                stage_no = 34,
                amb = "obj_w5x01_env1",
                attrs = { "extra" },
                category_no = 5,
                static_sectors = { 10, 50 },
                chunk_type = "after",
            },
            -- w6：メトロポリス：Exステージ3"
            {
                name = "w6x01",
                dir = "w6a01",
                player_chara = "buddy",
                stage_no = 35,
                amb = "obj_w6x01_env1",
                attrs = { "extra" },
                category_no = 4,
                static_sectors = { 31, 32 },
                chunk_type = "after",
            },            
            -- w5：荒廃グリーンヒル：Exステージ1"
            {
                name = "w5x02",
                dir = "w5a01",
                player_chara = "sonic",
                stage_no = 36,
                amb = "obj_w5x02_env1",
                attrs = { "extra" },
                category_no = 2,
                static_sectors = { 10, 1, 21, 22, 30, 31 },
                chunk_type = "after",
            },

            ---------------------------------------------------------------
            -- for special
            -- w1：監獄衛星：シークレットステージ5"
            {
                name = "w1x02",
                dir = "w1a02",
                player_chara = "sonic",
                stage_no = 37,
                amb = "obj_w1x01_env1",
                attrs = { "special" },
                category_no = 5,
                static_sectors = { 21, 22, 23, 24, 25 },
                chunk_type = "after",
            },
            -- w2：スペースポート：シークレットステージ4"
            {
                name = "w2x02",
                dir = "w2a01",
                player_chara = "buddy",
                stage_no = 38,
                amb = "obj_w2x01_env1",
                attrs = { "special", "appgfxparam" },
                category_no = 4,
                static_sectors = { 23, 31, 32, 33 },
                chunk_type = "after",
            },
            -- w3：市街地 シークレットステージ2"
            {
                name = "w3x02",
                dir = "w3a02",
                player_chara = "sonic",
                stage_no = 39,
                amb = "obj_s03_env1",
                attrs = { "special" },
                category_no = 2,
                static_sectors = { 1, 5, 7, 8, 40, 41, 42 },
                dynamic_sectors = { 4, 43, 44, 45, 99 },
                chunk_type = "after",
            },
            -- w4：カジノ：シークレットステージ1"
            {
                name = "w4x02",
                dir = "w4a01",
                player_chara = "buddy",
                stage_no = 40,
                amb = "obj_w4x01_env1",
                attrs = { "special", "appgfxparam" },
                category_no = 1,
                static_sectors = { 20, 21 },
                chunk_type = "after",
            },
            -- w5：荒廃グリーンヒル：シークレットステージ3"
            {
                name = "w5x03",
                dir = "w5a02",
                player_chara = "sonic",
                stage_no = 41,
                amb = "obj_w5x01_env1",
                attrs = { "special" },
                category_no = 3,
                static_sectors = { 10, 20, 30, 50 },
                chunk_type = "after",
            },
            -- w6：メトロポリス：シークレットステージ6"
            {
                name = "w6x02",
                dir = "w6a01",
                player_chara = "buddy",
                stage_no = 42,
                amb = "obj_w6x01_env1",
                attrs = { "special" },
                category_no = 6,
                static_sectors = { 31, 32 },
                chunk_type = "after",
            },     
			-- CHAOS BOSS FIGHT (Classic Sonic Improvement Mod)
            {
                name = "w3b01",
                dir = "w3b01",
                player_chara = "classic",
                stage_no = 46,
				attrs = { "extra" },
				category_no = 1,
				bgm = "boss_cl_chs",
                amb = "obj_s03_env1",
                static_sectors = { 1, 10, 11, 2, 3, 5 ,12, 20, 21, 22 },
                dynamic_sectors = { 4, 7, 6, 8, 30, 31, 32, 40, 41, 42, 43 },
                chunk_type = "after",
            },				

            ---------------------------------------------------------------
            -- for staffroll     注）static_sectorsには0は入れないこと
            -- スタッフロール:監獄衛星--------------------------------
            {
                name = "w1s01",
                dir = "w1a01",
                amb = "obj_w1a01_env1",
                attrs = { "credit" },
                static_sectors = { 21,31,32,},
                dynamic_sectors = { 0 },
            },                 
            {
                name = "w1s02",
                dir = "w1a02",
                amb = "obj_w1a02_env1",
                attrs = { "credit" },
                static_sectors = { 10, 11, 13, 14, 19, },
                dynamic_sectors = { 0 },
            },                 
            {
                name = "w1s04",
                dir = "w1a04",
                amb = "obj_w1a04_env1",
                attrs = { "credit" },
                static_sectors = { 1,17,19,20,21,22,24,25,26,30,31,32,33,34,35,40,81,82,83,84, },
                dynamic_sectors = { 0 },
            },  


            -- スタッフロール:スペースポート--------------------------------

            {
                name = "w2s01",
                dir = "w2a01",
                amb = "obj_w2a01_env1",
                attrs = { "credit" },
                static_sectors = { 41, 42, },
                dynamic_sectors = { 0 },
            },
            {
                name = "w2s02",
                dir = "w2a02",
                amb = "obj_w2a02_env1",
                attrs = { "credit" },
                static_sectors = { 1, 61,62,63,64, },
                dynamic_sectors = { 0 },
            },
            {
                name = "w2s04",
                dir = "w2a04",
                amb = "obj_w2a04_env1",
                attrs = { "credit" },
                static_sectors = { 11, 12, 13, 21,22,23, },
                dynamic_sectors = { 0 },
            },


            -- スタッフロール:市街地--------------------------------

            {
                name = "w3s01",
                dir = "w3a01",
                amb = "obj_w3a01_env1",
                attrs = { "credit" },
                static_sectors = { 10, 20, 21, 6, 30, 32, 40, },                
                dynamic_sectors = { 0 },
            }, 
            {
                name = "w3s02",
                dir = "w3a02",
                amb = "obj_w3a02_env1",
                attrs = { "credit" },
                static_sectors = { 6, 7, 8, 40, 41, 42, 43, 44, 45, },
                dynamic_sectors = { 0 },
            },
            {
                name = "w3s03",
                dir = "w3a03",
                amb = "obj_w3a03_env1",
                attrs = { "credit" },
                static_sectors = { 5,21,30,31,40,41,42, },
                dynamic_sectors = { 0 },
            },                         
            {
                name = "w3s04",
                dir = "w3a04",
                amb = "obj_w3a04_env1",
                attrs = { "credit" },
                static_sectors = { 31,32,40, 41, 42, },
                dynamic_sectors = { 0 },
            }, 


            -- スタッフロール:カジノ--------------------------------


            {
                name = "w4s01",
                dir = "w4a01",
                amb = "obj_w4a01_env1",
                attrs = { "credit" },
                static_sectors = { 10, 11, 13, 15, },
                dynamic_sectors = { 0 },
            }, 
            {
                name = "w4s02",
                dir = "w4a02",
                amb = "obj_w4a02_env1",
                attrs = { "credit" },
                static_sectors = { 21,31, },
                dynamic_sectors = { 0 },
            }, 
            {
                name = "w4s04",
                dir = "w4a04",
                amb = "obj_w4a04_env1",
                attrs = { "credit" },
                static_sectors = { 10, 11, 20, 21, 30, 31, 13, 20, 32, },
                dynamic_sectors = { 0 },
            }, 



            -- スタッフロール:荒廃グリーンヒル--------------------------------

            {
                name = "w5s01",
                dir = "w5a01",
                amb = "obj_w5a01_env1",
                attrs = { "credit" },
                static_sectors = { 10, 1 , 20, 21, },
                dynamic_sectors = { 0 },
            }, 
            {
                name = "w5s02",
                dir = "w5a02",
                amb = "obj_w5a01_env1",
                attrs = { "credit" },
                static_sectors = { 10, 11, 20, 30, 31, 32, 40, 42, },
                dynamic_sectors = { 0 },
            }, 
            {
                name = "w5s03",
                dir = "w5a03",
                amb = "obj_w5a03_env1",
                attrs = { "credit" },
                static_sectors = { 1,30, 31, 32, 40, 42, },
                dynamic_sectors = { 0 },
            }, 
            {
                name = "w5s04",
                dir = "w5a04",
                amb = "obj_w5a04_env1",
                attrs = { "credit" },
                static_sectors = { 1,30, 31, 32, 40, 42, },
                dynamic_sectors = { 0 },
            }, 


            -- スタッフロール:メトロポリス--------------------------------

            {
                name = "w6s01",
                dir = "w6a01",
                amb = "obj_w6a01_env1",
                attrs = { "credit" },
                static_sectors = { 20, 21, 22, },
                dynamic_sectors = { 0 },
            }, 
            {
                name = "w6s02",
                dir = "w6a02",
                amb = "obj_w6a02_env1",
                attrs = { "credit" },
                static_sectors = { 2, 5, 11, 12, },
                dynamic_sectors = { 0 },
            }, 
            {
                name = "w6s03",
                dir = "w6a03",
                player_chara = "sonic",
                amb = "obj_w6a03_env1",
                attrs = { "credit" },
                static_sectors = { 11, 13, 20, 21, },
                dynamic_sectors = { 0 },
            }, 


            -- スタッフロール:帝国要塞--------------------------------

            {
                name = "w7s01",
                dir = "w7a01",
                amb = "obj_w7a01_env1",
                attrs = { "credit" },
                static_sectors = { 05, 06 },
                dynamic_sectors = { 0 },
            }, 

            {
                name = "w7s02",
                dir = "w7a02",
                amb = "obj_w7a02_env1",
                attrs = { "credit" },
                static_sectors = { 1, 05, 06 },
                dynamic_sectors = { 0 },
            },             
            {
                name = "w7s03",
                dir = "w7a03",
                amb = "obj_w7a03_env1",
                attrs = { "credit" },
                static_sectors = { 1, 05, 06 },
                dynamic_sectors = { 0 },
            }, 
            {
                name = "w7s04",
                dir = "w7a04",
                amb = "obj_w7a04_env1",
                attrs = { "credit" },
                static_sectors = { 05, 07, 11, },
                dynamic_sectors = { 0 },
            }, 
            
            -- タイトル画面用ステージ--------------------------------
            {
                name = "w9t01",
                dir = "w9t01",
                amb = "obj_w9t01_env1",
                attrs = { "title" },
                static_sectors = { 0 },
            }, 

            -- for event scene.
            -- 研究室 ev0010c
            {
                name        = "w9a01",
                dir         = "w9a01",
                player_pos  = { 0, 0, 0 },
                player_dir  = { 0.0, -180.0, 0.0 },
            },
            -- アジト ev0130c ev0140c ev1120c ev1830c
            {
                name        = "w9a02",
                dir         = "w9a02",
                player_pos  = { 0, 0, 0 },
                player_dir  = { 0.0, -180.0, 0.0 },
            },
            -- コックピット ev2420c
            {
                name        = "w9a03",
                dir         = "w9a03",
                player_pos  = { 0, 0, 0 },
                player_dir  = { 0.0, -180.0, 0.0 },
            },
            -- 監獄A ev0430c
            {
                name        = "w9a11",
                dir         = "w9a11",
                player_pos  = { 0, 0, 0 },
                player_dir  = { 0.0, -180.0, 0.0 },
            },
            -- 監獄B ev0440c
            {
                name        = "w9a12",
                dir         = "w9a12",
                player_pos  = { 0, 0, 0 },
                player_dir  = { 0.0, -180.0, 0.0 },
            },
            -- 監獄C ev1830c
            {
                name        = "w9a13",
                dir         = "w9a13",
                player_pos  = { 0, 0, 0 },
                player_dir  = { 0.0, -180.0, 0.0 },
            },
            -- 市街地A ev0120c ev0310c ev0330c
            {
                name        = "w9a31",
                dir         = "w9a31",
                player_pos  = { 0, 0, 0 },
                player_dir  = { 0.0, -180.0, 0.0 },
            },
            -- 市街地B ev2510c
            {
                name        = "w9a32",
                dir         = "w9a32",
                player_pos  = { 0, 0, 0 },
                player_dir  = { 0.0, -180.0, 0.0 },
            },
            -- グリヒルA ev0820c ev0840c ev1830c
            {
                name        = "w9a51",
                dir         = "w9a51",
                player_pos  = { 0, 0, 0 },
                player_dir  = { 0.0, -180.0, 0.0 },
            },
            -- グリヒルB ev0840c
            {
                name        = "w9a52",
                dir         = "w9a52",
                player_pos  = { 0, 0, 0 },
                player_dir  = { 0.0, -180.0, 0.0 },
            },
            -- メトロポリスA ev1330c
            {
                name        = "w9a61",
                dir         = "w9a61",
                player_pos  = { 0, 0, 0 },
                player_dir  = { 0.0, -180.0, 0.0 },
            },
            -- メトロポリスB ev2010c
            {
                name        = "w9a62",
                dir         = "w9a62",
                player_pos  = { 0, 0, 0 },
                player_dir  = { 0.0, -180.0, 0.0 },
            },
            -- 要塞晴れ ev2440c
            {
                name        = "w9a71",
                dir         = "w9a71",
                player_pos  = { 0, 0, 0 },
                player_dir  = { 0.0, -180.0, 0.0 },
            },
        },
    },
}

