CREATE TABLE ALL_ACTIVE_STOCKS(
  id NUMBER,
	 stock_symbol VARCHAR2(10) NOT NULL,
	 last_trading_price NUMBER(11,4),
	 stock_value NUMBER,
	 closing_date DATE,
     stock_amount NUMBER,	 
   CONSTRAINT "ALL_ACTIVE_STOCKS_PK" PRIMARY KEY ("ID") ENABLE
);
