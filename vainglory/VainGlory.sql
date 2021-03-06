CREATE TABLE HERO(
  hero_id NUMBER,
  hero_name VARCHAR2(24) NOT NULL,
  created_date DATE DEFAULT SYSDATE,
  MODIFIED_DATE DATE,
  CONSTRAINT "HERO_PK" PRIMARY KEY ("HERO_ID") ENABLE
)
/

CREATE TABLE ARDAN_GAME_HISTORY(
  ARDAN_VICTORY_HISTORY_ID NUMBER,
  ally1_hero_id NUMBER NOT NULL,
  ally2_hero_id NUMBER NOT NULL,
  enemy1_hero_id NUMBER NOT NULL,
  enemy2_hero_id NUMBER NOT NULL,
  enemy3_hero_id NUMBER NOT NULL,
  is_victory CHAR(1) NOT NULL,
  created_date DATE DEFAULT SYSDATE,
  modified_date DATE,
  CONSTRAINT "ARDAN_VICTORY_HISTORY_PK" PRIMARY KEY ("ARDAN_VICTORY_HISTORY_ID") ENABLE,
  CONSTRAINT ARDAN_VICTORY_HISTORY_FK1 FOREIGN KEY (ALLY1_HERO_ID) REFERENCES HERO(HERO_ID),
  CONSTRAINT ARDAN_VICTORY_HISTORY_FK2 FOREIGN KEY (ALLY2_HERO_ID) REFERENCES HERO(HERO_ID),
  CONSTRAINT ARDAN_VICTORY_HISTORY_FK3 FOREIGN KEY (ENEMY1_HERO_ID) REFERENCES HERO(HERO_ID),
  CONSTRAINT ARDAN_VICTORY_HISTORY_FK4 FOREIGN KEY (ENEMY2_HERO_ID) REFERENCES HERO(HERO_ID),
  CONSTRAINT ARDAN_VICTORY_HISTORY_FK5 FOREIGN KEY (ENEMY3_HERO_ID) REFERENCES HERO(HERO_ID)
)
/

CREATE TABLE ADAGIO_GAME_HISTORY(
  ADAGIO_VICTORY_HISTORY_ID NUMBER,
  ally1_hero_id NUMBER NOT NULL,
  ally2_hero_id NUMBER NOT NULL,
  enemy1_hero_id NUMBER NOT NULL,
  enemy2_hero_id NUMBER NOT NULL,
  enemy3_hero_id NUMBER NOT NULL,
  is_victory CHAR(1) NOT NULL,
  created_date DATE DEFAULT SYSDATE,
  modified_date DATE,
  CONSTRAINT "ADAGIO_VICTORY_HISTORY_PK" PRIMARY KEY ("ADAGIO_VICTORY_HISTORY_ID") ENABLE,
  CONSTRAINT ADAGIO_VICTORY_HISTORY_FK1 FOREIGN KEY (ALLY1_HERO_ID) REFERENCES HERO(HERO_ID),
  CONSTRAINT ADAGIO_VICTORY_HISTORY_FK2 FOREIGN KEY (ALLY2_HERO_ID) REFERENCES HERO(HERO_ID),
  CONSTRAINT ADAGIO_VICTORY_HISTORY_FK3 FOREIGN KEY (ENEMY1_HERO_ID) REFERENCES HERO(HERO_ID),
  CONSTRAINT ADAGIO_VICTORY_HISTORY_FK4 FOREIGN KEY (ENEMY2_HERO_ID) REFERENCES HERO(HERO_ID),
  CONSTRAINT ADAGIO_VICTORY_HISTORY_FK5 FOREIGN KEY (ENEMY3_HERO_ID) REFERENCES HERO(HERO_ID)
)
/

CREATE TABLE CATHERINE_GAME_HISTORY(
  CATHERINE_VICTORY_HISTORY_ID NUMBER,
  ally1_hero_id NUMBER NOT NULL,
  ally2_hero_id NUMBER NOT NULL,
  enemy1_hero_id NUMBER NOT NULL,
  enemy2_hero_id NUMBER NOT NULL,
  enemy3_hero_id NUMBER NOT NULL,
  is_victory CHAR(1) NOT NULL,
  created_date DATE DEFAULT SYSDATE,
  modified_date DATE,
  CONSTRAINT "CATHERINE_VICTORY_HISTORY_PK" PRIMARY KEY ("CATHERINE_VICTORY_HISTORY_ID") ENABLE,
  CONSTRAINT CATHERINE_VICTORY_HISTORY_FK1 FOREIGN KEY (ALLY1_HERO_ID) REFERENCES HERO(HERO_ID),
  CONSTRAINT CATHERINE_VICTORY_HISTORY_FK2 FOREIGN KEY (ALLY2_HERO_ID) REFERENCES HERO(HERO_ID),
  CONSTRAINT CATHERINE_VICTORY_HISTORY_FK3 FOREIGN KEY (ENEMY1_HERO_ID) REFERENCES HERO(HERO_ID),
  CONSTRAINT CATHERINE_VICTORY_HISTORY_FK4 FOREIGN KEY (ENEMY2_HERO_ID) REFERENCES HERO(HERO_ID),
  CONSTRAINT CATHERINE_VICTORY_HISTORY_FK5 FOREIGN KEY (ENEMY3_HERO_ID) REFERENCES HERO(HERO_ID)
)
/

CREATE TABLE LANCE_GAME_HISTORY(
  LANCE_VICTORY_HISTORY_ID NUMBER,
  ally1_hero_id NUMBER NOT NULL,
  ally2_hero_id NUMBER NOT NULL,
  enemy1_hero_id NUMBER NOT NULL,
  enemy2_hero_id NUMBER NOT NULL,
  enemy3_hero_id NUMBER NOT NULL,
  is_victory CHAR(1) NOT NULL,
  created_date DATE DEFAULT SYSDATE,
  modified_date DATE,
  CONSTRAINT "LANCE_VICTORY_HISTORY_PK" PRIMARY KEY ("LANCE_VICTORY_HISTORY_ID") ENABLE,
  CONSTRAINT LANCE_VICTORY_HISTORY_FK1 FOREIGN KEY (ALLY1_HERO_ID) REFERENCES HERO(HERO_ID),
  CONSTRAINT LANCE_VICTORY_HISTORY_FK2 FOREIGN KEY (ALLY2_HERO_ID) REFERENCES HERO(HERO_ID),
  CONSTRAINT LANCE_VICTORY_HISTORY_FK3 FOREIGN KEY (ENEMY1_HERO_ID) REFERENCES HERO(HERO_ID),
  CONSTRAINT LANCE_VICTORY_HISTORY_FK4 FOREIGN KEY (ENEMY2_HERO_ID) REFERENCES HERO(HERO_ID),
  CONSTRAINT LANCE_VICTORY_HISTORY_FK5 FOREIGN KEY (ENEMY3_HERO_ID) REFERENCES HERO(HERO_ID)
)
/

CREATE TABLE LYRA_GAME_HISTORY(
  LYRA_VICTORY_HISTORY_ID NUMBER,
  ally1_hero_id NUMBER NOT NULL,
  ally2_hero_id NUMBER NOT NULL,
  enemy1_hero_id NUMBER NOT NULL,
  enemy2_hero_id NUMBER NOT NULL,
  enemy3_hero_id NUMBER NOT NULL,
  is_victory CHAR(1) NOT NULL,
  created_date DATE DEFAULT SYSDATE,
  modified_date DATE,
  CONSTRAINT "LYRA_VICTORY_HISTORY_PK" PRIMARY KEY ("LYRA_VICTORY_HISTORY_ID") ENABLE,
  CONSTRAINT LYRA_VICTORY_HISTORY_FK1 FOREIGN KEY (ALLY1_HERO_ID) REFERENCES HERO(HERO_ID),
  CONSTRAINT LYRA_VICTORY_HISTORY_FK2 FOREIGN KEY (ALLY2_HERO_ID) REFERENCES HERO(HERO_ID),
  CONSTRAINT LYRA_VICTORY_HISTORY_FK3 FOREIGN KEY (ENEMY1_HERO_ID) REFERENCES HERO(HERO_ID),
  CONSTRAINT LYRA_VICTORY_HISTORY_FK4 FOREIGN KEY (ENEMY2_HERO_ID) REFERENCES HERO(HERO_ID),
  CONSTRAINT LYRA_VICTORY_HISTORY_FK5 FOREIGN KEY (ENEMY3_HERO_ID) REFERENCES HERO(HERO_ID)
)
/

CREATE TABLE GAMES(
  GAME_ID NUMBER,
  GAME_DATE DATE,
  created_date DATE DEFAULT SYSDATE,
  modified_date DATE,
  CONSTRAINT "GAMES_PK" PRIMARY KEY ("GAME_ID") ENABLE
)
/

CREATE TABLE GAME_HISTORY(
  game_history_id NUMBER,
  game_id NUMBER NOT NULL,
  hero_id NUMBER NOT NULL,
  is_victory CHAR(1) NOT NULL,
  created_date DATE DEFAULT SYSDATE,
  modified_date DATE,
  CONSTRAINT "GAME_HISTORY_PK" PRIMARY KEY ("GAME_HISTORY_ID") ENABLE,
  CONSTRAINT GAME_HISTORY_FK1 FOREIGN KEY (GAME_ID) REFERENCES GAMES(GAME_ID),
  CONSTRAINT GAME_HISTORY_FK2 FOREIGN KEY (hero_id) REFERENCES HERO(HERO_ID)
)
/

ALTER TABLE GAME_HISTORY
ADD CONSTRAINT game_hero_unique UNIQUE(game_id, hero_id, is_victory);

-- Get the game history
select game_history_id, game_id, GET_HERO_NAME(hero_id) hero_name, is_victory, created_date
from GAME_HISTORY;

-- Get the latest entry for Ardan
select ardan.ardan_victory_history_id, ally1.hero_name, ally2.hero_name, ardan.is_victory
from ARDAN_GAME_HISTORY ardan, HERO ally1, HERO ally2
where ardan.ally1_hero_id = ally1.hero_id
and ardan.ally2_hero_id = ally2.hero_id
and ardan.is_victory = 'Y'
order by ardan.ardan_victory_history_id desc;

-- move statistics data to game_history table from ardan_game_history table
select ardan_victory_history_id, get_hero_name(enemy1_hero_id), get_hero_name(enemy2_hero_id), get_hero_name(enemy3_hero_id)
from ardan_game_history
where ally1_hero_id = '60' -- Samuel
and ally2_hero_id = '30' -- Taka
and is_victory = 'Y';

delete from ARDAN_GAME_HISTORY where ardan_victory_history_id = '11';

-- move statistics data to game_history table from ardan_game_history table
select ardan_victory_history_id id, get_hero_name(ally1_hero_id) ally1, get_hero_name(ally2_hero_id) ally2, 
       get_hero_name(enemy1_hero_id) enemy1, get_hero_name(enemy2_hero_id) enemy2, get_hero_name(enemy3_hero_id) enemy3
from ardan_game_history
where is_victory = 'Y'
order by 1;

delete from ARDAN_GAME_HISTORY where ardan_victory_history_id = '2';
