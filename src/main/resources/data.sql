--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 17.0


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categories (category_id, name) VALUES (1, 'BÁNH KEM');
INSERT INTO public.categories (category_id, name) VALUES (2, 'BÁNH COOKIES');
INSERT INTO public.categories (category_id, name) VALUES (3, 'BÁNH CẤP ĐÔNG');
INSERT INTO public.categories (category_id, name) VALUES (4, 'BÁNH MÌ - BÁNH NGỌT');


--
-- Data for Name: order_details; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.person (person_id, address, email, name, phone_number) VALUES (1, '273 An Duong Vuong, Da Nang', 'phantuananh@example.com', 'Tuan Anh', '0912904732');


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products (price, category_id, product_id, name) VALUES (250000, 1, 1, 'Bánh kem trà xanh 12cm');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (250000, 1, 2, 'Bánh kem bơ cà phê vuông 12cm');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (250000, 1, 3, 'Bánh kem bơ cà phê 12cm');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (250000, 1, 4, 'Bánh kem chocola 12cm');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 5, 'Bánh kem trà xanh 18cm');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (380000, 1, 6, 'bánh kem bắp 18cm');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (380000, 1, 7, 'bánh kem bắp 18cm');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (500000, 1, 8, 'Bánh kem trà xanh vuông 18cm');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (500000, 1, 9, 'Bánh kem chocola vuông 18cm');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 10, 'Bánh Kem Sữa Tươi');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 11, 'Bánh Kem Sữa Tươi');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 12, 'Bánh Kem Sữa Tươi');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 13, 'Bánh Kem Sữa Tươi');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 14, 'Bánh Kem Sữa Tươi 32');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 15, 'Bánh Kem Sữa Tươi 30');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (380000, 1, 16, 'Bánh Kem Bắp Mẫu 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (380000, 1, 17, 'Bánh Kem Bắp Mẫu 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (380000, 1, 18, 'Bánh Kem Bắp Mãu 3');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (380000, 1, 19, 'Bánh Kem Bắp Mẫu 4');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 20, 'Bánh Kem Socola Mẫu 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 21, 'Bánh Kem Socola Mẫu 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 22, 'Bánh Kem Socola Mẫu 6');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 23, 'Bánh Kem Socola Mẫu 8');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 24, 'Bánh Kem Socola Mẫu 12');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 25, 'Bánh Kem Sữa Tươi Mẫu 3');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 26, 'Bánh Kem Sữa Tươi Mẫu 5');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 27, 'Bánh Kem Sữa Tươi Mẫu 11');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 28, 'Bánh Kem Sữa Tươi Mẫu 12');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 29, 'Bánh Kem Sữa Tươi Socola Mẫu 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 30, 'Bánh Kem Sữa Tươi Socola Mẫu 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 31, 'Bánh Kem Sữa Tươi Trái Cây Mẫu 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 32, 'Bánh Kem Sữa Tươi Trái Cây Mẫu 6');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 33, 'Bánh Kem Sữa Tươi Trái Cây Mẫu 7');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 34, 'Bánh Kem Tráng Gương Mẫu 5');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 35, 'Bánh Kem Tráng Gương Mẫu 7');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 36, 'Bánh Kem Tráng Gương Mẫu 8');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 37, 'Bánh Kem Tráng Gương Mẫu 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (200000, 1, 38, 'Bánh Kem Hoa Sữa Tươi Mẫu 35');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (200000, 1, 39, 'Bánh Kem Hoa Sữa Tươi Mẫu 35');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (200000, 1, 40, 'Bánh Kem Hoa Sữa Tươi Mẫu 34');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 41, 'Bánh Kem Hoa Sữa Tươi Mẫu 31');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 42, 'Bánh Kem Hoa Sữa Tươi Mẫu 32');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 43, 'Bánh Kem Hoa Sữa Tươi Mẫu 33');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 44, 'Mãu 4');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 45, 'Hoa Đào Nở Rộ');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 46, 'Tạo Hình Chậu Mai');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (500000, 1, 47, 'Tạo Hình Bánh Chưng');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 48, 'Túi Vàng Tài Lộc Mẫu 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 49, 'Túi Vàng Tài Lộc Mẫu 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (380000, 1, 50, 'Mẫu 3');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 51, 'Mẫu 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (380000, 1, 52, 'Mẫu 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 53, 'Mãu 4');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (380000, 1, 54, 'Mẫu 3');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (380000, 1, 55, 'Mẫu 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (200000, 1, 56, 'Xác Ướp');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (200000, 1, 57, 'Red Chost');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 58, 'Halloween Mẫu 3');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 59, 'Halloween Mẫu 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 60, 'Halloween 02');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 61, 'Halloween 01');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (200000, 1, 62, 'Angry devil');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (800000, 1, 63, 'Rồng ( Thìn )');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (500000, 1, 64, 'Hổ ( Dần ) Mẫu 3');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 65, 'Heo ( Hợi )');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 66, 'Gà ( Dậu )');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 67, 'Khỉ ( Thân )');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 68, 'Dê ( Mùi )');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 69, 'Ngựa ( Ngọ )');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 70, 'Mèo ( Mão )');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 71, 'Hổ ( Dần ) Mẫu 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 72, 'Hổ ( Dần ) Mẫu 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 73, 'Trâu ( Sửu )');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 74, 'Chuột ( Tý )');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 75, 'Sữa Tươi Socola Mẫu 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 76, 'Sữa Tươi Socola Mẫu 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 77, 'Bánh Trái Tim Đen');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 78, 'Bánh Kem Socola Mẫu 13');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 79, 'Bánh Kem Socola Mẫu 12');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 80, 'Bánh Kem Socola Mẫu 11');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 81, 'Bánh Kem Socola Mẫu 10');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 82, 'Bánh Kem Socola Mẫu 9');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 83, 'Bánh Kem Socola Mẫu 8');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 84, 'Bánh Kem Socola Mẫu 7');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 85, 'Bánh Kem Socola Mẫu 6');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 86, 'Bánh Kem Socola Mẫu 5');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 87, 'Bánh Kem Socola Mẫu 4');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 88, 'Bánh Kem Socola Mẫu 3');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 89, 'Bánh Kem Socola Mẫu 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 90, 'Bánh Kem Socola Mẫu 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 91, 'Sữa Tươi Trái Cây Mẫu 7');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 92, 'Sữa Tươi Trái Cây Mẫu 6');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 93, 'Sữa Tươi Trái Cây Mẫu 4');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 94, 'Sữa Tươi Trái Cây Mẫu 3');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 95, 'Sữa Tươi Trái Cây Mẫu 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 96, 'Sữa Tươi Trái Cây Mẫu 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 97, 'Bánh Kem Sữa Tươi Mẫu 12');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 98, 'Bánh Kem Sữa Tươi Mẫu 11');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 99, 'Bánh Kem Sữa Tươi Mẫu 10');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 100, 'Bánh Kem Sữa Tươi Mẫu 9');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 101, 'Bánh Kem Sữa Tươi Mẫu 8');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 102, 'Bánh Kem Sữa Tươi Mẫu 7');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 103, 'Bánh Kem Sữa Tươi Mẫu 6');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 104, 'Bánh Kem Sữa Tươi Mẫu 5');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 105, 'Bánh Kem Sữa Tươi Mẫu 4');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 106, 'Bánh Kem Sữa Tươi Mẫu 3');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 107, 'Bánh Kem Sữa Tươi Mẫu 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 108, 'Bánh Kem Sữa Tươi Mẫu 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 109, 'Bánh Kem Thạc Sĩ');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 110, 'Vịt Con');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 111, 'Thỏ Tím Chibi');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 112, 'Tô Mì');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 113, 'Hoàng Hậu');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (500000, 1, 114, 'Hoa Xương Rồng');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 115, 'Em Bé Trai');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 116, 'Cún Xinh');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 117, 'Công Chúa');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 118, 'Bé Thỏ');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 119, 'Bé Dâu');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 120, 'Bánh Kem Xe Hơi');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 121, 'Xe Hơi Đỏ');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 122, 'Xe Cảnh Sát');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (700000, 1, 123, 'Bánh Kem Thần Tài');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 124, 'Quỳnh Aka');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 125, 'Pikachu');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 126, 'Ngôi Nhà Thỏ 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (600000, 1, 127, 'Ngôi Nhà Thỏ');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 128, 'Mèo Tom');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 129, 'Khủng Long Xanh');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 130, 'Gia Đình Gấu');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 131, 'Gấu Đôi');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 132, 'Gấu Chibi');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 133, 'Gấu Baby');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 134, 'Gà Chibi');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 135, 'Em Bé Vịt');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 136, 'Em Bé Gái');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 137, 'Doremon');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 138, 'Chibi Hài Hước');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 139, 'Hình Chibi Cô Bé');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 140, 'Chậu Xương Rồng');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 141, 'Bé Bunny');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 142, 'Bé Thiên Thần');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 143, 'Chibi Bé Gái');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (600000, 1, 144, 'Bà Thọ');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 145, 'AMI Bụng Bự');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 146, 'Chibi Bé Trai');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 147, 'Bánh Bento Mẫu 23');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 148, 'Bánh Bento Mẫu 22');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 149, 'Bánh Bento Mẫu 21');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 150, 'Bánh Bento Mẫu 20');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 151, 'Bánh Bento Mẫu 19');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 152, 'Bánh Bento Mẫu 18');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 153, 'Bánh Bento Mẫu 17');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 154, 'Bánh Bento Mẫu 16');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 155, 'Bánh Bento Mẫu 15');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 156, 'Bánh Bento Mẫu 14');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 157, 'Bánh Bento Mẫu 13');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 158, 'Bánh Bento Mẫu 12');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 159, 'Bánh Bento Mẫu 11');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 160, 'Bánh Bento Mẫu 10');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 161, 'Bánh Bento Mẫu 9');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 162, 'Bánh Bento Mẫu 8');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 163, 'Bánh Bento Mẫu 7');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 164, 'Bánh Bento Mẫu 6');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 165, 'Bánh Bento Mẫu 5');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 166, 'Bánh Bento Mẫu 4');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 167, 'Bánh Bento Mẫu 3');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 168, 'Bánh Bento Mẫu 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 169, 'Bánh Bento Mẫu 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 170, 'Bánh Kem Tráng Gương 8');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 171, 'Bánh Kem Tráng Gương 7');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 172, 'Bánh Kem Sữa Tươi Mẫu 6');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 173, 'Bánh Kem Sữa Tươi Mẫu 5');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 174, 'Bánh Kem Sữa Tươi Mẫu 3');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 175, 'Bánh Kem Sữa Tươi Mẫu 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 176, 'Bánh Kem Hủ Vàng Hoa Mai');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (95000, 1, 177, 'Santa''s Gift');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (500000, 1, 178, 'Bánh Khúc Cây 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 179, 'X-MAS CAKE (Size 18cm)');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (250000, 1, 180, 'X-Mas Cake 3');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (250000, 1, 181, 'X-Mas Cake 4');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (250000, 1, 182, 'X-Mas Cake 5');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (500000, 1, 183, 'Bánh Kem Khúc Cây 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 184, 'Bánh Kem Tạo Hình Ông Già Noel');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (180000, 1, 185, 'Bánh Bông Lan Trứng Muối');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 186, 'Bánh Kem Sữa Tươi Mẫu 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (200000, 1, 187, 'X-Mas Cake 6');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 188, 'X-Mas Cake 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 189, 'Bánh Kem Hoa Sữa Tươi Mẫu 30');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 190, 'Bánh Mèo Thần Tài');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 191, 'Công Chúa Sữa Tươi');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 192, 'Bánh Tốt Nghiệp');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (380000, 1, 193, 'Bánh Kem Bắp 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (500000, 1, 194, 'Bánh kem Noel Mẫu 6');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (500000, 1, 195, 'Bánh Kem Noel Mẫu 7');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (500000, 1, 196, 'Bánh Kem Khúc Cây 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 197, 'X-Mas Cake 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 198, 'Bánh Kem Noel Mẫu 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 199, 'Bánh Kem Hoa Sữa Tươi Mẫu 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 200, 'Bánh Kem Hoa Sữa Tươi Mẫu 10');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 201, 'Bánh Kem Hoa Sữa Tươi Mẫu 12');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 202, 'Bánh Kem Hoa Sữa Tươi Mẫu 12');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 203, 'Bánh Kem Hoa Sữa Tươi Mẫu 15');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 204, 'Bánh Kem Hoa Sữa Tươi Mẫu 18');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 205, 'Bánh Kem Hoa Sữa Tươi Mẫu 27');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 206, 'Bánh Kem Hoa Sữa Tươi Mẫu 29');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 207, 'Bánh Kem Ông Lộc');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 208, 'X-Mas Cake 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 209, 'Bento 10');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 1, 210, 'Bento 9');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 211, 'Bánh Kem Tráng Gương 6');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 212, 'Bánh Kem Tráng Gương 5');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 213, 'Bánh Kem Tráng Gương 4');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 214, 'Bánh Kem Tráng Gương 3');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 215, 'Bánh Kem Chocolate 3');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 216, 'Bánh Kem Chocolate 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 217, 'Bánh Kem Teddy Bear');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 218, 'Giỏ Hoa Tươi');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 219, 'Bánh Kem Trái Cây 3');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 220, 'Bánh Kem Sữa Tươi 3');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 221, 'Bánh Kem Trái Tim');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 222, 'Bánh Kem Trái Cây 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 223, 'Bánh Kem Hoa');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 224, 'Sweet Cake 23');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 225, 'Sweet Cake 22');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 226, 'Sweet Cake 21');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 227, 'Sweet Cake 20');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 228, 'Sweet Cake 17');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 229, 'Bánh Kem Sữa Tươi 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 230, 'Bánh Kem Chocolate');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 231, 'Bánh Kem Socola 11');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 232, 'Sweet Cake 11');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 233, 'Bánh Kem Tráng Gương 1');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 234, 'Udon');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 235, 'Sweet Cake 5');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 236, 'Bánh Kem Tráng Gương 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 237, 'Sweet Cake 2');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 238, 'Bánh Kem Trái Cây');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (350000, 1, 239, 'Bánh Kem Sữa Tươi Mẫu 4');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 240, 'Ông Già Noel Chui Ống Khói');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (450000, 1, 241, 'Bánh Kem Noel Mẫu 3');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 242, 'Bánh Kem Noel Mẫu 4');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 243, 'Bánh Kem Hoa Sữa Tươi Mẫu 4');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 244, 'Bánh Kem Hoa Sữa Tươi Mẫu 6');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 245, 'Bánh Kem Hoa Sữa Tươi Mẫu 7');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 246, 'Bánh Kem Hoa Sữa Tươi Mẫu 28');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (400000, 1, 247, 'Bán Kem Hoa Sữa Tươi Mẫu 16');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 248, 'Bánh Kem Thỏi Vàng');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 249, 'Bánh Kem Hoa Sữa Tươi Mẫu 5');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (550000, 1, 250, 'Giỏ Hoa Sugar Town');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (700000, 1, 251, 'Bánh Kem Thần Tài');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (800000, 1, 252, 'Bánh Kem Rồng Ôm Hủ Vàng');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (85000, 3, 253, 'Bánh mì que bò bằm');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (65000, 3, 254, 'Bánh Mì Que Thanh Long Nhân Pate
(Set 6 cái)');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (75000, 3, 255, 'Bánh Mi Ngũ Sắc Chấm Sữa
(Set 10 bánh)');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (110000, 3, 256, 'Bánh Pizza Thịt Xông Khói và Thịt Nguội
(Ham, Bacon Pizza)');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (110000, 3, 257, 'Bánh Pizza 4 Loại Phô Mai
(Pizza 4 Cheese)');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (110000, 3, 258, 'Bánh Pizza Hải Sản
(Seafood Pizza)');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (96000, 3, 259, 'Bánh Sừng Bò
(Croissant)');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (37500, 3, 260, 'Bánh Mì Tươi
(Mini Baguette)');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (108000, 3, 261, 'Bánh Ngàn Lớp Nhân Xúc Xích
(Sausage Puff)');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (95000, 2, 262, 'Cheese Stick');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (94000, 2, 263, 'Macaron');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (98000, 2, 264, 'Bánh Dứa Mini');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (50000, 2, 265, 'Cookies Mini');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (80000, 2, 266, 'Bánh Quy Kẹp Phô Mai Trứng Muối');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (75000, 2, 267, 'Cookies Lưỡi Mèo');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (65000, 2, 268, 'Cookies Roll Cripsy');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (35000, 4, 269, 'Bánh Danish hải sản');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (25000, 4, 270, 'Bánh mì tôm phô mai');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (25000, 4, 271, 'Bánh Mì Bacon Phô Mai Bắp');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (25000, 4, 272, 'Bánh Bông Lan Phô Mai Mè Đen');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (105000, 4, 273, 'Combo Cream Donuts Tươi Mọng');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (105000, 4, 274, 'Combo Cream Donuts Thơm Béo');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (115000, 4, 275, 'Bánh Mì Phô Mai Tan Chảy');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (115000, 4, 276, 'Bánh Mì Phô Mai Hoàng kim');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (50000, 4, 277, 'Croissant Kem & Dâu');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (58000, 4, 278, 'Set roll cake 4 vị');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (48000, 4, 279, 'Sausage Danish');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (50000, 4, 280, 'Apple Pie');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (65000, 4, 281, 'Almond Croissant');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (25000, 4, 282, 'Sandwich tôm trứng');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (25000, 4, 283, 'Sandwich ham cheese');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (25000, 4, 284, 'Sandwich gà');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (25000, 4, 285, 'Sandwich Cá Ngừ');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (25000, 4, 286, 'Bánh Mì Sấy Bơ Tỏi');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (35000, 4, 287, 'Bánh Mì Cà Ri Bò');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (35000, 4, 288, 'Bánh Mì Xúc Xích Mini');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (35000, 4, 289, 'Bánh Gấu Nhân Choco Tan Chảy');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (25000, 4, 290, 'Bánh Croissant Bacon Cheese');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (25000, 4, 291, 'Bánh Croissant Bơ Tỏi');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (18000, 4, 292, 'Bánh Mì Gà Nấm');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (18000, 4, 293, 'Bánh Mì Xé Cay');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (55000, 4, 294, 'Bánh Mì Cà Phê Muối');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (65000, 4, 295, 'Bánh Mì Nướng Ngàn Lớp');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (115000, 4, 296, 'Bông Lan Phô Mai Nhật');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (92000, 4, 297, 'Roll Cake Chà Bông Trứng Muối');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (36000, 4, 298, 'Bánh Mì Bacon Cheddar');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (38000, 4, 299, 'Bánh Mì Sandwich Ngũ Cốc');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (50000, 4, 300, 'Mini Donut ( Set 5 bánh )');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (50000, 4, 301, 'Pain Au Chocolate');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (22000, 4, 302, 'Mini Castella');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (75000, 4, 303, 'Bánh Tart Trứng Bồ Đào Nha ( Set 4 bánh )');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (25000, 4, 304, 'Pate Chaud');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (45000, 4, 305, 'Bánh Sừng Bò
(Plain Croissant)');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (90000, 4, 306, 'Bánh Mì Hoa Cúc
(Brioche Trese'')');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (25000, 4, 307, 'Bánh Mì Sandwich');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (45000, 4, 308, 'Bánh Mì Cua Phô Mai ( Set 5 bánh )');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (64000, 4, 309, 'Bánh Mì Chà Bông Gà Cay ( Set 4 Bánh )');
INSERT INTO public.products (price, category_id, product_id, name) VALUES (25000, 4, 310, 'Bánh Mì Xúc Xích');

--
-- Data for Name: product_images; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_images (product_product_id, images) VALUES (1, 'https://www.sugartown.vn/upload/sanpham/201-17273448352.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (2, 'https://www.sugartown.vn/upload/sanpham/101-17273448123.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (3, 'https://www.sugartown.vn/upload/sanpham/1301-17273447868.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (4, 'https://www.sugartown.vn/upload/sanpham/401-17273447250.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (5, 'https://www.sugartown.vn/upload/sanpham/1201-17273446903.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (6, 'https://www.sugartown.vn/upload/sanpham/801-17273446308.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (7, 'https://www.sugartown.vn/upload/sanpham/801-17273446308.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (8, 'https://www.sugartown.vn/upload/sanpham/501-17273445885.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (9, 'https://www.sugartown.vn/upload/sanpham/301-17273445552.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (10, 'https://www.sugartown.vn/upload/sanpham/701-17273443646.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (11, 'https://www.sugartown.vn/upload/sanpham/701-17273443646.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (12, 'https://www.sugartown.vn/upload/sanpham/701-17273443646.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (13, 'https://www.sugartown.vn/upload/sanpham/701-17273443646.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (14, 'https://www.sugartown.vn/upload/sanpham/1001-17273439357.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (15, 'https://www.sugartown.vn/upload/sanpham/701-17273438239.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (16, 'https://www.sugartown.vn/upload/sanpham/101-17183394187.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (17, 'https://www.sugartown.vn/upload/sanpham/201-17183393899.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (18, 'https://www.sugartown.vn/upload/sanpham/301-17183393566.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (19, 'https://www.sugartown.vn/upload/sanpham/401-17183393117.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (20, 'https://www.sugartown.vn/upload/sanpham/15-17137761309.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (21, 'https://www.sugartown.vn/upload/sanpham/16-17137761207.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (22, 'https://www.sugartown.vn/upload/sanpham/3-17137760831.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (23, 'https://www.sugartown.vn/upload/sanpham/9-17137760543.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (24, 'https://www.sugartown.vn/upload/sanpham/7-17137760184.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (25, 'https://www.sugartown.vn/upload/sanpham/2501-17139394411.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (26, 'https://www.sugartown.vn/upload/sanpham/2201-17139394283.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (27, 'https://www.sugartown.vn/upload/sanpham/11-17137817913.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (28, 'https://www.sugartown.vn/upload/sanpham/12-17137817932.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (29, 'https://www.sugartown.vn/upload/sanpham/1201-17183390031.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (30, 'https://www.sugartown.vn/upload/sanpham/1101-17183389678.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (31, 'https://www.sugartown.vn/upload/sanpham/sua-tuoi-trai-cay-1201-17183389241.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (32, 'https://www.sugartown.vn/upload/sanpham/sua-tuoi-trai-cay-1701-17183388908.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (33, 'https://www.sugartown.vn/upload/sanpham/sua-tuoi-trai-cay-1801-17183383840.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (34, 'https://www.sugartown.vn/upload/sanpham/901-17183383197.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (35, 'https://www.sugartown.vn/upload/sanpham/1001-17183382668.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (36, 'https://www.sugartown.vn/upload/sanpham/801-17183380044.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (37, 'https://www.sugartown.vn/upload/sanpham/701-17183379576.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (38, 'https://www.sugartown.vn/upload/sanpham/1-17152366854.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (39, 'https://www.sugartown.vn/upload/sanpham/1-17152366854.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (40, 'https://www.sugartown.vn/upload/sanpham/5-17152366912.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (41, 'https://www.sugartown.vn/upload/sanpham/6-17152366751.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (42, 'https://www.sugartown.vn/upload/sanpham/2-17152366697.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (43, 'https://www.sugartown.vn/upload/sanpham/4-17152366633.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (44, 'https://www.sugartown.vn/upload/sanpham/2-17137798451.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (45, 'https://www.sugartown.vn/upload/sanpham/201-17139347027.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (46, 'https://www.sugartown.vn/upload/sanpham/501-17139347091.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (47, 'https://www.sugartown.vn/upload/sanpham/101-17139347156.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (48, 'https://www.sugartown.vn/upload/sanpham/401-17139347211.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (49, 'https://www.sugartown.vn/upload/sanpham/301-17139347274.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (50, 'https://www.sugartown.vn/upload/sanpham/301-17139348285.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (51, 'https://www.sugartown.vn/upload/sanpham/3-17137792074.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (52, 'https://www.sugartown.vn/upload/sanpham/101-17139348437.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (53, 'https://www.sugartown.vn/upload/sanpham/2-17137798451.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (54, 'https://www.sugartown.vn/upload/sanpham/301-17139348285.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (55, 'https://www.sugartown.vn/upload/sanpham/101-17139348437.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (56, 'https://www.sugartown.vn/upload/sanpham/banh-kem-xac-uop01-17139390071.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (57, 'https://www.sugartown.vn/upload/sanpham/banh-kem-red-ghost01-17139390125.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (58, 'https://www.sugartown.vn/upload/sanpham/banh-kem-dau-lau01-17139390204.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (59, 'https://www.sugartown.vn/upload/sanpham/banh-kem-mat01-17139390336.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (60, 'https://www.sugartown.vn/upload/sanpham/banh-kem-halloween-201-17139390398.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (61, 'https://www.sugartown.vn/upload/sanpham/banh-kem-halloween01-17139390448.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (62, 'https://www.sugartown.vn/upload/sanpham/banh-kem-angry-devil01-17139390511.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (63, 'https://www.sugartown.vn/upload/sanpham/6-17129958888.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (64, 'https://www.sugartown.vn/upload/sanpham/11-17129959033.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (65, 'https://www.sugartown.vn/upload/sanpham/8-17129959239.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (66, 'https://www.sugartown.vn/upload/sanpham/9-17129959207.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (67, 'https://www.sugartown.vn/upload/sanpham/2-17129959388.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (68, 'https://www.sugartown.vn/upload/sanpham/6-17129959544.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (69, 'https://www.sugartown.vn/upload/sanpham/13-17129959646.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (70, 'https://www.sugartown.vn/upload/sanpham/3-17129959739.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (71, 'https://www.sugartown.vn/upload/sanpham/1-17129959801.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (72, 'https://www.sugartown.vn/upload/sanpham/12-17129959899.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (73, 'https://www.sugartown.vn/upload/sanpham/5-17129959959.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (74, 'https://www.sugartown.vn/upload/sanpham/7-17129960039.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (75, 'https://www.sugartown.vn/upload/sanpham/5-17137761380.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (76, 'https://www.sugartown.vn/upload/sanpham/banh-kem-sua-tuoi-socola-101-17102254538.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (77, 'https://www.sugartown.vn/upload/sanpham/2-17137759793.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (78, 'https://www.sugartown.vn/upload/sanpham/1-17137760019.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (79, 'https://www.sugartown.vn/upload/sanpham/7-17137760184.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (80, 'https://www.sugartown.vn/upload/sanpham/4-17137760269.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (81, 'https://www.sugartown.vn/upload/sanpham/8-17137760349.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (82, 'https://www.sugartown.vn/upload/sanpham/10-17137760473.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (83, 'https://www.sugartown.vn/upload/sanpham/9-17137760543.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (84, 'https://www.sugartown.vn/upload/sanpham/11-17137760748.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (85, 'https://www.sugartown.vn/upload/sanpham/3-17137760831.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (86, 'https://www.sugartown.vn/upload/sanpham/12-17137760903.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (87, 'https://www.sugartown.vn/upload/sanpham/13-17137760994.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (88, 'https://www.sugartown.vn/upload/sanpham/14-17137761107.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (89, 'https://www.sugartown.vn/upload/sanpham/16-17137761207.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (90, 'https://www.sugartown.vn/upload/sanpham/15-17137761309.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (91, 'https://www.sugartown.vn/upload/sanpham/19-17137816167.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (92, 'https://www.sugartown.vn/upload/sanpham/17-17137817034.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (93, 'https://www.sugartown.vn/upload/sanpham/16-17137817010.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (94, 'https://www.sugartown.vn/upload/sanpham/15-17137816990.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (95, 'https://www.sugartown.vn/upload/sanpham/14-17137816966.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (96, 'https://www.sugartown.vn/upload/sanpham/13-17137817963.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (97, 'https://www.sugartown.vn/upload/sanpham/12-17137817932.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (98, 'https://www.sugartown.vn/upload/sanpham/11-17137817913.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (99, 'https://www.sugartown.vn/upload/sanpham/10-17137817884.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (100, 'https://www.sugartown.vn/upload/sanpham/9-17137817866.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (101, 'https://www.sugartown.vn/upload/sanpham/7-17137817840.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (102, 'https://www.sugartown.vn/upload/sanpham/8-17137817821.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (103, 'https://www.sugartown.vn/upload/sanpham/2701-17139394165.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (104, 'https://www.sugartown.vn/upload/sanpham/2201-17139394283.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (105, 'https://www.sugartown.vn/upload/sanpham/2301-17139394341.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (106, 'https://www.sugartown.vn/upload/sanpham/2501-17139394411.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (107, 'https://www.sugartown.vn/upload/sanpham/2601-17139394520.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (108, 'https://www.sugartown.vn/upload/sanpham/2401-17139394582.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (109, 'https://www.sugartown.vn/upload/sanpham/thiet-ke-chua-co-ten-1-17129945901.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (110, 'https://www.sugartown.vn/upload/sanpham/3601-17139396600.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (111, 'https://www.sugartown.vn/upload/sanpham/3501-17139396692.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (112, 'https://www.sugartown.vn/upload/sanpham/3401-17139396787.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (113, 'https://www.sugartown.vn/upload/sanpham/3301-17139396874.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (114, 'https://www.sugartown.vn/upload/sanpham/3201-17139397431.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (115, 'https://www.sugartown.vn/upload/sanpham/201-17139397379.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (116, 'https://www.sugartown.vn/upload/sanpham/3101-17139397340.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (117, 'https://www.sugartown.vn/upload/sanpham/3001-17139397590.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (118, 'https://www.sugartown.vn/upload/sanpham/2901-17139401163.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (119, 'https://www.sugartown.vn/upload/sanpham/2801-17139397858.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (120, 'https://www.sugartown.vn/upload/sanpham/2701-17139397895.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (121, 'https://www.sugartown.vn/upload/sanpham/2601-17139397950.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (122, 'https://www.sugartown.vn/upload/sanpham/2501-17139398018.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (123, 'https://www.sugartown.vn/upload/sanpham/asset-1-17086576315.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (124, 'https://www.sugartown.vn/upload/sanpham/2401-17139398085.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (125, 'https://www.sugartown.vn/upload/sanpham/2301-17139398155.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (126, 'https://www.sugartown.vn/upload/sanpham/2201-17139398317.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (127, 'https://www.sugartown.vn/upload/sanpham/2101-17139398414.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (128, 'https://www.sugartown.vn/upload/sanpham/2001-17139401050.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (129, 'https://www.sugartown.vn/upload/sanpham/1901-17139398592.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (130, 'https://www.sugartown.vn/upload/sanpham/1801-17139399221.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (131, 'https://www.sugartown.vn/upload/sanpham/1701-17139399748.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (132, 'https://www.sugartown.vn/upload/sanpham/1601-17139399877.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (133, 'https://www.sugartown.vn/upload/sanpham/1501-17139399975.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (134, 'https://www.sugartown.vn/upload/sanpham/1401-17139400501.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (135, 'https://www.sugartown.vn/upload/sanpham/1301-17139400555.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (136, 'https://www.sugartown.vn/upload/sanpham/101-17139400651.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (137, 'https://www.sugartown.vn/upload/sanpham/1201-17139400712.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (138, 'https://www.sugartown.vn/upload/sanpham/1101-17139400762.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (139, 'https://www.sugartown.vn/upload/sanpham/1001-17139399162.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (140, 'https://www.sugartown.vn/upload/sanpham/901-17139399098.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (141, 'https://www.sugartown.vn/upload/sanpham/801-17139399008.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (142, 'https://www.sugartown.vn/upload/sanpham/701-17139398925.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (143, 'https://www.sugartown.vn/upload/sanpham/401-17139398857.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (144, 'https://www.sugartown.vn/upload/sanpham/601-17139398796.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (145, 'https://www.sugartown.vn/upload/sanpham/501-17139398736.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (146, 'https://www.sugartown.vn/upload/sanpham/301-17139398666.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (147, 'https://www.sugartown.vn/upload/sanpham/2301-17139345238.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (148, 'https://www.sugartown.vn/upload/sanpham/2201-17139345143.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (149, 'https://www.sugartown.vn/upload/sanpham/2101-17139345060.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (150, 'https://www.sugartown.vn/upload/sanpham/2001-17139344992.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (151, 'https://www.sugartown.vn/upload/sanpham/1901-17139344928.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (152, 'https://www.sugartown.vn/upload/sanpham/1801-17139344814.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (153, 'https://www.sugartown.vn/upload/sanpham/1701-17139344747.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (154, 'https://www.sugartown.vn/upload/sanpham/1601-17139344633.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (155, 'https://www.sugartown.vn/upload/sanpham/1501-17139344555.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (156, 'https://www.sugartown.vn/upload/sanpham/1401-17139344507.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (157, 'https://www.sugartown.vn/upload/sanpham/1301-17139344445.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (158, 'https://www.sugartown.vn/upload/sanpham/1201-17139344373.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (159, 'https://www.sugartown.vn/upload/sanpham/1101-17139344295.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (160, 'https://www.sugartown.vn/upload/sanpham/1001-17139344210.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (161, 'https://www.sugartown.vn/upload/sanpham/901-17139344151.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (162, 'https://www.sugartown.vn/upload/sanpham/801-17139344054.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (163, 'https://www.sugartown.vn/upload/sanpham/701-17139343964.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (164, 'https://www.sugartown.vn/upload/sanpham/601-17139343872.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (165, 'https://www.sugartown.vn/upload/sanpham/501-17139343810.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (166, 'https://www.sugartown.vn/upload/sanpham/401-17139343724.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (167, 'https://www.sugartown.vn/upload/sanpham/301-17139343666.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (168, 'https://www.sugartown.vn/upload/sanpham/201-17139343580.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (169, 'https://www.sugartown.vn/upload/sanpham/101-17139343520.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (170, 'https://www.sugartown.vn/upload/sanpham/thiet-ke-chua-co-ten-17101379919.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (171, 'https://www.sugartown.vn/upload/sanpham/thiet-ke-chua-co-ten-1-17101379631.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (172, 'https://www.sugartown.vn/upload/sanpham/2701-17139394165.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (173, 'https://www.sugartown.vn/upload/sanpham/2201-17139394283.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (174, 'https://www.sugartown.vn/upload/sanpham/2501-17139394411.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (175, 'https://www.sugartown.vn/upload/sanpham/2401-17139394582.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (176, 'https://www.sugartown.vn/upload/sanpham/asset-3-17086584434.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (177, 'https://www.sugartown.vn/upload/sanpham/201-17028425637.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (178, 'https://www.sugartown.vn/upload/sanpham/1101-17028424312.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (179, 'https://www.sugartown.vn/upload/sanpham/901-17028423711.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (180, 'https://www.sugartown.vn/upload/sanpham/501-17028421309.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (181, 'https://www.sugartown.vn/upload/sanpham/401-17028420550.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (182, 'https://www.sugartown.vn/upload/sanpham/301-17028419891.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (183, 'https://www.sugartown.vn/upload/sanpham/201-17028417829.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (184, 'https://www.sugartown.vn/upload/sanpham/101-17028416414.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (185, 'https://www.sugartown.vn/upload/sanpham/501-17139348490.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (186, 'https://www.sugartown.vn/upload/sanpham/2601-17139394520.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (187, 'https://www.sugartown.vn/upload/sanpham/3-17101310447.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (188, 'https://www.sugartown.vn/upload/sanpham/801-17028423352.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (189, 'https://www.sugartown.vn/upload/sanpham/602-17097774043.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (190, 'https://www.sugartown.vn/upload/sanpham/banh-kem-meo-than-tai-17086557206.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (191, 'https://www.sugartown.vn/upload/sanpham/24-16906292125.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (192, 'https://www.sugartown.vn/upload/sanpham/suatuoithacsi01-16906286318.jpg');
INSERT INTO public.product_images (product_product_id, images) VALUES (193, 'https://www.sugartown.vn/upload/sanpham/banhkembap-16906259280.jpg');
INSERT INTO public.product_images (product_product_id, images) VALUES (194, 'https://www.sugartown.vn/upload/sanpham/7-17101320036.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (195, 'https://www.sugartown.vn/upload/sanpham/5-17101319467.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (196, 'https://www.sugartown.vn/upload/sanpham/201-17028417829.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (197, 'https://www.sugartown.vn/upload/sanpham/2-17101284626.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (198, 'https://www.sugartown.vn/upload/sanpham/11-17101280607.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (199, 'https://www.sugartown.vn/upload/sanpham/1702-17097810296.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (200, 'https://www.sugartown.vn/upload/sanpham/2202-17097793409.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (201, 'https://www.sugartown.vn/upload/sanpham/2002-17097792593.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (202, 'https://www.sugartown.vn/upload/sanpham/2002-17097792593.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (203, 'https://www.sugartown.vn/upload/sanpham/2402-17097784028.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (204, 'https://www.sugartown.vn/upload/sanpham/2302-17097783025.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (205, 'https://www.sugartown.vn/upload/sanpham/2802-17097777833.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (206, 'https://www.sugartown.vn/upload/sanpham/2402-17097776785.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (207, 'https://www.sugartown.vn/upload/sanpham/banhongloc-17086566292.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (208, 'https://www.sugartown.vn/upload/sanpham/801-17028423352.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (209, 'https://www.sugartown.vn/upload/sanpham/201-17139394675.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (210, 'https://www.sugartown.vn/upload/sanpham/301-17139394737.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (211, 'https://www.sugartown.vn/upload/sanpham/mg3436-16906284109.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (212, 'https://www.sugartown.vn/upload/sanpham/mg3441-16906283582.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (213, 'https://www.sugartown.vn/upload/sanpham/mg0015-16906283152.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (214, 'https://www.sugartown.vn/upload/sanpham/mg0016-16906282694.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (215, 'https://www.sugartown.vn/upload/sanpham/mg3435-16906280975.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (216, 'https://www.sugartown.vn/upload/sanpham/mg3230-16906280644.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (217, 'https://www.sugartown.vn/upload/sanpham/teddybear-16906280293.jpg');
INSERT INTO public.product_images (product_product_id, images) VALUES (218, 'https://www.sugartown.vn/upload/sanpham/mg1414-16906279116.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (219, 'https://www.sugartown.vn/upload/sanpham/15-16906276126.jpg');
INSERT INTO public.product_images (product_product_id, images) VALUES (220, 'https://www.sugartown.vn/upload/sanpham/15-16906275782.jpg');
INSERT INTO public.product_images (product_product_id, images) VALUES (221, 'https://www.sugartown.vn/upload/sanpham/15-16906275418.jpg');
INSERT INTO public.product_images (product_product_id, images) VALUES (222, 'https://www.sugartown.vn/upload/sanpham/tropicalfruits301-16906273929.jpg');
INSERT INTO public.product_images (product_product_id, images) VALUES (223, 'https://www.sugartown.vn/upload/sanpham/kem-hoa-16906269097.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (224, 'https://www.sugartown.vn/upload/sanpham/hoa-16889769712.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (225, 'https://www.sugartown.vn/upload/sanpham/banh-kem-hoa-sen-da-16889769205.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (226, 'https://www.sugartown.vn/upload/sanpham/kem-xuowg-rog-16889768909.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (227, 'https://www.sugartown.vn/upload/sanpham/banh-hop-hoa-16889768536.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (228, 'https://www.sugartown.vn/upload/sanpham/mg4120-16889767371.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (229, 'https://www.sugartown.vn/upload/sanpham/mg3561-16889767112.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (230, 'https://www.sugartown.vn/upload/sanpham/mg2919-16889768204.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (231, 'https://www.sugartown.vn/upload/sanpham/mg3446-16889766353.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (232, 'https://www.sugartown.vn/upload/sanpham/mg1642-16889765119.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (233, 'https://www.sugartown.vn/upload/sanpham/banh-kem-trang-guong01-16965797587.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (234, 'https://www.sugartown.vn/upload/sanpham/asset-13-16837926873.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (235, 'https://www.sugartown.vn/upload/sanpham/asset-11-16837923268.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (236, 'https://www.sugartown.vn/upload/sanpham/asset-9-16837922576.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (237, 'https://www.sugartown.vn/upload/sanpham/asset-7-16837921572.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (238, 'https://www.sugartown.vn/upload/sanpham/asset-6-16837910471.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (239, 'https://www.sugartown.vn/upload/sanpham/2301-17139394341.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (240, 'https://www.sugartown.vn/upload/sanpham/6-17101321193.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (241, 'https://www.sugartown.vn/upload/sanpham/9-17101253813.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (242, 'https://www.sugartown.vn/upload/sanpham/8-17101253197.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (243, 'https://www.sugartown.vn/upload/sanpham/302-17097809617.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (244, 'https://www.sugartown.vn/upload/sanpham/202-17097807571.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (245, 'https://www.sugartown.vn/upload/sanpham/102-17097807051.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (246, 'https://www.sugartown.vn/upload/sanpham/502-17097777243.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (247, 'https://www.sugartown.vn/upload/sanpham/1802-17095486438.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (248, 'https://www.sugartown.vn/upload/sanpham/banhthoivang-17086574604.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (249, 'https://www.sugartown.vn/upload/sanpham/702-17097808231.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (250, 'https://www.sugartown.vn/upload/sanpham/902-17095483586.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (251, 'https://www.sugartown.vn/upload/sanpham/asset-1-17086576315.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (252, 'https://www.sugartown.vn/upload/sanpham/banhconrong-17086583696.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (253, 'https://www.sugartown.vn/upload/sanpham/asset-3-16957067916.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (254, 'https://www.sugartown.vn/upload/sanpham/que4-16716369693.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (255, 'https://www.sugartown.vn/upload/sanpham/bm-16716354734.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (256, 'https://www.sugartown.vn/upload/sanpham/pz-16716006859.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (257, 'https://www.sugartown.vn/upload/sanpham/banhpizza4loaiphomaipizza4cheese02-16509581144.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (258, 'https://www.sugartown.vn/upload/sanpham/banhpizzahaisanseafoodpizza02-16509579520.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (259, 'https://www.sugartown.vn/upload/sanpham/banhsungbocroissant02-16509558015.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (260, 'https://www.sugartown.vn/upload/sanpham/banhmituoiminibaguette2-16509556827.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (261, 'https://www.sugartown.vn/upload/sanpham/banhnganlopnhanxucxichsausagepuff2-16509554528.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (262, 'https://www.sugartown.vn/upload/sanpham/chesee-stick01-16965743173.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (263, 'https://www.sugartown.vn/upload/sanpham/fd315acda6524f15befceb4fdde341fe-17022791920.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (264, 'https://www.sugartown.vn/upload/sanpham/banh-dua-201-16780829972.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (265, 'https://www.sugartown.vn/upload/sanpham/de98359c7e694d84ba56c216db3b017b-17022787799.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (266, 'https://www.sugartown.vn/upload/sanpham/fe989d75a8a045aab4885cdf22e55c8a-17022790166.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (267, 'https://www.sugartown.vn/upload/sanpham/c05ead7a3191463a8a6dcfda694b35f4-17022790710.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (268, 'https://www.sugartown.vn/upload/sanpham/cookies-roll-crispy-1-16578117426.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (269, 'https://www.sugartown.vn/upload/sanpham/danish-hai-san01-17256983327.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (270, 'https://www.sugartown.vn/upload/sanpham/banh-mi-tom-pho-mai01-17256983104.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (271, 'https://www.sugartown.vn/upload/sanpham/banh-mi-bacon-pho-mai-bap01-17256972677.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (272, 'https://www.sugartown.vn/upload/sanpham/banh-bong-lan-pho-mai-me-den01-17256971978.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (273, 'https://www.sugartown.vn/upload/sanpham/dau-tay01-17198251478.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (274, 'https://www.sugartown.vn/upload/sanpham/thiet-ke-chua-co-ten-1-17172150402.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (275, 'https://www.sugartown.vn/upload/sanpham/banhmiphomai4-17137547929.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (276, 'https://www.sugartown.vn/upload/sanpham/101-17137546601.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (277, 'https://www.sugartown.vn/upload/sanpham/croissant-kem-va-dau02-16965742550.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (278, 'https://www.sugartown.vn/upload/sanpham/roll-cake-4-vi-mini02-16965730345.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (279, 'https://www.sugartown.vn/upload/sanpham/sausage-danish01-16965687334.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (280, 'https://www.sugartown.vn/upload/sanpham/apple-cinnamon-pie02-16965686551.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (281, 'https://www.sugartown.vn/upload/sanpham/almond-croissant02-16965683873.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (282, 'https://www.sugartown.vn/upload/sanpham/sandwich-tom-trung-101-16965680780.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (283, 'https://www.sugartown.vn/upload/sanpham/sandwich-ham-chesee-101-16965680311.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (284, 'https://www.sugartown.vn/upload/sanpham/sandwich-ga-101-16965679340.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (285, 'https://www.sugartown.vn/upload/sanpham/sandwich-ca-ngu-101-16965678948.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (286, 'https://www.sugartown.vn/upload/sanpham/banh-mi-say-bo-to-101-16965674990.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (287, 'https://www.sugartown.vn/upload/sanpham/banh-mi-ca-ri-bo01-16965673541.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (288, 'https://www.sugartown.vn/upload/sanpham/banh-mi-xuc-xich-mini-101-16965671146.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (289, 'https://www.sugartown.vn/upload/sanpham/banh-mi-gau-101-16965668622.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (290, 'https://www.sugartown.vn/upload/sanpham/banh-croissant-bacon-cheese01-16932065937.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (291, 'https://www.sugartown.vn/upload/sanpham/banh-croissant-bo-toi01-16932065472.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (292, 'https://www.sugartown.vn/upload/sanpham/banh-mi-ga-nam01-16932064971.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (293, 'https://www.sugartown.vn/upload/sanpham/banh-mi-xe-cay01-16932064663.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (294, 'https://www.sugartown.vn/upload/sanpham/banh-mi-ca-phe-muoi01-16932064194.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (295, 'https://www.sugartown.vn/upload/sanpham/banh-mi-nuong-ngan-lop01-16932063038.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (296, 'https://www.sugartown.vn/upload/sanpham/bong-lan-pho-mai-nhat01-16790379146.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (297, 'https://www.sugartown.vn/upload/sanpham/rollcake-cha-bong-trung-muoi01-16790377262.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (298, 'https://www.sugartown.vn/upload/sanpham/banh-mi-bacon-va-cheddar01-16790376617.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (299, 'https://www.sugartown.vn/upload/sanpham/sandwich-ngu-coc01-16777424108.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (300, 'https://www.sugartown.vn/upload/sanpham/mini-dounut01-16752359375.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (301, 'https://www.sugartown.vn/upload/sanpham/pa1-16716371939.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (302, 'https://www.sugartown.vn/upload/sanpham/mini-castella-2-16729746367.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (303, 'https://www.sugartown.vn/upload/sanpham/ta2-16715384371.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (304, 'https://www.sugartown.vn/upload/sanpham/pate-chaud-lon01-1-17015043846.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (305, 'https://www.sugartown.vn/upload/sanpham/croissant02-16752355110.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (306, 'https://www.sugartown.vn/upload/sanpham/banhmihoacuc02-16509500303.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (307, 'https://www.sugartown.vn/upload/sanpham/sandwich-16715342611.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (308, 'https://www.sugartown.vn/upload/sanpham/banh-cua-16715345233.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (309, 'https://www.sugartown.vn/upload/sanpham/banh-mi-cha-bong-ga-cay02-16752345695.png');
INSERT INTO public.product_images (product_product_id, images) VALUES (310, 'https://www.sugartown.vn/upload/sanpham/xx-16715354409.png');


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.roles (role_id, role_name) VALUES (1, 'USER');
INSERT INTO public.roles (role_id, role_name) VALUES (2, 'ADMIN');

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES ('2024-11-26 17:33:15.852346+00', NULL, 1, '$2a$10$TosjOzFrFaGF2ZPY.hKIsuNYqr9lcx/Z/fsi7la5USEurykFhiqh6', 'admin');
INSERT INTO public.users VALUES ('2024-11-26 17:33:15.889755+00', NULL, 2, '$2a$10$28nfAQGtxGqNmXzLIzCuBuGbgrev2ZXpY72u47PM8X.iKBctCK27.', 'tuananh');
INSERT INTO public.users VALUES ('2024-11-26 17:33:15.99405+00', 1, 3, '$2a$10$dNoyTvZDFkPUB36NSDwfOemg3eGSdAbBmFRYLyQXkzKdY2.5ww1xu', 'tuananh1');

--
-- Data for Name: user_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.user_role (role_id, user_id) VALUES (2, 1);
INSERT INTO public.user_role (role_id, user_id) VALUES (1, 2);
INSERT INTO public.user_role (role_id, user_id) VALUES (1, 3);


--
-- Name: categories_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_seq', 4, true);


--
-- Name: order_details_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_details_seq', 1, false);


--
-- Name: orders_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_seq', 1, false);


--
-- Name: payments_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_seq', 1, false);


--
-- Name: person_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.person_seq', 1, true);


--
-- Name: products_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_seq', 310, true);


--
-- Name: roles_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_seq', 2, true);


--
-- Name: users_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_seq', 3, true);

--
-- PostgreSQL database dump complete
--

