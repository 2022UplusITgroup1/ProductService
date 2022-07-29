
-- phone_brand_category table
INSERT INTO productdb.phone_brand_category (name) VALUES ("삼성");
INSERT INTO productdb.phone_brand_category (name) VALUES ("애플");


-- phone_storage_category table
INSERT INTO productdb.phone_storage_category (capability) VALUES (64);
INSERT INTO productdb.phone_storage_category (capability) VALUES (128);
INSERT INTO productdb.phone_storage_category (capability) VALUES (256);
INSERT INTO productdb.phone_storage_category (capability) VALUES (512);
INSERT INTO productdb.phone_storage_category (capability) VALUES (1024);
INSERT INTO productdb.phone_storage_category (capability) values (32); /* update productdb.phone_storage_category set id=0 where id= {id}; */


-- phone table
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 1, "SM-M236L", "Galaxy Buddy 2", "/image/product/ushop_SM-M236L_thumb.jpg", "5G", 1, "라이트 블루", "#C9DDDF", 399300, 0,"2021-09-06");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 1, "SM-M236L", "Galaxy Buddy 2", "/image/product/ushop_SM-M236L_thumb.jpg", "5G", 1, "오렌지", "#DE897E", 399300, 0,"2021-09-06");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 1, "SM-M236L", "Galaxy Buddy 2", "/image/product/ushop_SM-M236L_thumb.jpg", "5G", 1, "그린", "#5D7171", 399300, 0,"2021-09-06");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 1, "SM-A536N", "Galaxy A53 5G", "/image/product/ushop_SM-A536N_thumb.jpg", "5G", 2, "라이트블루", "#D7E8F8", 599500, 0,"2022-03-18");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 1, "SM-A536N", "Galaxy A53 5G", "/image/product/ushop_SM-A536N_thumb.jpg", "5G", 2, "화이트", "#FFFFFF", 599500, 0,"2022-03-18");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 1, "SM-A536N", "Galaxy A53 5G", "/image/product/ushop_SM-A536N_thumb.jpg", "5G", 2, "블랙", "#2F2F2F", 599500, 0,"2022-03-18");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 2, "A2783-128", "iPhone SE 128GB 3세대", "/image/product/ushop_A2783-128_thumb.jpg", "5G", 2, "스타라이트", "#FFFFFF", 660000, 0,"2022-03-08");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 2, "A2783-128", "iPhone SE 128GB 3세대", "/image/product/ushop_A2783-128_thumb.jpg", "5G", 2, "미드나이트", "#262529", 660000, 0,"2022-03-08");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 2, "A2783-128", "iPhone SE 128GB 3세대", "/image/product/ushop_A2783-128_thumb.jpg", "5G", 2, "(PRODUCT)RED", "#a5292c", 660000, 0,"2022-03-08");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "SM-F711N-ZP", "U+Z플랜폰", "/image/product/ushop_SM-F711N-ZP_thumb.jpg", "5G", 2, "화이트", "#FFFFFF", 1319890, 0,"2022-03-14");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "SM-S901N", "갤럭시 S22", "/image/product/ushop_SM-S901N_thumb.jpg", "5G", 1, "팬텀 블랙", "#171717", 999900, 0,"2022-02-14");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "SM-S901N", "갤럭시 S22", "/image/product/ushop_SM-S901N_thumb.jpg", "5G", 1, "팬텀 화이트", "#FFFFFF", 999900, 0,"2022-02-14");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "SM-S901N", "갤럭시 S22", "/image/product/ushop_SM-S901N_thumb.jpg", "5G", 1, "핑크 골드", "#e5d3cf", 999900, 0,"2022-02-14");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "SM-S901N", "갤럭시 S22", "/image/product/ushop_SM-S901N_thumb.jpg", "5G", 1, "그린", "#3d5551", 999900, 0,"2022-02-14");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "SM-S906N", "갤럭시 S22+", "/image/product/ushop_SM-S906N_thumb.jpg", "5G", 1, "팬텀 화이트", "#FFFFFF", 1199000, 0,"2022-02-14");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "SM-S906N", "갤럭시 S22+", "/image/product/ushop_SM-S906N_thumb.jpg", "5G", 1, "팬텀 블랙", "#171717", 1199000, 0,"2022-02-14");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "SM-S906N", "갤럭시 S22+", "/image/product/ushop_SM-S906N_thumb.jpg", "5G", 1, "그린", "#3d5551", 1199000, 0,"2022-02-14");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "SM-S906N", "갤럭시 S22+", "/image/product/ushop_SM-S906N_thumb.jpg", "5G", 1, "핑크 골드", "#e5d3cf", 1199000, 0,"2022-02-14");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "SM-S908N", "갤럭시 S22 Ultra", "/image/product/ushop_SM-S908N_thumb.jpg", "5G", 1, "버건디", "#825d64", 1452000, 0,"2022-02-14");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "SM-S908N", "갤럭시 S22 Ultra", "/image/product/ushop_SM-S908N_thumb.jpg", "5G", 1, "그린", "#3d5551", 1452000, 0,"2022-02-14");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "SM-S908N", "갤럭시 S22 Ultra", "/image/product/ushop_SM-S908N_thumb.jpg", "5G", 1, "팬텀 화이트", "#FFFFFF", 1452000, 0,"2022-02-14");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "SM-S908N", "갤럭시 S22 Ultra", "/image/product/ushop_SM-S908N_thumb.jpg", "5G", 1, "팬텀 블랙", "#171717", 1452000, 0,"2022-02-14");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "RU-SM-N971N2", "갤럭시 노트10 중고폰 ", "/image/product/ushop_RU-SM-N971N2_thumb.jpg", "5G", 1, "아우라 핑크", "#C2565B", 360000, 0,"2019-08-07");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "RU-SM-N976N2", "갤럭시 노트10+ 중고폰", "/image/product/ushop_RU-SM-N976N2_thumb.png", "5G", 1, "아우라 글로우", "#C8CBDA", 360000, 0,"2019-08-07");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "RU-SM-N976N2", "갤럭시 노트10+ 중고폰", "/image/product/ushop_RU-SM-N976N2_thumb.jpg", "5G", 1, "아우라 화이트", "#FFFFFF", 360000, 0,"2019-08-07");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "RU-SM-N976N2", "갤럭시 노트10+ 중고폰", "/image/product/ushop_RU-SM-N976N2_thumb.jpg", "5G", 1, "아우라 블랙", "#0D0D10", 360000, 0,"2019-08-07");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "RU-SM-G977N", "갤럭시S10 5G 중고폰", "/image/product/ushop_RU-SM-G977N_thumb.png", "5G", 1, "마제스틱 블랙", "#000000", 360000, 0,"2019-03-08");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "RU-SM-G977N", "갤럭시S10 5G 중고폰", "/image/product/ushop_RU-SM-G977N_thumb.jpg", "5G", 1, "로얄 골드", "#D4BB62", 360000, 0,"2019-03-08");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "RU-SM-G977N", "갤럭시S10 5G 중고폰", "/image/product/ushop_RU-SM-G977N_thumb.jpg", "5G", 1, "크라운 실버", "#C3C3C3", 360000, 0,"2019-03-08");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 2, "A2628-128", "iPhone 13 mini 128G", "/image/product/ushop_A2628-128_thumb.jpg", "5G", 2, "핑크", "#faddd7", 946000, 0,"2021-09-15");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 2, "A2628-128", "iPhone 13 mini 128G", "/image/product/ushop_A2628-128_thumb.jpg", "5G", 2, "미드나이트", "#232a31", 946000, 0,"2021-09-15");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 2, "A2628-128", "iPhone 13 mini 128G", "/image/product/ushop_A2628-128_thumb.jpg", "5G", 2, "스타라이트", "#faf6f2", 946000, 0,"2021-09-15");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 2, "A2628-128", "iPhone 13 mini 128G", "/image/product/ushop_A2628-128_thumb.jpg", "5G", 2, "(PRODUCT)RED", "#bf0013", 946000, 0,"2021-09-15");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 2, "A2628-128", "iPhone 13 mini 128G", "/image/product/ushop_A2628-128_thumb.jpg", "5G", 2, "그린", "#576856", 946000, 0,"2021-09-15");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 2, "A2638-128", "iPhone 13 Pro 128G", "/image/product/ushop_A2638-128_thumb.jpg", "5G", 2, "알파인 그린", "#576856", 1342000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 2, "A2638-128", "iPhone 13 Pro 128G", "/image/product/ushop_A2638-128_thumb.jpg", "5G", 2, "실버", "#f1f2ed", 1342000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 2, "A2638-128", "iPhone 13 Pro 128G", "/image/product/ushop_A2638-128_thumb.jpg", "5G", 2, "그래파이트", "#54524f", 1342000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 2, "A2638-128", "iPhone 13 Pro 128G", "/image/product/ushop_A2638-128_thumb.jpg", "5G", 2, "골드", "#fae7cf", 1342000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 1, "SM-A226L", "Galaxy Buddy", "/image/product/ushop_SM-A226L_thumb.jpg", "5G", 2, "민트", "#C8E0D0", 399300, 0,"2021-09-10");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 1, "SM-A226L", "Galaxy Buddy", "/image/product/ushop_SM-A226L_thumb.jpg", "5G", 2, "그레이", "#161719", 399300, 0,"2021-09-10");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 1, "SM-A226L", "Galaxy Buddy", "/image/product/ushop_SM-A226L_thumb.jpg", "5G", 2, "화이트", "#E9EAEC", 399300, 0,"2021-09-10");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(1, 1, "SM-A135N", "Galaxy A13", "/image/product/ushop_SM-A135N_thumb.jpg", "4G", 3, "블랙", "#3a3a3a", 297000, 0,"2022-07-01");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(1, 1, "SM-A135N", "Galaxy A13", "/image/product/ushop_SM-A135N_thumb.jpg", "4G", 3, "화이트", "#ececec", 297000, 0,"2022-07-01");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 1, "SM-A235N", "갤럭시 A23", "/image/product/ushop_SM-A235N_thumb.jpg", "4G", 2, "블랙", "#2F2F2F", 374000, 0,"2022-03-25");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 1, "SM-A235N", "갤럭시 A23", "/image/product/ushop_SM-A235N_thumb.jpg", "4G", 2, "라이트블루", "#D7E8F8", 374000, 0,"2022-03-25");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 1, "SM-A235N", "갤럭시 A23", "/image/product/ushop_SM-A235N_thumb.jpg", "4G", 2, "화이트", "#FFFFFF", 374000, 0,"2022-03-25");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(1, 1, "SM-G525N-UK", "U+키즈폰 with 리틀카카오프렌즈", "/image/product/ushop_SM-G525N-UK_thumb.jpg", "4G", 1, "화이트", "#FFFFFF", 322000, 0,"2022-01-14");

update productdb.phone_storage_category set id=0 where id= 6;
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(0, 1, "SM-G160N2021", "갤럭시 폴더2 2021", "/image/product/ushop_SM-G160N2021_thumb.jpg", "4G", 3, "화이트", "#EBECF0", 253000, 0,"2021-04-02");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(0, 1, "SM-G160N2021", "갤럭시 폴더2 2021", "/image/product/ushop_SM-G160N2021_thumb.jpg", "4G", 3, "레드", "#5C1240", 253000, 0,"2021-04-02");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(0, 1, "SM-G160N2021", "갤럭시 폴더2 2021", "/image/product/ushop_SM-G160N2021_thumb.jpg", "4G", 3, "그레이", "#2F3D40", 253000, 0,"2021-04-02");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(1, 1, "SM-A325N", "갤럭시 A32", "/image/product/ushop_SM-A325N_thumb.jpg", "4G", 3, "어썸 블랙", "#000000", 374000, 0,"2021-02-25");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(1, 1, "SM-A325N", "갤럭시 A32", "/image/product/ushop_SM-A325N_thumb.jpg", "4G", 3, "어썸 바이올렛", "#CFCCE1", 374000, 0,"2021-02-25");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(0, 1, "SM-A125N", "갤럭시 A12", "/image/product/ushop_SM-A125N_thumb.jpg", "4G", 1, "블랙", "#2B2E37", 275000, 0,"2020-12-21");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(0, 1, "SM-A125N", "갤럭시 A12", "/image/product/ushop_SM-A125N_thumb.jpg", "4G", 1, "화이트", "#FFFFFF", 275000, 0,"2020-12-21");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(0, 1, "SM-A217N", "갤럭시 A21s", "/image/product/ushop_SM-A217N_thumb.jpg", "4G", 3, "레드", "#ed0419", 297000, 0,"2020-06-02");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(0, 1, "SM-A217N", "갤럭시 A21s", "/image/product/ushop_SM-A217N_thumb.jpg", "4G", 3, "블랙", "#000000", 297000, 0,"2020-06-02");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(0, 1, "SM-A217N", "갤럭시 A21s", "/image/product/ushop_SM-A217N_thumb.jpg", "4G", 3, "화이트", "#FFFFFF", 297000, 0,"2020-06-02");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(0, 1, "SM-A217N", "갤럭시 A21s", "/image/product/ushop_SM-A217N_thumb.jpg", "4G", 3, "실버", "#9FA1A5", 297000, 0,"2020-06-02");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(1, 1, "SM-A315N", "갤럭시 A31", "/image/product/ushop_SM-A315N_thumb.jpg", "4G", 1, "프리즘 크러시 블랙", "#2B2E37", 374000, 0,"2020-04-27");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(1, 1, "SM-A315N", "갤럭시 A31", "/image/product/ushop_SM-A315N_thumb.jpg", "4G", 1, "프리즘 크러시 실버", "#F6F6F5", 374000, 0,"2020-04-27");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(1, 1, "SM-A315N", "갤럭시 A31", "/image/product/ushop_SM-A315N_thumb.jpg", "4G", 1, "프리즘 크러시 블루", "#2B387E", 374000, 0,"2020-04-27");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(1, 1, "SM-A315N", "갤럭시 A31", "/image/product/ushop_SM-A315N_thumb.jpg", "4G", 1, "프리즘 크러시 화이트", "#FFFFFF", 374000, 0,"2020-04-27");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 2, "A2633-128", "iPhone 13 128G", "/image/product/ushop_A2633-128_thumb.jpg", "5G", 2, "핑크", "#faddd7", 1078000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 2, "A2633-128", "iPhone 13 128G", "/image/product/ushop_A2633-128_thumb.jpg", "5G", 2, "스타라이트", "#faf6f2", 1078000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 2, "A2633-128", "iPhone 13 128G", "/image/product/ushop_A2633-128_thumb.jpg", "5G", 2, "그린", "#576856", 1078000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 2, "A2633-128", "iPhone 13 128G", "/image/product/ushop_A2633-128_thumb.jpg", "5G", 2, "미드나이트", "#232a31", 1078000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 2, "A2633-128", "iPhone 13 128G", "/image/product/ushop_A2633-128_thumb.jpg", "5G", 2, "(PRODUCT)RED", "#bf0013", 1078000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 2, "A2643-128", "iPhone 13 Pro Max 128G", "/image/product/ushop_A2643-128_thumb.jpg", "5G", 2, "알파인 그린", "#576856", 1474000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(2, 2, "A2643-128", "iPhone 13 Pro Max 128G", "/image/product/ushop_A2643-128_thumb.jpg", "5G", 2, "그래파이트", "#54524f", 1474000, 0,"2021-09-24");

insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2783-256", "iPhone SE 256GB 3세대", "/image/product/ushop_A2783-256_thumb.jpg", "5G", 2, "(PRODUCT)RED", "#bf0013", 799700, 0,"2022-03-08");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2628-256", "iPhone 13 mini 256G", "/image/product/ushop_A2628-256_thumb.jpg", "5G", 2, "스타라이트", "#faf6f2", 1078000, 0,"2021-09-15");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2628-256", "iPhone 13 mini 256G", "/image/product/ushop_A2628-256_thumb.jpg", "5G", 2, "핑크", "#faddd7", 1078000, 0,"2021-09-15");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2633-256", "iPhone 13 256G", "/image/product/ushop_A2633-256_thumb.jpg", "5G", 2, "그린", "#576856", 1221000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2633-256", "iPhone 13 256G", "/image/product/ushop_A2633-256_thumb.jpg", "5G", 2, "미드나이트", "#232a31", 1221000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2633-256", "iPhone 13 256G", "/image/product/ushop_A2633-256_thumb.jpg", "5G", 2, "스타라이트", "#faf6f2", 1221000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2633-256", "iPhone 13 256G", "/image/product/ushop_A2633-256_thumb.jpg", "5G", 2, "(PRODUCT)RED", "#bf0013", 1221000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2638-256", "iPhone 13 Pro 256G", "/image/product/ushop_A2638-256_thumb.jpg", "5G", 2, "알파인 그린", "#576856", 1474000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2638-256", "iPhone 13 Pro 256G", "/image/product/ushop_A2638-256_thumb.jpg", "5G", 2, "시에라 블루", "#a7c1d9", 1474000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2638-256", "iPhone 13 Pro 256G", "/image/product/ushop_A2638-256_thumb.jpg", "5G", 2, "실버", "#f1f2ed", 1474000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2638-256", "iPhone 13 Pro 256G", "/image/product/ushop_A2638-256_thumb.jpg", "5G", 2, "골드", "#fae7cf", 1474000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2638-256", "iPhone 13 Pro 256G", "/image/product/ushop_A2638-256_thumb.jpg", "5G", 2, "그래파이트", "#54524f", 1474000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2643-256", "iPhone 13 Pro Max 256G", "/image/product/ushop_A2643-256_thumb.jpg", "5G", 2, "시에라 블루", "#a7c1d9", 1606000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2643-256", "iPhone 13 Pro Max 256G", "/image/product/ushop_A2643-256_thumb.jpg", "5G", 2, "그래파이트", "#54524f", 1606000, 0,"2021-09-24");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2411-256", "iPhone 12 Pro Max 256G", "/image/product/ushop_A2411-256_thumb.jpg", "5G", 2, "그래파이트", "#54524f", 1606000, 0,"2020-11-13");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2411-256", "iPhone 12 Pro Max 256G", "/image/product/ushop_A2411-256_thumb.jpg", "5G", 2, "실버", "#f1f2ed", 1606000, 0,"2020-11-13");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2411-256", "iPhone 12 Pro Max 256G", "/image/product/ushop_A2411-256_thumb.jpg", "5G", 2, "골드", "#fae7cf", 1606000, 0,"2020-11-13");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2411-256", "iPhone 12 Pro Max 256G", "/image/product/ushop_A2411-256_thumb.jpg", "5G", 2, "퍼시픽블루", "#2d4e5c", 1606000, 0,"2020-11-13");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2407-256", "iPhone 12 Pro 256G", "/image/product/ushop_A2407-256_thumb.jpg", "5G", 2, "그래파이트", "#54524f", 1474000, 0,"2020-11-13");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2407-256", "iPhone 12 Pro 256G", "/image/product/ushop_A2407-256_thumb.jpg", "5G", 2, "골드", "#fae7cf", 1474000, 0,"2020-11-13");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2407-256", "iPhone 12 Pro 256G", "/image/product/ushop_A2407-256_thumb.jpg", "5G", 2, "퍼시픽블루", "#2d4e5c", 1474000, 0,"2020-11-13");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 2, "A2407-256", "iPhone 12 Pro 256G", "/image/product/ushop_A2407-256_thumb.jpg", "5G", 2, "실버", "#f1f2ed", 1474000, 0,"2020-11-13");

-- 갤럭시 Z 플립3 phone 데이터

insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "SM-F711N", "갤럭시 Z 플립3", "/image/product/ushop_SM-A135N_thumb.jpg", "5G", 2, "팬텀 블랙", "#171717", 1254000, 0, "2021-08-27");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "SM-F711N", "갤럭시 Z 플립3", "/image/product/ushop_SM-A135N_thumb.jpg", "5G", 2, "크림", "#F8F2E4", 1254000, 0, "2021-08-27");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "SM-F711N", "갤럭시 Z 플립3", "/image/product/ushop_SM-A135N_thumb.jpg", "5G", 2, "라벤더", "#E6E6FA", 1254000, 0, "2021-08-27");
insert into productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, color_hex_code, price, sales, create_time) values(3, 1, "SM-F711N", "갤럭시 Z 플립3", "/image/product/ushop_SM-A135N_thumb.jpg", "5G", 2, "그린", "#3d5551", 1254000, 0, "2021-08-27");


-- phone image table
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(1, "/image/product/detail/", "ushop_SM-M236L_01_A.jpg", "front", "라이트 블루");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(1, "/image/product/detail/", "ushop_SM-M236L_01_B.jpg", "zoom", "라이트 블루");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(1, "/image/product/detail/", "ushop_SM-M236L_01_C.jpg", "side", "라이트 블루");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(1, "/image/product/detail/", "ushop_SM-M236L_01_D.jpg", "back", "라이트 블루");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(2, "/image/product/detail/", "ushop_SM-M236L_02_A.jpg", "front", "오렌지");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(2, "/image/product/detail/", "ushop_SM-M236L_02_B.jpg", "zoom", "오렌지");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(2, "/image/product/detail/", "ushop_SM-M236L_02_C.jpg", "side", "오렌지");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(2, "/image/product/detail/", "ushop_SM-M236L_02_D.jpg", "back", "오렌지");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(3, "/image/product/detail/", "ushop_SM-M236L_03_A.jpg", "front", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(3, "/image/product/detail/", "ushop_SM-M236L_03_B.jpg", "zoom", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(3, "/image/product/detail/", "ushop_SM-M236L_03_C.jpg", "side", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(3, "/image/product/detail/", "ushop_SM-M236L_03_D.jpg", "back", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(4, "/image/product/detail/", "ushop_SM-A536N_AB_A.jpg", "front", "라이트블루");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(4, "/image/product/detail/", "ushop_SM-A536N_AB_B.jpg", "zoom", "라이트블루");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(4, "/image/product/detail/", "ushop_SM-A536N_AB_C.jpg", "side", "라이트블루");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(4, "/image/product/detail/", "ushop_SM-A536N_AB_D.jpg", "back", "라이트블루");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(5, "/image/product/detail/", "ushop_SM-A536N_AW_A.jpg", "front", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(5, "/image/product/detail/", "ushop_SM-A536N_AW_B.jpg", "zoom", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(5, "/image/product/detail/", "ushop_SM-A536N_AW_C.jpg", "side", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(5, "/image/product/detail/", "ushop_SM-A536N_AW_D.jpg", "back", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(6, "/image/product/detail/", "ushop_SM-A536N_AK_A.jpg", "front", "블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(6, "/image/product/detail/", "ushop_SM-A536N_AK_B.jpg", "zoom", "블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(6, "/image/product/detail/", "ushop_SM-A536N_AK_C.jpg", "side", "블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(6, "/image/product/detail/", "ushop_SM-A536N_AK_D.jpg", "back", "블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(7, "/image/product/detail/", "ushop_A2783-128_67_A.jpg", "front", "스타라이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(7, "/image/product/detail/", "ushop_A2783-128_67_B.jpg", "zoom", "스타라이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(7, "/image/product/detail/", "ushop_A2783-128_67_C.jpg", "side", "스타라이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(7, "/image/product/detail/", "ushop_A2783-128_67_D.jpg", "back", "스타라이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(8, "/image/product/detail/", "ushop_A2783-128_01_A.jpg", "front", "미드나이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(8, "/image/product/detail/", "ushop_A2783-128_01_B.jpg", "zoom", "미드나이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(8, "/image/product/detail/", "ushop_A2783-128_01_C.jpg", "side", "미드나이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(8, "/image/product/detail/", "ushop_A2783-128_01_D.jpg", "back", "미드나이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(9, "/image/product/detail/", "ushop_A2783-128_80_A.jpg", "front", "(PRODUCT)RED");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(9, "/image/product/detail/", "ushop_A2783-128_80_B.jpg", "zoom", "(PRODUCT)RED");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(9, "/image/product/detail/", "ushop_A2783-128_80_C.jpg", "side", "(PRODUCT)RED");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(9, "/image/product/detail/", "ushop_A2783-128_80_D.jpg", "back", "(PRODUCT)RED");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(10, "/image/product/detail/", "ushop_SM-F711N-ZP_67_A.jpg", "front", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(10, "/image/product/detail/", "ushop_SM-F711N-ZP_67_B.jpg", "zoom", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(10, "/image/product/detail/", "ushop_SM-F711N-ZP_67_C.jpg", "side", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(10, "/image/product/detail/", "ushop_SM-F711N-ZP_67_D.jpg", "back", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(11, "/image/product/detail/", "ushop_SM-S901N_EK_A.jpg", "front", "팬텀 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(11, "/image/product/detail/", "ushop_SM-S901N_EK_B.jpg", "zoom", "팬텀 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(11, "/image/product/detail/", "ushop_SM-S901N_EK_C.jpg", "side", "팬텀 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(11, "/image/product/detail/", "ushop_SM-S901N_EK_D.jpg", "back", "팬텀 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(12, "/image/product/detail/", "ushop_SM-S901N_EW_A.jpg", "front", "팬텀 화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(12, "/image/product/detail/", "ushop_SM-S901N_EW_B.jpg", "zoom", "팬텀 화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(12, "/image/product/detail/", "ushop_SM-S901N_EW_C.jpg", "side", "팬텀 화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(12, "/image/product/detail/", "ushop_SM-S901N_EW_D.jpg", "back", "팬텀 화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(13, "/image/product/detail/", "ushop_SM-S901N_ED_A.jpg", "front", "핑크 골드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(13, "/image/product/detail/", "ushop_SM-S901N_ED_B.jpg", "zoom", "핑크 골드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(13, "/image/product/detail/", "ushop_SM-S901N_ED_C.jpg", "side", "핑크 골드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(13, "/image/product/detail/", "ushop_SM-S901N_ED_D.jpg", "back", "핑크 골드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(14, "/image/product/detail/", "ushop_SM-S901N_EG_A.jpg", "front", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(14, "/image/product/detail/", "ushop_SM-S901N_EG_B.jpg", "zoom", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(14, "/image/product/detail/", "ushop_SM-S901N_EG_C.jpg", "side", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(14, "/image/product/detail/", "ushop_SM-S901N_EG_D.jpg", "back", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(15, "/image/product/detail/", "ushop_SM-S906N_EW_A.jpg", "front", "팬텀 화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(15, "/image/product/detail/", "ushop_SM-S906N_EW_B.jpg", "zoom", "팬텀 화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(15, "/image/product/detail/", "ushop_SM-S906N_EW_C.jpg", "side", "팬텀 화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(15, "/image/product/detail/", "ushop_SM-S906N_EW_D.jpg", "back", "팬텀 화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(16, "/image/product/detail/", "ushop_SM-S906N_EK_A.jpg", "front", "팬텀 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(16, "/image/product/detail/", "ushop_SM-S906N_EK_B.jpg", "zoom", "팬텀 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(16, "/image/product/detail/", "ushop_SM-S906N_EK_C.jpg", "side", "팬텀 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(16, "/image/product/detail/", "ushop_SM-S906N_EK_D.jpg", "back", "팬텀 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(17, "/image/product/detail/", "ushop_SM-S906N_EG_A.jpg", "front", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(17, "/image/product/detail/", "ushop_SM-S906N_EG_B.jpg", "zoom", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(17, "/image/product/detail/", "ushop_SM-S906N_EG_C.jpg", "side", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(17, "/image/product/detail/", "ushop_SM-S906N_EG_D.jpg", "back", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(18, "/image/product/detail/", "ushop_SM-S906N_ED_A.jpg", "front", "핑크 골드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(18, "/image/product/detail/", "ushop_SM-S906N_ED_B.jpg", "zoom", "핑크 골드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(18, "/image/product/detail/", "ushop_SM-S906N_ED_C.jpg", "side", "핑크 골드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(18, "/image/product/detail/", "ushop_SM-S906N_ED_D.jpg", "back", "핑크 골드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(19, "/image/product/detail/", "ushop_SM-S908N_ER_A.jpg", "front", "버건디");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(19, "/image/product/detail/", "ushop_SM-S908N_ER_B.jpg", "zoom", "버건디");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(19, "/image/product/detail/", "ushop_SM-S908N_ER_C.jpg", "side", "버건디");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(19, "/image/product/detail/", "ushop_SM-S908N_ER_D.jpg", "back", "버건디");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(20, "/image/product/detail/", "ushop_SM-S908N_EG_A.jpg", "front", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(20, "/image/product/detail/", "ushop_SM-S908N_EG_B.jpg", "zoom", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(20, "/image/product/detail/", "ushop_SM-S908N_EG_C.jpg", "side", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(20, "/image/product/detail/", "ushop_SM-S908N_EG_D.jpg", "back", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(21, "/image/product/detail/", "ushop_SM-S908N_EW_A.jpg", "front", "팬텀 화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(21, "/image/product/detail/", "ushop_SM-S908N_EW_B.jpg", "zoom", "팬텀 화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(21, "/image/product/detail/", "ushop_SM-S908N_EW_C.jpg", "side", "팬텀 화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(21, "/image/product/detail/", "ushop_SM-S908N_EW_D.jpg", "back", "팬텀 화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(22, "/image/product/detail/", "ushop_SM-S908N_EK_A.jpg", "front", "팬텀 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(22, "/image/product/detail/", "ushop_SM-S908N_EK_B.jpg", "zoom", "팬텀 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(22, "/image/product/detail/", "ushop_SM-S908N_EK_C.jpg", "side", "팬텀 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(22, "/image/product/detail/", "ushop_SM-S908N_EK_D.jpg", "back", "팬텀 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(23, "/image/product/detail/", "ushop_RU-SM-N971N2_21_A.png", "front", "아우라 핑크");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(23, "/image/product/detail/", "ushop_RU-SM-N971N2_21_B.png", "zoom", "아우라 핑크");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(23, "/image/product/detail/", "ushop_RU-SM-N971N2_21_C.png", "side", "아우라 핑크");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(24, "/image/product/detail/", "ushop_RU-SM-N976N2_11_A.png", "front", "아우라 글로우");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(24, "/image/product/detail/", "ushop_RU-SM-N976N2_11_B.png", "zoom", "아우라 글로우");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(24, "/image/product/detail/", "ushop_RU-SM-N976N2_11_C.png", "side", "아우라 글로우");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(25, "/image/product/detail/", "ushop_RU-SM-N976N2_67_A.png", "front", "아우라 화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(25, "/image/product/detail/", "ushop_RU-SM-N976N2_67_B.png", "zoom", "아우라 화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(25, "/image/product/detail/", "ushop_RU-SM-N976N2_67_C.png", "side", "아우라 화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(26, "/image/product/detail/", "ushop_RU-SM-N976N2_AK_A.png", "front", "아우라 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(26, "/image/product/detail/", "ushop_RU-SM-N976N2_AK_B.png", "zoom", "아우라 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(26, "/image/product/detail/", "ushop_RU-SM-N976N2_AK_C.png", "side", "아우라 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(27, "/image/product/detail/", "ushop_RU-SM-G977N_01_A.png", "front", "마제스틱 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(27, "/image/product/detail/", "ushop_RU-SM-G977N_01_B.png", "zoom", "마제스틱 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(27, "/image/product/detail/", "ushop_RU-SM-G977N_01_C.png", "side", "마제스틱 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(27, "/image/product/detail/", "ushop_RU-SM-G977N_01_D.png", "back", "마제스틱 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(28, "/image/product/detail/", "ushop_RU-SM-G977N_10_A.png", "front", "로얄 골드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(28, "/image/product/detail/", "ushop_RU-SM-G977N_10_B.png", "zoom", "로얄 골드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(28, "/image/product/detail/", "ushop_RU-SM-G977N_10_C.png", "side", "로얄 골드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(28, "/image/product/detail/", "ushop_RU-SM-G977N_10_D.png", "back", "로얄 골드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(29, "/image/product/detail/", "ushop_RU-SM-G977N_19_A.png", "front", "크라운 실버");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(29, "/image/product/detail/", "ushop_RU-SM-G977N_19_B.png", "zoom", "크라운 실버");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(29, "/image/product/detail/", "ushop_RU-SM-G977N_19_C.png", "side", "크라운 실버");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(29, "/image/product/detail/", "ushop_RU-SM-G977N_19_D.png", "back", "크라운 실버");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(30, "/image/product/detail/", "ushop_A2628-128_21_A.jpg", "front", "핑크");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(30, "/image/product/detail/", "ushop_A2628-128_21_B.jpg", "zoom", "핑크");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(30, "/image/product/detail/", "ushop_A2628-128_21_C.jpg", "side", "핑크");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(30, "/image/product/detail/", "ushop_A2628-128_21_D.jpg", "back", "핑크");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(31, "/image/product/detail/", "ushop_A2628-128_01_A.jpg", "front", "미드나이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(31, "/image/product/detail/", "ushop_A2628-128_01_B.jpg", "zoom", "미드나이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(31, "/image/product/detail/", "ushop_A2628-128_01_C.jpg", "side", "미드나이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(31, "/image/product/detail/", "ushop_A2628-128_01_D.jpg", "back", "미드나이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(32, "/image/product/detail/", "ushop_A2628-128_67_A.jpg", "front", "스타라이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(32, "/image/product/detail/", "ushop_A2628-128_67_B.jpg", "zoom", "스타라이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(32, "/image/product/detail/", "ushop_A2628-128_67_C.jpg", "side", "스타라이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(32, "/image/product/detail/", "ushop_A2628-128_67_D.jpg", "back", "스타라이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(33, "/image/product/detail/", "ushop_A2628-128_80_A.jpg", "front", "(PRODUCT)RED");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(33, "/image/product/detail/", "ushop_A2628-128_80_B.jpg", "zoom", "(PRODUCT)RED");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(33, "/image/product/detail/", "ushop_A2628-128_80_C.jpg", "side", "(PRODUCT)RED");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(33, "/image/product/detail/", "ushop_A2628-128_80_D.jpg", "back", "(PRODUCT)RED");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(34, "/image/product/detail/", "ushop_A2628-128_91_A.jpg", "front", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(34, "/image/product/detail/", "ushop_A2628-128_91_B.jpg", "zoom", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(34, "/image/product/detail/", "ushop_A2628-128_91_C.jpg", "side", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(34, "/image/product/detail/", "ushop_A2628-128_91_D.jpg", "back", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(35, "/image/product/detail/", "ushop_A2638-128_91_A.jpg", "front", "알파인 그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(35, "/image/product/detail/", "ushop_A2638-128_91_B.jpg", "zoom", "알파인 그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(35, "/image/product/detail/", "ushop_A2638-128_91_C.jpg", "side", "알파인 그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(35, "/image/product/detail/", "ushop_A2638-128_91_D.jpg", "back", "알파인 그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(36, "/image/product/detail/", "ushop_A2638-128_19_A.jpg", "front", "실버");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(36, "/image/product/detail/", "ushop_A2638-128_19_B.jpg", "zoom", "실버");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(36, "/image/product/detail/", "ushop_A2638-128_19_C.jpg", "side", "실버");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(36, "/image/product/detail/", "ushop_A2638-128_19_D.jpg", "back", "실버");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(37, "/image/product/detail/", "ushop_A2638-128_GP_A.jpg", "front", "그래파이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(37, "/image/product/detail/", "ushop_A2638-128_GP_B.jpg", "zoom", "그래파이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(37, "/image/product/detail/", "ushop_A2638-128_GP_C.jpg", "side", "그래파이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(37, "/image/product/detail/", "ushop_A2638-128_GP_D.jpg", "back", "그래파이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(38, "/image/product/detail/", "ushop_A2638-128_10_A.jpg", "front", "골드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(38, "/image/product/detail/", "ushop_A2638-128_10_B.jpg", "zoom", "골드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(38, "/image/product/detail/", "ushop_A2638-128_10_C.jpg", "side", "골드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(38, "/image/product/detail/", "ushop_A2638-128_10_D.jpg", "back", "골드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(39, "/image/product/detail/", "ushop_SM-A226L_AG_A.jpg", "front", "민트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(39, "/image/product/detail/", "ushop_SM-A226L_AG_B.jpg", "zoom", "민트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(39, "/image/product/detail/", "ushop_SM-A226L_AG_C.jpg", "side", "민트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(39, "/image/product/detail/", "ushop_SM-A226L_AG_D.jpg", "back", "민트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(40, "/image/product/detail/", "ushop_SM-A226L_EA_A.jpg", "front", "그레이");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(40, "/image/product/detail/", "ushop_SM-A226L_EA_B.jpg", "zoom", "그레이");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(40, "/image/product/detail/", "ushop_SM-A226L_EA_C.jpg", "side", "그레이");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(40, "/image/product/detail/", "ushop_SM-A226L_EA_D.jpg", "back", "그레이");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(41, "/image/product/detail/", "ushop_SM-A226L_EW_A.jpg", "front", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(41, "/image/product/detail/", "ushop_SM-A226L_EW_B.jpg", "zoom", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(41, "/image/product/detail/", "ushop_SM-A226L_EW_C.jpg", "side", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(41, "/image/product/detail/", "ushop_SM-A226L_EW_D.jpg", "back", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(42, "/image/product/detail/", "ushop_SM-A135N_01_A.jpg", "front", "블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(42, "/image/product/detail/", "ushop_SM-A135N_01_B.jpg", "zoom", "블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(42, "/image/product/detail/", "ushop_SM-A135N_01_C.jpg", "side", "블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(42, "/image/product/detail/", "ushop_SM-A135N_01_D.jpg", "back", "블랙");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(43, "/image/product/detail/", "ushop_SM-A135N_02_A.jpg", "front", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(43, "/image/product/detail/", "ushop_SM-A135N_02_B.jpg", "zoom", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(43, "/image/product/detail/", "ushop_SM-A135N_02_C.jpg", "side", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(43, "/image/product/detail/", "ushop_SM-A135N_02_D.jpg", "back", "화이트");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(44, "/image/product/detail/", "ushop_SM-A235N_01_A.jpg", "front", "블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(44, "/image/product/detail/", "ushop_SM-A235N_01_B.jpg", "zoom", "블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(44, "/image/product/detail/", "ushop_SM-A235N_01_C.jpg", "side", "블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(44, "/image/product/detail/", "ushop_SM-A235N_01_D.jpg", "back", "블랙");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(45, "/image/product/detail/", "ushop_SM-A235N_30_A.jpg", "front", "라이트블루");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(45, "/image/product/detail/", "ushop_SM-A235N_30_B.jpg", "zoom", "라이트블루");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(45, "/image/product/detail/", "ushop_SM-A235N_30_C.jpg", "side", "라이트블루");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(45, "/image/product/detail/", "ushop_SM-A235N_30_D.jpg", "back", "라이트블루");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(46, "/image/product/detail/", "ushop_SM-A235N_67_A.jpg", "front", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(46, "/image/product/detail/", "ushop_SM-A235N_67_B.jpg", "zoom", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(46, "/image/product/detail/", "ushop_SM-A235N_67_C.jpg", "side", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(46, "/image/product/detail/", "ushop_SM-A235N_67_D.jpg", "back", "화이트");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(47, "/image/product/detail/", "ushop_SM-G525N-UK_67_A.jpg", "front", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(47, "/image/product/detail/", "ushop_SM-G525N-UK_67_B.jpg", "zoom", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(47, "/image/product/detail/", "ushop_SM-G525N-UK_67_C.jpg", "side", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(47, "/image/product/detail/", "ushop_SM-G525N-UK_67_D.jpg", "back", "화이트");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(48, "/image/product/detail/", "ushop_SM-G160N2021_67_A.jpg", "front", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(48, "/image/product/detail/", "ushop_SM-G160N2021_67_B.jpg", "zoom", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(48, "/image/product/detail/", "ushop_SM-G160N2021_67_C.jpg", "side", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(48, "/image/product/detail/", "ushop_SM-G160N2021_67_D.jpg", "back", "화이트");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(49, "/image/product/detail/", "ushop_SM-G160N2021_80_A.jpg", "front", "레드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(49, "/image/product/detail/", "ushop_SM-G160N2021_80_B.jpg", "zoom", "레드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(49, "/image/product/detail/", "ushop_SM-G160N2021_80_C.jpg", "side", "레드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(49, "/image/product/detail/", "ushop_SM-G160N2021_80_D.jpg", "back", "레드");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(50, "/image/product/detail/", "ushop_SM-G160N2021_B7_A.jpg", "front", "그레이");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(50, "/image/product/detail/", "ushop_SM-G160N2021_B7_B.jpg", "zoom", "그레이");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(50, "/image/product/detail/", "ushop_SM-G160N2021_B7_C.jpg", "side", "그레이");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(50, "/image/product/detail/", "ushop_SM-G160N2021_B7_D.jpg", "back", "그레이");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(51, "/image/product/detail/", "ushop_SM-A325N_01_A.jpg", "front", "어썸 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(51, "/image/product/detail/", "ushop_SM-A325N_01_B.jpg", "zoom", "어썸 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(51, "/image/product/detail/", "ushop_SM-A325N_01_C.jpg", "side", "어썸 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(51, "/image/product/detail/", "ushop_SM-A325N_01_D.jpg", "back", "어썸 블랙");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(52, "/image/product/detail/", "ushop_SM-A325N_B4_A.jpg", "front", "어썸 바이올렛");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(52, "/image/product/detail/", "ushop_SM-A325N_B4_B.jpg", "zoom", "어썸 바이올렛");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(52, "/image/product/detail/", "ushop_SM-A325N_B4_C.jpg", "side", "어썸 바이올렛");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(52, "/image/product/detail/", "ushop_SM-A325N_B4_D.jpg", "back", "어썸 바이올렛");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(53, "/image/product/detail/", "ushop_SM-A125N_01_A.jpg", "front", "블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(53, "/image/product/detail/", "ushop_SM-A125N_01_B.jpg", "zoom", "블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(53, "/image/product/detail/", "ushop_SM-A125N_01_C.jpg", "side", "블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(53, "/image/product/detail/", "ushop_SM-A125N_01_D.jpg", "back", "블랙");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(54, "/image/product/detail/", "ushop_SM-A125N_67_A.jpg", "front", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(54, "/image/product/detail/", "ushop_SM-A125N_67_B.jpg", "zoom", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(54, "/image/product/detail/", "ushop_SM-A125N_67_C.jpg", "side", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(54, "/image/product/detail/", "ushop_SM-A125N_67_D.jpg", "back", "화이트");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(55, "/image/product/detail/", "ushop_SM-A217N_80_A.jpg", "front", "레드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(55, "/image/product/detail/", "ushop_SM-A217N_80_B.jpg", "zoom", "레드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(55, "/image/product/detail/", "ushop_SM-A217N_80_C.jpg", "side", "레드");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(55, "/image/product/detail/", "ushop_SM-A217N_80_D.jpg", "back", "레드");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(56, "/image/product/detail/", "ushop_SM-A217N_01_A.jpg", "front", "블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(56, "/image/product/detail/", "ushop_SM-A217N_01_B.jpg", "zoom", "블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(56, "/image/product/detail/", "ushop_SM-A217N_01_C.jpg", "side", "블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(56, "/image/product/detail/", "ushop_SM-A217N_01_D.jpg", "back", "블랙");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(57, "/image/product/detail/", "ushop_SM-A217N_67_A.jpg", "front", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(57, "/image/product/detail/", "ushop_SM-A217N_67_B.jpg", "zoom", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(57, "/image/product/detail/", "ushop_SM-A217N_67_C.jpg", "side", "화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(57, "/image/product/detail/", "ushop_SM-A217N_67_D.jpg", "back", "화이트");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(58, "/image/product/detail/", "ushop_SM-A217N_19_A.jpg", "front", "실버");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(58, "/image/product/detail/", "ushop_SM-A217N_19_B.jpg", "zoom", "실버");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(58, "/image/product/detail/", "ushop_SM-A217N_19_C.jpg", "side", "실버");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(58, "/image/product/detail/", "ushop_SM-A217N_19_D.jpg", "back", "실버");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(59, "/image/product/detail/", "ushop_SM-A315N_01_A.jpg", "front", "프리즘 크러시 블랙");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(59, "/image/product/detail/", "ushop_SM-A315N_01_B.jpg", "back", "프리즘 크러시 블랙");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(60, "/image/product/detail/", "ushop_SM-A315N_19_A.jpg", "front", "프리즘 크러시 실버");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(60, "/image/product/detail/", "ushop_SM-A315N_19_B.jpg", "back", "프리즘 크러시 실버");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(61, "/image/product/detail/", "ushop_SM-A315N_20_A.jpg", "front", "프리즘 크러시 블루");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(61, "/image/product/detail/", "ushop_SM-A315N_20_B.jpg", "back", "프리즘 크러시 블루");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(62, "/image/product/detail/", "ushop_SM-A315N_67_A.jpg", "front", "프리즘 크러시 화이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(62, "/image/product/detail/", "ushop_SM-A315N_67_B.jpg", "back", "프리즘 크러시 화이트");

insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(63, "/image/product/detail/", "ushop_A2633-128_21_A.jpg", "front", "핑크");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(63, "/image/product/detail/", "ushop_A2633-128_21_B.jpg", "zoom", "핑크");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(63, "/image/product/detail/", "ushop_A2633-128_21_C.jpg", "side", "핑크");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(63, "/image/product/detail/", "ushop_A2633-128_21_D.jpg", "back", "핑크");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(64, "/image/product/detail/", "ushop_A2633-128_67_A.jpg", "front", "스타라이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(64, "/image/product/detail/", "ushop_A2633-128_67_B.jpg", "zoom", "스타라이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(64, "/image/product/detail/", "ushop_A2633-128_67_C.jpg", "side", "스타라이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(64, "/image/product/detail/", "ushop_A2633-128_67_D.jpg", "back", "스타라이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(65, "/image/product/detail/", "ushop_A2633-128_91_A.jpg", "front", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(65, "/image/product/detail/", "ushop_A2633-128_91_B.jpg", "zoom", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(65, "/image/product/detail/", "ushop_A2633-128_91_C.jpg", "side", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(65, "/image/product/detail/", "ushop_A2633-128_91_D.jpg", "back", "그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(66, "/image/product/detail/", "ushop_A2633-128_80_A.jpg", "front", "(PRODUCT)RED");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(66, "/image/product/detail/", "ushop_A2633-128_80_B.jpg", "zoom", "(PRODUCT)RED");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(66, "/image/product/detail/", "ushop_A2633-128_80_C.jpg", "side", "(PRODUCT)RED");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(66, "/image/product/detail/", "ushop_A2633-128_80_D.jpg", "back", "(PRODUCT)RED");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(67, "/image/product/detail/", "ushop_A2633-128_01_A.jpg", "front", "미드나이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(67, "/image/product/detail/", "ushop_A2633-128_01_B.jpg", "zoom", "미드나이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(67, "/image/product/detail/", "ushop_A2633-128_01_C.jpg", "side", "미드나이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(67, "/image/product/detail/", "ushop_A2633-128_01_D.jpg", "back", "미드나이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(68, "/image/product/detail/", "ushop_A2643-128_91_A.jpg", "front", "알파인 그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(68, "/image/product/detail/", "ushop_A2643-128_91_B.jpg", "zoom", "알파인 그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(68, "/image/product/detail/", "ushop_A2643-128_91_C.jpg", "side", "알파인 그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(68, "/image/product/detail/", "ushop_A2643-128_91_D.jpg", "back", "알파인 그린");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(69, "/image/product/detail/", "ushop_A2643-128_GP_A.jpg", "front", "그래파이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(69, "/image/product/detail/", "ushop_A2643-128_GP_B.jpg", "zoom", "그래파이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(69, "/image/product/detail/", "ushop_A2643-128_GP_C.jpg", "side", "그래파이트");
insert into productdb.phone_image (phone_id, img_path, img_name, img_pos, img_color) values(69, "/image/product/detail/", "ushop_A2643-128_GP_D.jpg", "back", "그래파이트");


-- plan table

INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0000409", "5G", "5G 프리미어 에센셜", 300, 500, 600, 85000, 50);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0000487", "5G", "5G 슬림+", 6, 500, 600, 47000, 0);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0002629", "5G", "5G 다이렉트 37.5", 12, 500, 600, 37500, 0);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0000415", "5G", "5G 스탠다드", 150, 500, 600,75000, 10);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0000565", "5G", "5G 프리미어 레귤러", 300, 500, 600, 89750, 50);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0000348", "5G", "5G 복지 75", 150, 500, 600, 75000, 10);

INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0002829", "5G", "5G 프리미어 플러스", 300, 500, 600, 99750, 50);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0002824", "5G", "5G 다이렉트 65", 300, 500, 600, 65000, 0);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0000437", "5G", "5G 라이트+", 12, 500, 600, 55000, 0);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0002630", "5G", "5G 다이렉트 51", 150, 500, 600, 51000, 0);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0000349", "5G", "5G 복지 55", 12, 500, 600, 55000, 0);

INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0002826", "4G", "LTE 프리미어 플러스", 300, 500, 600, 99750, 50);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0000679", "4G", "LTE 프리미어 에센셜", 300, 500, 600,79750, 30);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0000461", "4G", "추가 요금 걱정 없는 데이터 44", 3, 500, 600, 44000, 0);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0000462", "4G", "추가 요금 걱정 없는 데이터 49", 3, 500, 600, 49000, 0);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0000463", "4G", "추가 요금 걱정 없는 데이터 59", 7, 500, 600, 59000, 0);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0000464", "4G", "추가 요금 걱정 없는 데이터 69", 5, 500, 600, 69000, 11);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0000295", "4G", "추가 요금 걱정 없는 데이터 시니어 49", 5, 500, 600, 49000, 0);

INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0000467", "4G", "추가 요금 걱정 없는 데이터 청소년 33", 2, 500, 600, 33000, 0);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0002584", "4G", "LTE 복지 49", 6, 500, 600, 49000, 0);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0000472", "4G", "LTE 데이터 33", 1, 500, 600, 33000, 0);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LPZ0002342", "4G", "LTE 선택형(400분+7GB)", 7, 0, 400, 33000, 0);