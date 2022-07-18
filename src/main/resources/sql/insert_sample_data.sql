
-- phone_brand_category table
INSERT INTO productdb.phone_brand_category (name) VALUES ("삼성");
INSERT INTO productdb.phone_brand_category (name) VALUES ("애플");


-- phone_storage_category table˙
INSERT INTO productdb.phone_storage_category (capability) VALUES (64);
INSERT INTO productdb.phone_storage_category (capability) VALUES (128);
INSERT INTO productdb.phone_storage_category (capability) VALUES (256);
INSERT INTO productdb.phone_storage_category (capability) VALUES (512);
INSERT INTO productdb.phone_storage_category (capability) VALUES (1024);


-- phone table
INSERT INTO productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, price, sales) VALUES (2, 1, "SM-A235N","갤럭시 A23", "https://image.lguplus.com/static/pc-contents/images/prdv/20220616-073051-526-l4VusvGl.jpg", "4G", 1, "white", 374000, 0);
INSERT INTO productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, price, sales) VALUES (3, 1, "SM-F711N","갤럭시 Z 플립3", "https://image.lguplus.com/common/images/hphn/product/SM-A536N/list/ushop_SM-A536N_AB_A20220317160344524.jpg", "5G", 2, "black", 1254000, 0);
INSERT INTO productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, price, sales) VALUES (3, 2, "A2638-256","iPhone 13 Pro 256G", "https://image.lguplus.com/common/images/hphn/product/A2633-256/list/ushop_A2633-256_20_A20210928164843211.jpg", "5G", 3, "silver", 1474000, 0);
INSERT INTO productdb.phone (storage_id, brand_id, code, name, img_thumbnail, network_support, discount_type, color, price, sales) VALUES (3, 2, "A2783-256","iPhone SE 256GB 3세대", "https://image.lguplus.com/common/images/hphn/product/A2633-128/list/ushop_A2633-128_21_A20210928163457385.jpg", "5G", 1, "RED", 799700, 0);


-- phone_image
INSERT INTO productdb.phone_image (phone_id, img_path, img_name, img_pos) VALUES (1, 'C:\\UPLUSSHOP\\img\\detail\\', "Galaxy_A23_1.jpg","front");
INSERT INTO productdb.phone_image (phone_id, img_path, img_name, img_pos) VALUES (1, 'C:\\UPLUSSHOP\\img\detail\\', "Galaxy_A23_2.jpg","zoom");
INSERT INTO productdb.phone_image (phone_id, img_path, img_name, img_pos) VALUES (1, 'C:\\UPLUSSHOP\\img\detail\\', "Galaxy_A23_3.jpg","side");
INSERT INTO productdb.phone_image (phone_id, img_path, img_name, img_pos) VALUES (1, 'C:\\UPLUSSHOP\\img\\detail\\', "Galaxy_A23_4.jpg","back");

INSERT INTO productdb.phone_image (phone_id, img_path, img_name, img_pos) VALUES (2, 'C:\\UPLUSSHOP\\img\d\etail\\', "Galaxy_Z_Flip_3_1.jpg","front");
INSERT INTO productdb.phone_image (phone_id, img_path, img_name, img_pos) VALUES (2, 'C:\\UPLUSSHOP\\img\\detail\\', "Galaxy_Z_Flip_3_2.jpg","zoom");
INSERT INTO productdb.phone_image (phone_id, img_path, img_name, img_pos) VALUES (2, 'C:\\UPLUSSHOP\\img\\detail\\', "Galaxy_Z_Flip_3_3.jpg","side");
INSERT INTO productdb.phone_image (phone_id, img_path, img_name, img_pos) VALUES (2, 'C:\\UPLUSSHOP\\img\\detail\\', "Galaxy_Z_Flip_3_4.jpg","back");

INSERT INTO productdb.phone_image (phone_id, img_path, img_name, img_pos) VALUES (3, 'C:\\UPLUSSHOP\\img\\detail\\', "iPhone_13_Pro_256G_1.jpg","front");
INSERT INTO productdb.phone_image (phone_id, img_path, img_name, img_pos) VALUES (3, 'C:\\UPLUSSHOP\\img\\detail\\', "iPhone_13_Pro_256G_2.jpg","zoom");
INSERT INTO productdb.phone_image (phone_id, img_path, img_name, img_pos) VALUES (3, 'C:\\UPLUSSHOP\\img\\detail\\', "iPhone_13_Pro_256G_3.jpg","side");
INSERT INTO productdb.phone_image (phone_id, img_path, img_name, img_pos) VALUES (3, 'C:\\UPLUSSHOP\\img\\detail\\', "iPhone_13_Pro_256G_4.jpg","back");

INSERT INTO productdb.phone_image (phone_id, img_path, img_name, img_pos) VALUES (4, 'C:\\UPLUSSHOP\\img\\detail\\', "iPhone_SE_256GB_3_1.jpg","front");
INSERT INTO productdb.phone_image (phone_id, img_path, img_name, img_pos) VALUES (4, 'C:\\UPLUSSHOP\\img\\detail\\', "iPhone_SE_256GB_3_2.jpg","zoom");
INSERT INTO productdb.phone_image (phone_id, img_path, img_name, img_pos) VALUES (4, 'C:\\UPLUSSHOP\\img\\detail\\', "iPhone_SE_256GB_3_3.jpg","side");
INSERT INTO productdb.phone_image (phone_id, img_path, img_name, img_pos) VALUES (4, 'C:\\UPLUSSHOP\\img\\detail\\', "iPhone_SE_256GB_3_4.jpg","back");



-- plan table
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LUP0001", "5G", "5G 프리미어 에센셜", 300, 1050, 600, 85000, 50);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LUP0002", "5G", "5G 슬림+", 6, 500, 600, 47000, 0);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LUP0003", "5G", "5G 다이렉트 37.5", 12, 500, 600, 37500, 0);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LUP0004", "5G", "5G 스탠다드", 150, 500, 600,75000, 10);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LUP0005", "5G", "5G 프리미어 레귤러", 300, 500, 600, 89750, 50);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LUP0006", "5G", "5G 복지 75", 150, 500, 600, 75000, 10);

INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LUP0007", "4G", "LTE 데이터 33", 1, 500, 600, 33000, 0);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LUP0008", "4G", "추가 요금 걱정 없는 데이터 49", 3, 500, 600, 49000, 0);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LUP0009", "4G", "추가 요금 걱정 없는 데이터 69", 5, 500, 600, 69000, 11);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LUP00010", "4G", "LTE 프리미어 에센셜", 300, 500, 600,79750, 30);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LUP00011", "4G", "LTE 선택형(400분+7GB)", 7, 0, 400, 33000, 0);
INSERT INTO productdb.plan (code, network_support, name, data, message, voice, price, share_data) VALUES ("LUP00012", "4G", "추가 요금 걱정 없는 데이터 시니어 49", 5, 500, 600, 49000, 0);

