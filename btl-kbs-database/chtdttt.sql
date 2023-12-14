-- CREATE SCHEMA `chtdttt` ;
-- Bảng tblDieuLuat-- 
CREATE TABLE `chtdttt`.`tblDieuLuat` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `tieuDe` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`id`)
);
INSERT INTO `chtdttt`.`tblDieuLuat` (`id`, `tieuDe`) VALUES ('01', 'Sân và các thiết bị trên sân thi đấu');
INSERT INTO `chtdttt`.`tblDieuLuat` (`id`, `tieuDe`) VALUES ('02', 'Cầu');
INSERT INTO `chtdttt`.`tblDieuLuat` (`id`, `tieuDe`) VALUES ('03', 'THỬ CẦU');
INSERT INTO `chtdttt`.`tblDieuLuat` (`id`, `tieuDe`) VALUES ('04', 'Vợt');
INSERT INTO `chtdttt`.`tblDieuLuat` (`id`, `tieuDe`) VALUES ('05', 'TRANG THIẾT BỊ HỢP LỆ');
INSERT INTO `chtdttt`.`tblDieuLuat` (`id`, `tieuDe`) VALUES ('06', 'TUNG ĐỒNG XU BẮT THĂM');
INSERT INTO `chtdttt`.`tblDieuLuat` (`id`, `tieuDe`) VALUES ('07', 'HỆ THỐNG TÍNH ĐIỂM');
INSERT INTO `chtdttt`.`tblDieuLuat` (`id`, `tieuDe`) VALUES ('08', 'ĐỔI SÂN');
INSERT INTO `chtdttt`.`tblDieuLuat` (`id`, `tieuDe`) VALUES ('09', 'GIAO CẦU');
INSERT INTO `chtdttt`.`tblDieuLuat` (`id`, `tieuDe`) VALUES ('10', 'THI ĐẤU ĐƠN');
INSERT INTO `chtdttt`.`tblDieuLuat` (`id`, `tieuDe`) VALUES ('11', 'THI ĐẤU ĐÔI');
INSERT INTO `chtdttt`.`tblDieuLuat` (`id`, `tieuDe`) VALUES ('12', 'LỖI Ô GIAO CẦU');
INSERT INTO `chtdttt`.`tblDieuLuat` (`id`, `tieuDe`) VALUES ('13', 'LỖI');
INSERT INTO `chtdttt`.`tblDieuLuat` (`id`, `tieuDe`) VALUES ('14', 'GIAO CẦU LẠI');
INSERT INTO `chtdttt`.`tblDieuLuat` (`id`, `tieuDe`) VALUES ('15', 'CẦU NGOÀI CUỘC');
INSERT INTO `chtdttt`.`tblDieuLuat` (`id`, `tieuDe`) VALUES ('16', 'THI ĐẤU LIÊN TỤC, LỖI TÁC PHONG ĐẠO ĐỨC VÀ CÁC HÌNH PHẠT');
INSERT INTO `chtdttt`.`tblDieuLuat` (`id`, `tieuDe`) VALUES ('17', 'CÁC NHÂN VIÊN VÀ NHỮNG KHIẾU NẠI');

-- Bảng tblCHieTietLuat-- 
  CREATE TABLE `chtdttt`.`tblChiTietLuat` (
  `id` VARCHAR(10) NOT NULL,
  `dieuLuat` INT NOT NULL,
  `tieuDe` VARCHAR(255) NOT NULL,
  `moTaChiTiet` LONGTEXT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_dieuLuat_idx` (`dieuLuat` ASC) VISIBLE,
  CONSTRAINT `fk_dieuLuat`
    FOREIGN KEY (`dieuLuat`)
    REFERENCES `chtdttt`.`tblDieuLuat` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- R01
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R01', '01', 'Kích thước sân đơn', '- Chiều dài: 13,4m.'
    '\n- Chiều rộng: 5,18m.'
    '\n- Độ dài đường chéo: 14,3m.');
-- R02
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R02', '01', 'Kích thước sân đôi', '- Chiều dài: 13,4m.'
    '\n- Chiều rộng: 6,1m.'
    '\n- Độ dài đường chéo: 14,7m.');
-- R03
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R03', '01', 'Quy cách sân', '- Sân chơi cầu lông phải có hình chữ nhật với màu nền thường là xanh lá hoặc xanh dương.'
    '\n- Chất liệu làm sân cầu lông có thể là gỗ cứng hoặc thảm cao su tổng hợp.'
    '\n- Kích thước sân cầu lông tiêu chuẩn cho sân đơn và đôi là cố định.'
    '\n- Đường biên của sân có độ rộng là 4cm, các đường biên được vẽ rõ, dễ nhìn bằng sơn màu trắng hoặc vàng.'
    '\n- Ngay trên đường biên đôi sẽ được đặt 2 trụ cầu lông cao 1,55m.'
    '\n- Phạm vi sân cầu lông được tính từ mép ngoài của đường biên bên này cho đến mép ngoài của đường biên kia.');
-- R04
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R04', '01', 'Phụ kiện trên sân', '- Trụ cầu lông phải đủ chắc chắn để khi căng lưới nó vẫn đứng thẳng.'
    '\n- Trụ và các phụ kiện cầu lông khác không được đặt vào trong sân.'
    '\n- Lưới cầu lông phải đảm bảo có độ dày đều nhau, mắt lưới nằm trong khoảng 15mm - 20mm.'
    '\n- Kích thước của lưới: Chiều rộng 76cm và chiều dài 6,7m. Độ cao tính từ giữa đỉnh lưới đến mặt sân là 1,524m.'
    '\n- Khi căng lưới cần đảm bảo không có khoảng trống nào giữa hai cột trụ và lưới.');
-- R05
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R05', '02', 'Cầu có lông vũ', '- Quả cầu có 16 lông vũ gắn vào đế cầu.'
    '\n- Quả cầu lông nặng từ 4.74 gram đến 5.50 gram.'
    '\n- Đế cầu có đường kính từ 25mm đến 28mm và đáy tròn.'
    '\n- Các lông vũ được buộc lại bằng chỉ hoặc vật liệu thích hợp khác.'
    '\n- Đỉnh của các lông vũ phải nằm trên vòng tròn có đường kính từ 58mm đến 68mm.'
    '\n- Các lông vũ phải đồng dạng và có cùng độ dài trong khoảng 62mm đến 72mm tính từ đỉnh lông vũ cho đến đế cầu.');
-- R06
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R06', '02', 'Cầu không vó lông vũ', '- Các kích thước và trọng lượng như trong các Luật như mục 2. Tuy nhiên, có sự khác biệt về tỉ trọng và các tính năng của chất liệu tổng hợp so với lông vũ, nên một sai số tối đa 10% được chấp thuận.'
    '\n- Đế cầu có đường kính từ 25mm đến 28mm và đáy tròn'
    '\n- Tua cầu, hay hình thức giống như các lông vũ làm bằng chất liệu tổng hợp, thay thế cho các lông vũ thiên nhiên'
    '\n- Do không có thay đổi về thiết kế tổng quát, tốc độ, và đường bay của quả cầu, nên có thể thay đổi bổ sung một số tiêu chuẩn trên với sự chấp thuận của Liên đoàn thành viên liên hệ, đối với những nơi mà điều kiện khí quyển phụ thuộc vào độ cao hay khí hậu khiến cho quả cầu tiêu chuẩn không còn thích hợp nữa.');
-- R07
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R07', '03', 'Cách thử cầu', '- Để thử quả cầu, một VĐV sử dụng cú đánh hết lực theo hướng lên trên từ đường biên cuối sân, và đường bay của quả cầu song song với biên dọc.'
    '\n- Một quả cầu có tốc độ đúng sẽ rơi xuống sân ngắn hơn biên cuối sân bên kia không dưới 530mm và không hơn 990mm');
-- R08
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R08', '04', 'Quy định chung về vợt', '- Không được gắn thêm vào vợt vật dụng khác làm cho nhô ra, ngoại trừ những vật chỉ dùng đặc biệt để giới hạn hoặc ngăn ngừa trầy mòn hay chấn động, hoặc để phân tán trọng lượng hay để làm chắc chắn cán vợt bằng dây buộc vào tay VĐV, mà phải hợp lý về kích thước và vị trí cho những mục đích nêu trên.'
    '\n- Không được gắn vào vật gì mà có thể giúp cho VĐV thay đổi cụ thể hình dạng của vợt.');
-- R09
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R09', '04', 'Quy định về khung vợt', '- Khung vợt không vượt quá 680mm tổng chiều dài, 230mm tổng chiều rộng:'
    '\n+ Cán vợt là phần của vợt mà VĐV cầm tay vào.'
    '\n+ Khu vực đan lưới là phần của vợt mà VĐV dùng để đánh cầu.'
    '\n+ Đầu vợt giới hạn khu vực đan dây.'
    '\n+ Thân vợt nối đầu vợt với cán vợt.'
    '\n+ Cổ vợt ( nếu có ) nối thân vợt với đầu vợt.');
-- R10
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R10', '04', 'Quy định về khu vực đan lưới', '- Phải bằng phẳng và gồm một kiểu mẫu các dây đan xen kẽ hoặc cột lại tại những nơi chúng giao nhau. Kiểu đan dây nói chung phải đồng nhất, và đặc biệt không được thưa hơn bất cứ nơi nào khác.'
    '\n- Khu vực đan lưới không vượt quá 280mm tổng chiều dài và 220mm tổng chiều rộng. Tuy nhiên các dây có thể kéo dài vào một khoảng được xem là cổ vợt, miễn là:'
    '\n+ Chiều rộng của khoảng đan lưới nối dài này không vượt quá 35mm.'
    '\n+ Tổng chiều dài của khu vực đan lưới không vượt quá 330mm.');
-- R11
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R11', '05', 'Quy định về trang thiết bị hợp lệ', '- Liên đoàn Cầu lông Thế giới sẽ quyết định bất cứ vấn đề nào về tính hợp lệ so với quy định của bất cứ loại vợt, cầu, trang thiết bị hoặc bất cứ loại nguyên mẫu nào được sử dụng trong thi đấu cầu lông. Quyết định này có thể được thực hiện theo sáng kiến của Liên đoàn, hay theo cách áp dụng của bất cứ bên nào có lợi ích quan tâm chính đáng, bao gồm VĐV, nhân viên kỹ thuật, nhà sản xuất trang thiết bị, hoặc Liên đoàn thành viên, hay thành viên liên quan.');
-- R12
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R12', '06', 'Luật tung đồng xu', '- Trước khi trận đấu bắt đầu, việc tung đồng xu bắt thăm cho hai bên thi đấu được thực hiện và bên được thăm sẽ tuỳ chọn:'
    '\n+ Giao cầu trước hoặc nhận cầu trước.'
    '\n+ Bắt đầu trận đấu ở bên này hay bên kia của sân.'
    '\n- Bên không được thăm sẽ nhận lựa chọn còn lại.');
-- R13
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R13', '07', 'Số ván đấu trong một trận', '- Một trận đấu sẽ thi đấu theo thể thức ba ván thắng hai, trừ khi có sắp xếp cách khác, một ván 21 điểm.');
-- R14
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R14', '07', 'Cách tính điểm', '- Bên nào ghi được 21 điểm trước sẽ thắng ván đó. Trừ khi:'
    '\n+ Nếu tỷ số là 20 đều, bên nào ghi trước 2 điểm cách biệt sẽ thắng ván đó.'
    '\n+ Nếu tỷ số là 29 đều, bên nào ghi điểm thứ 30 sẽ thắng ván đó.'
    '\n- Bên thắng một pha cầu sẽ ghi môt điểm vào điểm số của mình. Một bên sẽ thắng pha cầu nếu: bên đối phương phạm một “Lỗi” hoặc cầu ngoài cuộc vì đã chạm vào bên trong mặt sân của họ.'
    '\n- Bên thắng sẽ giao cầu tiếp ở ván tiếp theo.');
-- R15
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R15', '08', 'Luật đổi sân', '- Thời điểm đổi sân:'
    '\n+ Khi kết thúc ván đầu đầu tiên.'
    '\n+ Khi kết thúc ván đấu thứ hai, nếu có ván thứ ba.'
    '\n+ Khi trong ván thứ ba, có một bên được 11 điểm trước.'
    '\n- Nếu phát hiện sân chưa đổi, các vận động viên sẽ lập tức đổi sân khi phát hiện và cầu không trong cuộc.');
-- R16
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R16', '09', 'Định nghĩa về một pha giao cầu đúng', '- Không có bên nào gây trì hoãn bất hợp lệ cho quả giao cầu một khi: cả bên giao cầu và bên nhận cầu đều sẵn sàng cho quả giao cầu.'
    '\n- Người giao cầu và người nhận cầu đứng trong phạm vi ô giao cầu đối diện chéo nhau mà không chạm đường biên của các ô giao cầu này.'
    '\n- Một phần của cả hai bàn chân người giao cầu và người nhận cầu phải còn tiếp xúc với mặt sân ở một vị trí cố định từ khi bắt đầu quả giao cầu (Khi các vận động viên đã vào vị trí sẵn sàng) cho đến khi quả cầu được đánh đi.'
    '\n- Vợt của người giao cầu phải đánh tiếp xúc đầu tiên vào đế cầu.'
    '\n- Toàn bộ quả cầu phải dưới thắt lưng của người giao cầu tại thời điểm nó được mặt vợt của người giao cầu đánh đi. Thắt lưng được xác định là một đường tưởng tượng xung quanh cơ thể ngang với phần xương sườn dưới cùng của người giao cầu.'
    '\n- Tại thời điểm đánh quả cầu, thân vợt của người giao cầu phải luôn hướng xuống dưới.'
    '\n- Vợt của người giao cầu phải chuyển động liên tục về phía trước từ lúc bắt đầu quả giao cầu cho đến khi quả cầu được đánh đi (Khi bắt đầu).'
    '\n- Đường bay của quả cầu sẽ đi theo hướng lên từ vợt của người giao cầu vượt qua trên lưới, mà nếu không bị cản lại nó sẽ rơi vào ô của người nhận giao cầu (có nghĩa là trên và trong các đường giới hạn ô giao cầu đó).'
    '\n- Khi có ý định thực hiện quả giao cầu, người giao cầu phải đánh trúng quả cầu.');
-- R17
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R17', '09', 'Định nghĩa thời điểm bắt đầu pha giao cầu và sự sẵn sàng của các vận động viên', '- Khi các vận động viên đã vào vị trí sẵn sàng: chuyển động đầu tiên của đầu vợt về phía trước của người giao cầu là lúc bắt đầu quả giao cầu.'
    '\n- Người giao cầu sẽ không giao cầu: khi người nhận cầu chưa sẵn sàng. Tuy nhiên người nhận cầu được xem là đã sẵn sàng nếu có ý định đánh trả quả cầu.');
-- R18
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R18', '09', 'Định nghĩa về thời điểm quả giao cầu được thực hiện', '- Khi bắt đầu: quả giao cầu được thực hiện khi nó được mặt vợt người giao cầu đánh đi, hoặc khi có ý định thực hiện quả giao cầu, người giao cầu đánh không trúng quả giao cầu.');
-- R19
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R19', '09', 'Vị trí đứng của đồng đội người giao cầu khi đánh đôi', '- Trong đánh đôi: khi thực hiện quả giao cầu, các đồng đội có thể đứng ở bất cứ vị trí nào bên trong phần sân của bên mình, miễn là không che mắt người giao cầu và người nhận cầu của đối phương.');
-- R20
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R20', '10', 'Ô giao cầu và nhận cầu trong đánh đơn', '- Các VĐV sẽ giao cầu và nhận cầu từ trong ô giao cầu bên phải tương ứng của mình khi người giao cầu chưa ghi điểm hoặc ghi được điểm chẵn trong ván đó.\n- Các VĐV sẽ giao cầu và nhận cầu từ trong ô giao cầu bên trái tương ứng của mình khi người giao cầu ghi được điểm lẻ trong ván đó.');
-- R21
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R21', '10', 'Thứ tự đánh cầu và vị trí trên sân khi đánh đơn', '- Trong pha cầu, quả cầu sẽ được đánh luân phiên bởi người giao cầu và người nhận cầu, từ bất kỳ vị trí nào phía bên phần sân của VĐV đó cho đến khi cầu không còn trong cuộc.');
-- R22
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R22', '10', 'Qui định về giao cầu khi kết thúc một pha cầu trong đánh đơn', '- Nếu người giao cầu thắng pha cầu (Điều 7), người giao cầu sẽ ghi cho mình một điểm. Người giao cầu sẽ tiếp tục giao cầu từ ô giao cầu còn lại.\n- Nếu người nhận cầu thắng pha cầu (Điều 7), người nhận cầu sẽ ghi cho mình 1 điểm. Người nhận cầu lúc này trở thành người giao cầu mới');
-- R23
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R23', '11', 'Ô giao cầu và nhận cầu trong đánh đôi', '- Một vận động viên bên giao cầu sẽ giao cầu từ ô giao cầu bên phải khi bên họ chưa ghi điểm hoặc ghi được điểm chẵn trong ván đó.\n- Một vận động viên bên giao cầu sẽ giao cầu từ ô giao cầu bên trái khi họ ghi được điểm lẻ trong ván đó.\n- Vận động viên có quả giao cầu lần cuối trước đó của bên giao cầu sẽ giữ nguyên vị trí đứng mà từ ô đó vận động viên này đã thực hiện lần giao cầu cuối cho bên mình. Mô hình ngược lại sẽ được áp dụng cho đồng đội của người nhận cầu.\n- VĐV của bên nhận cầu đang đứng trong ô giao cầu chéo đối diện sẽ là người nhận cầu.\n- VĐV sẽ không thay đổi vị trí đứng tương ứng của mình cho đến khi họ thắng một điểm mà bên của họ đang nắm quyền giao cầu.\n- Bất kỳ lượt giao cầu nào cũng được thực hiện từ ô giao cầu tương ứng với số điểm mà bên giao cầu đó có, ngoại trừ các trường hợp lỗi giao cầu.');
-- R24
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R24', '11', 'Thứ tự đánh cầu và vị trí trên sân khi đánh đôi', '- Sau khi quả giao cầu được đánh trả, cầu được đánh luân phiên bởi một trong hai VĐV của bên giao cầu và một trong hai VĐV của bên nhận cầu cho đến khi cầu không còn trong cuộc.');
-- R25
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R25', '11', 'Qui định về giao cầu khi kết thúc một pha cầu trong đánh đôi', '- Nếu bên giao cầu thắng pha cầu (Theo điều 7), họ sẽ ghi cho mình một điểm. Người giao cầu pha trước sẽ tiếp tục thực hiện quả giao cầu từ ô giao cầu tương ứng còn lại.\n- Nếu bên nhận cầu thắng pha cầu (Theo điều 7), họ sẽ ghi cho mình một điểm. Bên nhận cầu lúc này trở thành bên giao cầu mới.\n- Trong trường hợp người giao cầu bị chấn thương, đồng đội sẽ thay thế giao cầu.');
-- R26
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R26', '12', 'Thế nào là lỗi ô giao cầu', '- Lỗi ô giao cầu xảy ra khi một VĐV:\n+ Đã giao cầu hoặc nhận cầu sai phiên.\n+ Đã giao hoặc nhận cầu sai ô giao cầu.\n- Nếu một lỗi ô giao cầu được phát hiện, lỗi đó phải được sửa và điểm số hiện có vẫn giữ nguyên.');
-- R27
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R27', '13', 'Khi nào là lỗi giao cầu không đúng luật', '- Nếu giao cầu không đúng luật (Điều 9).');
-- R28
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R28', '13', 'Sự kiện gây lỗi từ quả cầu khi giao cầu', '- Bị mắc trên lưới và bị giữ lại trên lưới.\n- Sau khi qua lưới bị mắc lại trong lưới.\n- Được đánh bởi đồng đội người giao cầu.');
-- R29
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R29', '13', 'Sự kiện gây lỗi từ quả cầu trong cuộc', '- Rơi ở ngoài các đường biên giới hạn của sân (có nghĩa là không ở trên hay không ở trong các đường biên giới hạn đó).\n- Bay xuyên qua lưới hoặc dưới lưới.\n- Chạm trần nhà hoặc vách.\n- Chạm vào người hoặc quần áo của VĐ.\n- Chạm vào bất kỳ người nào hay vật nào khác bên ngoài sân, (Khi cần thiết do cấu trúc nơi thi đấu, thẩm quyền cầu lông địa phương có thể, dựa vào quyền phủ quyết của Liên đoàn thành viên của mình, áp dụng luật địa phương cho trường hợp cầu chạm chướng ngại vật).\n- Bị mắc và dính trên vợt khi thực hiện một cú đánh.\n- Được đánh hai lần liên tiếp bởi cùng một VĐV với hai cú đánh. Tuy nhiên, bằng một cú đánh, quả cầu chạm vào đầu vợt và khu vực đan lưới của vợt thì không coi là một “Lỗi”;\n- Được đánh liên tục bởi một VĐV và một VĐV đồng đội.\n- Chạm vào vợt mà không bay vào phần sân của đối phương.');
-- R30
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R30', '13', 'Sự kiện gây lỗi từ hành vi của vận động viên khi cầu trong cuộc', '- Chạm vào lưới, các vật chống đỡ lưới bằng vợt, thân mình hay quần áo.\n- Xâm phạm sân đối phương bằng vợt hay thân mình, ngoại trừ trường hợp người đánh có thể theo quả cầu bằng vợt của mình trong quá trình một cú đánh sau điểm tiếp xúc đầu tiên với quả cầu ở bên lưới của phần sân người đánh.\n- Xâm phạm sân của đối phương bên dưới lưới bằng vợt hay thân mình mà làm cho đối phương bị cản trở hay mất tập trung, nghĩa là ngăn không cho đối phương thực hiện một cú đánh hợp lệ tại vị trí quả cầu bay qua gần lưới.\n- Làm đối phương mất tập trung bằng bất cứ hành động nào như la hét hay bằng cử chỉ.');
-- R31
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R31', '14', 'Khi nào thì phải giao cầu lại', '- “Giao cầu lại” do Trọng tài chính hô, hoặc do một VĐV hô (nếu không có Trọng tài chính) để ngừng thi đấu.\n- Sẽ là “giao cầu lại” nếu:\n+ Người giao cầu giao trước khi người nhận cầu sẵn sàng.\n+ Trong khi giao cầu, cả người giao cầu và người nhận cầu cùng phạm lỗi.\n+ Sau khi quả giao cầu được đánh trả, quả cầu bị:\n\\ Mắc trên lưới và bị giữ lại trên lưới.\n\\ Sau khi qua lưới bị mắc lại trong lưới.\n+ Khi cầu trong cuộc, quả cầu bị tung ra, đế cầu tách rời hoàn toàn khỏi phần còn lại của quả cầu.\n+ Theo nhận định của Trọng tài chính, trận đấu bị gián đoạn hoặc một VĐV của bên đối phương bị mất tập trung bởi Huấn luyện viên của bên kia.\n+ Nếu một Trọng tài biên không nhìn thấy và Trọng tài chính không thể đưa ra quyết định.\n+ Trường hợp bất ngờ không thể lường trước xảy ra.');
-- R32
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R32', '14', 'Kết quả pha cầu khi “Giao cầu lại” xảy ra', '- Khi một quả “Giao cầu lại” xảy ra, pha đấu từ lần giao cầu vừa rồi sẽ không tính, và VĐV nào vừa giao cầu sẽ giao cầu lại.');
-- R33
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R33', '15', 'Cầu ngoài cuộc', '- Một quả cầu ngoài cuộc là khi cầu chạm vào lưới hay cột lưới và bắt đầu rơi xuống mặt sân phía bên này lưới của người đánh. Chạm mặt sân hoặc xảy ra một "Lỗi" hay "Giao cầu lại".');
-- R34
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R34', '16', 'Sự liên tục của một trận đấu', '- Thi đấu phải liên tục từ quả giao cầu đầu tiên cho đến khi trận đấu kết thúc, ngoại trừ như cho phép như các quãng nghỉ và ngừng thi đấu.');
-- R35
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R35', '16', 'Các quãng nghỉ', '- Không quá 60 giây trong một ván khi một bên ghi được 11 điểm.\n- Không quá 120 giây giữa ván đầu tiên và ván thứ hai, giữa ván thứ hai và ván thứ ba được phép trong tất cả các trận đấu.');
-- R36
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R36', '16', 'Điều kiện ngừng thi đấu', '- Khi tình thế bắt buộc không nằm trong kiểm soát của VĐV, Trọng tài chính có thể cho ngừng thi đấu trong một khoảng thời gian xét thấy cần thiết.\n- Trong những trường hợp đặc biệt, Tổng trọng tài sẽ chỉ thị Trọng tài chính cho ngừng thi đấu.\n- Nếu trận đấu được ngừng, tỷ số hiện có vẫn giữ nguyên và trận đấu vẫn tiếp tục trở lại từ tỷ số đó.');
-- R37
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R37', '16', 'Điều kiện trì hoãn thi đấu', '- Không được phép trì hoãn trong mọi trường hợp để giúp VĐV phục hồi thể lực hoặc nhận sự chỉ đạo.\n- Trọng tài chính là người duy nhất quyết định về mọi sự trì hoãn trong trận đấu.');
-- R38
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R38', '16', 'Luật về chỉ đạo và rời sân', '- Trong một trận đấu, chỉ khi cầu không trong cuộc (Điều 15), thì một VĐV mới được phép nhận chỉ đạo.\n- Trong một trận đấu, không một vận động viên nào được phép rời sân nếu chưa có sự đồng ý của Trọng tài chính ngoại trừ trong các quãng nghỉ như đã nếu trên.');
-- R39
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R39', '16', 'Những việc vận động viên không được phép làm.', '- Cố tình gây trì hoãn hoặc ngưng thi đấu.\n- Cố tình sửa đổi hoặc phá hỏng quả cầu để thay đổi tốc độ hoặc đường bay của quả cầu.\n- Có tác phong thái độ gây xúc phạm hoặc phạm lỗi tác phong đạo đức mà không có ghi trong Luật cầu lông.');
-- R40
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R40', '16', 'Xử lý vi phạm trong cầu lông', '- Trọng tài chính sẽ áp dụng Luật đối với bắt cứ vi phạm nào về trì hoãn, chỉ đạo rời sân, nhưng việc VĐV không được phép bằng cách:\n+ Cảnh cáo bên vi phạm.\n+ Phạt lỗi bên vi phạm nếu trước đó đã cảnh cáo. Một bên vi phạm hai lỗi như vậy được xem là một vi phạm liên tục.\n- Trong trường hợp vi phạm hiển nhiên. Các vi phạm liên tục, hoặc vi phạm vào luật về quãng nghỉ, Trọng tài chính sẽ phạt lỗi bên vi phạm và báo cáo ngay với Tổng trọng tài, người có quyền truất quyền thi đấu của bên vi phạm.');
-- R41
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R41', '17', 'Tổng trọng tài và vai trò', '- Tổng trọng tài là người chịu trách nhiệm toàn diện cho một giải thi đấu hay một nội dung thi đấu là một phần trong đó.');
-- R42
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R42', '17', 'Trọng tài chính và vai trò', '- Trọng tài chính, khi được bổ nhiệm, chịu trách nhiệm về trận đấu, sân và khu vực xung quanh. Trọng tài chính sẽ báo cáo cho Tổng trọng tài.\n- Một trọng tài chính sẽ:\n+ Thi hành và duy trì Luật cầu lông, và đặc biệt hô kịp thời “Lỗi” hoặc “Giao cầu lại’ nếu có tình huống xảy ra.\n+ Đưa ra quyết định về bất cứ khiếu nại nào liên quan đến điểm tranh chấp, nếu khiếu nại đó được thực hiện trước khi quả giao cầu kế tiếp được giao.\n+ Đảm bảo cho các VĐV và khán giả được thông tin đầy đủ về diễn biến của trận đấu.\n+ Bổ nhiệm hay thay đổi các Trọng tài biên hoặc Trọng tài giao cầu khi có hội ý với Tổng trọng tài.\n+ Ở vị trí trên sân thiếu nhân viên phụ trách, thì bố trí để thi hành các trách nhiệm này.\n+ Ở vị trí mà nhân viên được bổ nhiệm bị che mắt, thi thực hiện các trách nhiệm của nhân viên này, hoặc cho “Giao cầu lại”.\n+ Ghi nhận và báo cáo với Tổng trọng tài về tất cả các vấn đề có liên quan đến Điều 16.\n+ Trình cho Tổng trọng tài tất cả các khiếu nại chưa giải quyết thoả đáng về Luật. (Những khiếu nại như thế phải được thực hiện trước khi quả giao cầu kế tiếp được đánh, hoặc nếu ở cuối trận đấu, thì phải thực hiện trước khi bên khiếu nại rời sân).');
-- R43
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R43', '17', 'Trọng tài biên và vai trò', '- Trọng tài biên sẽ báo cho trọng tài chính quả cầu “Trong” hay “ Ngoài” đường biên của người đó phụ trách.');
-- R44
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R44', '17', 'Trọng tài giao cầu và vai trò', '- Trọng tài giao cầu sẽ bắt các lỗi giao cầu của người giao cầu nếu có xảy ra.');
-- R45
INSERT INTO `chtdttt`.`tblChiTietLuat` (`id`, `dieuLuat`, `tieuDe`, `moTaChiTiet`) VALUES 
('R45', '17', 'Trọng lượng trong quyết định của mỗi nhân viên', '- Quyết định của một nhân viên sẽ là quyết định sau cùng về mọi yếu tố nhận định xảy ra mà nhân viên đó có trách nhiệm, ngoại trừ nếu, theo nhận định của Trọng tài chính hoàn toàn chắc chắn rằng Trọng tài biên đã có quyết định sai, khi đó Trọng tài chính sẽ phủ quyết Trọng tài biên.');


-- Bảng tblThacMac
CREATE TABLE `chtdttt`.`tblThacMac` (
  `id` VARCHAR(10) NOT NULL,
  `moTa` VARCHAR(255) NOT NULL,
  `thacMacCha` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`));
ALTER TABLE `chtdttt`.`tblThacMac` 
CHANGE COLUMN `thacMacCha` `thacMacCha` VARCHAR(10) NULL ,
ADD INDEX `fk_ThacMacCha_idx` (`thacMacCha` ASC) VISIBLE;
;
ALTER TABLE `chtdttt`.`tblThacMac` 
ADD CONSTRAINT `fk_ThacMacCha`
  FOREIGN KEY (`thacMacCha`)
  REFERENCES `chtdttt`.`tblThacMac` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

INSERT INTO `chtdttt`.`tblThacMac` (`id`, `moTa`) VALUES 
('Q01', 'Thắc mắc về sân đấu, phụ kiện và trang thiết bị trên sân'),
('Q02', 'Thắc mắc về kích thước sân đấu'),
('Q03', 'Thắc mắc về kích thước sân đấu đơn'),
('Q04', 'Thắc mắc về kích thước sân đấu đôi'),
('Q05', 'Thắc mắc về các phụ kiện trên sân'),
('Q06', 'Thắc mắc như thế nào mới là trang thiết bị hợp lệ'),
('Q07', 'Thắc mắc về qui định với quả cầu'),
('Q08', 'Thắc mắc về cầu lông vũ'),
('Q09', 'Thắc mắc về cầu không có lông vũ'),
('Q10', 'Thắc mắc về cách thử một quả cầu'),
('Q11', 'Thắc mắc về quy định với vợt'),
('Q12', 'Thắc mắc về hệ thống thi đấu'),
('Q13', 'Thắc mắc về số ván đấu trong một trận'),
('Q14', 'Thắc mắc về cách tính điểm'),
('Q15', 'Thắc mắc về tung đồng xu'),
('Q16', 'Thắc mắc khi nào thì được đổi sân'),
('Q17', 'Thắc mắc về giao cầu'),
('Q18', 'Thắc mắc thế nào mới là pha giao cầu đúng'),
('Q19', 'Thắc mắc về ô đứng khi giao cầu và nhận cầu'),
('Q20', 'Thắc mắc về ô đứng khi giao cầu và nhận cầu khi đánh đơn'),
('Q21', 'Thắc mắc về ô đứng khi giao cầu và nhận cầu khi đánh đôi'),
('Q22', 'Thắc mắc về người giao cầu khi kết thúc một pha cầu'),
('Q23', 'Thắc mắc về người giao cầu khi kết thúc một pha cầu trong đánh đơn'),
('Q24', 'Thắc mắc về người giao cầu khi kết thúc một pha cầu trong đánh đôi'),
('Q25', 'Thắc mắc về quy định giao cầu lại'),
('Q26', 'Thắc mắc về thứ tự đánh cầu và vị trí trên sân'),
('Q27', 'Thắc mắc về thứ tự đánh cầu và vị trí trên sân khi đánh đơn'),
('Q28', 'Thắc mắc về thứ tự đánh cầu và vị trí trên sân khi đánh đôi'),
('Q29', 'Thắc mắc về điều kiện dừng trận đấu'),
('Q30', 'Thắc mắc về quãng nghỉ'),
('Q31', 'Thắc mắc về ngừng thi đấu'),
('Q32', 'Thắc mắc về trì hoãn thi đấu'),
('Q33', 'Thắc mắc về chỉ đạo và rời sân'),
('Q34', 'Thắc mắc về lỗi trong thi đấu'),
('Q35', 'Thắc mắc về lỗi ô giao cầu'),
('Q36', 'Thắc mắc về lỗi khi giao cầu hoặc nhận cầu'),
('Q37', 'Thắc mắc về lỗi khi cầu trong cuộc'),
('Q38', 'Như thế nào là cầu ngoài cuộc'),
('Q39', 'Thắc mắc về những vi phạm vận động viên phải tránh và xử phạt'),
('Q40', 'Thắc mắc về các nhân viên'),
('Q41', 'Thắc mắc về vai trò của tổng trọng tài'),
('Q42', 'Thắc mắc về vài trò của trọng tài chính'),
('Q43', 'Thắc mắc về vài trò của trọng tài biên'),
('Q44', 'Thắc mắc về vài trò của trọng tài giao cầu');

UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q01' WHERE (`id` = 'Q02');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q01' WHERE (`id` = 'Q05');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q01' WHERE (`id` = 'Q06');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q02' WHERE (`id` = 'Q03');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q02' WHERE (`id` = 'Q04');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q07' WHERE (`id` = 'Q08');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q07' WHERE (`id` = 'Q09');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q07' WHERE (`id` = 'Q10');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q12' WHERE (`id` = 'Q13');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q12' WHERE (`id` = 'Q14');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q12' WHERE (`id` = 'Q15');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q12' WHERE (`id` = 'Q16');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q12' WHERE (`id` = 'Q17');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q12' WHERE (`id` = 'Q29');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q17' WHERE (`id` = 'Q18');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q17' WHERE (`id` = 'Q19');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q17' WHERE (`id` = 'Q22');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q17' WHERE (`id` = 'Q25');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q17' WHERE (`id` = 'Q26');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q19' WHERE (`id` = 'Q20');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q19' WHERE (`id` = 'Q21');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q22' WHERE (`id` = 'Q23');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q22' WHERE (`id` = 'Q24');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q26' WHERE (`id` = 'Q27');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q26' WHERE (`id` = 'Q28');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q29' WHERE (`id` = 'Q30');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q29' WHERE (`id` = 'Q31');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q29' WHERE (`id` = 'Q32');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q29' WHERE (`id` = 'Q33');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q34' WHERE (`id` = 'Q35');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q34' WHERE (`id` = 'Q36');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q34' WHERE (`id` = 'Q37');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q40' WHERE (`id` = 'Q41');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q40' WHERE (`id` = 'Q42');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q40' WHERE (`id` = 'Q43');
UPDATE `chtdttt`.`tblThacMac` SET `thacMacCha` = 'Q40' WHERE (`id` = 'Q44');

-- Bảng tblSuyDien

CREATE TABLE `chtdttt`.`tblSuyDien` (
  `tt` INT NOT NULL AUTO_INCREMENT,
  `id` VARCHAR(10) NOT NULL,
  `idThacMac` VARCHAR(10) NOT NULL,
  `idChiTietLuat` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`tt`),
  INDEX `fk_ChiTietLuat_idx` (`idChiTietLuat` ASC) VISIBLE,
  INDEX `fk_ThacMac_idx` (`idThacMac` ASC) VISIBLE,
  CONSTRAINT `fk_ChiTietLuat`
    FOREIGN KEY (`idChiTietLuat`)
    REFERENCES `chtdttt`.`tblChiTietLuat` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ThacMac`
    FOREIGN KEY (`idThacMac`)
    REFERENCES `chtdttt`.`tblThacMac` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

select * from `chtdttt`.`tblSuyDien`;
-- C01 Q03 R01
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (1, 'C01', 'Q03', 'R01');
-- C02 Q04 R02
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (2, 'C02', 'Q04', 'R02');
-- C03 Q05 R03
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (3, 'C03', 'Q05', 'R03');
-- C03 Q05 R04
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (4, 'C03', 'Q05', 'R04');
-- C04 Q06 R011
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (5, 'C04', 'Q06', 'R11');
-- C05 Q08 R05
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (6, 'C05', 'Q08', 'R05');
-- C06 Q09 R06
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (7, 'C06', 'Q09', 'R06');
-- C07 Q10 R07
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (8, 'C07', 'Q10', 'R07');
-- C08 Q11 R08
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (9, 'C08', 'Q11', 'R08');
-- C08 Q11 R09
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (10, 'C08', 'Q11', 'R09');
-- C08 Q11 R10
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (11, 'C08', 'Q11', 'R10');
-- C09 Q13 R13
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (12, 'C09', 'Q13', 'R13');
-- C10 Q14 R14
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (13, 'C10', 'Q14', 'R14');
-- C11 Q15 R12
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (14, 'C11', 'Q15', 'R12');
-- C12 Q16 R15
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (15, 'C12', 'Q16', 'R15');
-- C13 Q18 R16
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (16, 'C13', 'Q18', 'R16');
-- C13 Q18 R17
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (17, 'C13', 'Q18', 'R17');
-- C13 Q18 R18
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (18, 'C13', 'Q18', 'R18');
-- C13 Q18 R19
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (19, 'C13', 'Q18', 'R19');
-- C14 Q20 R20
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (20, 'C14', 'Q20', 'R20');
-- C15 Q21 R19
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (21, 'C15', 'Q21', 'R19');
-- C15 Q21 R23
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (22, 'C15', 'Q21', 'R23');
-- C16 Q23 R22
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (23, 'C16', 'Q23', 'R22');
-- C17 Q24 R25
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (24, 'C17', 'Q24', 'R25');
-- C18 Q25 R31
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (25, 'C18', 'Q25', 'R31');
-- C18 Q25 R32
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (26, 'C18', 'Q25', 'R32');
-- C19 Q27 R21
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (27, 'C19', 'Q27', 'R21');
-- C20 Q28 R24
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (28, 'C20', 'Q28', 'R24');
-- C21 Q29 R34
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (29, 'C21', 'Q29', 'R34');
-- C22 Q30 R35
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (30, 'C22', 'Q30', 'R35');
-- C23 Q31 R36
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (31, 'C23', 'Q31', 'R36');
-- C24 Q32 R37
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (32, 'C24', 'Q32', 'R37');
-- C25 Q33 R38
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (33, 'C25', 'Q33', 'R38');
-- C26 Q35 R26
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (34, 'C26', 'Q35', 'R26');
-- C27 Q36 R27
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (35, 'C27', 'Q36', 'R27');
-- C27 Q36 R16
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (36, 'C27', 'Q36', 'R16');
-- C27 Q36 R17
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (37, 'C27', 'Q36', 'R17');
-- C27 Q36 R18
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (38, 'C27', 'Q36', 'R18');
-- C27 Q36 R19
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (39, 'C27', 'Q36', 'R19');
-- C27 Q36 R28
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (40, 'C27', 'Q36', 'R28');
-- C28 Q37 R29
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (41, 'C28', 'Q37', 'R29');
-- C28 Q37 R30
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (42, 'C28', 'Q37', 'R30');
-- C29 Q38 R33
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (43, 'C29', 'Q38', 'R33');
-- C30 Q39 R39
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (44, 'C30', 'Q39', 'R39');
-- C30 Q39 R40
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (45, 'C30', 'Q39', 'R40');
-- C31 Q40 R45
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (46, 'C31', 'Q40', 'R45');
-- C32 Q41 R41
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (47, 'C32', 'Q41', 'R41');
-- C33 Q42 R42
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (48, 'C33', 'Q42', 'R42');
-- C34 Q43 R43
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (49, 'C34', 'Q43', 'R43');
-- C35 Q44 R44
INSERT INTO `chtdttt`.`tblSuyDien` (`tt`, `id`, `idThacMac`, `idChiTietLuat`) VALUES (50, 'C35', 'Q44', 'R44');