```
- 로컬 푸드 판매 테이블                             - 의성 관광명소 테이블

CREATE TABLE local_food (                          CREATE TABLE attractions (
    id NUMBER PRIMARY KEY,                             id NUMBER PRIMARY KEY,            
    name VARCHAR2(100),                                name VARCHAR2(100), 
    description VARCHAR2(255),                         rating NUMBER(2,1),
    price NUMBER                                       description VARCHAR2(500),
                                                       image_url VARCHAR2(255)
);                                                  );
```
