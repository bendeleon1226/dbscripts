CREATE OR REPLACE Function GET_HERO_NAME
   ( hero_id_in IN NUMBER )
   RETURN VARCHAR2
IS
	hero_name_r VARCHAR2(24);

BEGIN

   SELECT hero_name INTO hero_name_r
   FROM hero
   WHERE hero_id = hero_id_in;

RETURN hero_name_r;

EXCEPTION
WHEN OTHERS THEN
   raise_application_error(-20001,'An error was encountered - '||SQLCODE||' -ERROR- '||SQLERRM);
END;
/