CREATE TABLE SELL_STOCKS(
  id NUMBER,
	 stock_symbol VARCHAR2(10) NOT NULL,
	 last_trading_price NUMBER(11,4),
	 is_notified char DEFAULT 'N',
   CONSTRAINT "SELL_STOCKS_PK" PRIMARY KEY ("ID") ENABLE
);
