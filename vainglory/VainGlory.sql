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



