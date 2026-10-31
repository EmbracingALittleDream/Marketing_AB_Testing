# A/B Testing cho Chiến dịch Marketing

## 1. Giới thiệu dự án

Dự án tập trung phân tích hiệu quả của một chiến dịch Marketing thông qua phương pháp kiểm định A/B và các phương pháp kiểm định giả thuyết thống kê.

Phân tích so sánh hai nhóm người dùng: nhóm được hiển thị quảng cáo thực tế (**Ad**) và nhóm được hiển thị thông báo dịch vụ công cộng (**PSA**). Mục tiêu là đánh giá sự khác biệt về tỷ lệ chuyển đổi, đồng thời tìm hiểu các yếu tố liên quan đến số lần người dùng nhìn thấy quảng cáo.

Thông qua các phương pháp thống kê, dự án hướng đến việc cung cấp cơ sở định lượng hỗ trợ đánh giá và tối ưu hóa chiến dịch Marketing.

## 2. Mục tiêu phân tích

- So sánh tỷ lệ chuyển đổi giữa nhóm Ad và nhóm PSA.
- Kiểm định sự khác biệt về tổng số lần người dùng nhìn thấy quảng cáo giữa hai nhóm.
- Phân tích sự thay đổi của số lần hiển thị quảng cáo theo ngày trong tuần và giờ trong ngày.
- Kiểm tra mối liên hệ giữa các biến định tính bằng kiểm định Chi bình phương.
- Sử dụng Three-Way ANOVA để phân tích ảnh hưởng của nhiều yếu tố đến số lần hiển thị quảng cáo.
- Tổng hợp và diễn giải kết quả thống kê nhằm hỗ trợ việc đưa ra quyết định Marketing dựa trên dữ liệu.

## 3. Mô tả bộ dữ liệu

Bộ dữ liệu chứa thông tin về nhóm thử nghiệm, hành vi chuyển đổi và mức độ tiếp xúc với quảng cáo của người dùng.

| Thuộc tính | Mô tả |
|---|---|
| `user id` | Mã định danh người dùng. |
| `test group` | Nhóm thử nghiệm, gồm Ad và PSA. |
| `converted` | Cho biết người dùng có thực hiện chuyển đổi hay không. |
| `total ads` | Tổng số lần quảng cáo được hiển thị cho người dùng. |
| `most ads day` | Ngày trong tuần người dùng nhìn thấy nhiều quảng cáo nhất. |
| `most ads hour` | Giờ trong ngày người dùng nhìn thấy nhiều quảng cáo nhất. |

**Lưu ý:** Bộ dữ liệu được lưu trữ cục bộ và không được đưa lên repository do dung lượng lớn.

## 4. Quy trình thực hiện

### 4.1. Tiền xử lý dữ liệu
- Kiểm tra cấu trúc, kiểu dữ liệu và các thuộc tính trong bộ dữ liệu.
- Mã hóa các biến định tính khi cần thiết để phục vụ phân tích thống kê.
- Chuẩn bị dữ liệu cho các phương pháp kiểm định giả thuyết và phân tích phương sai.

### 4.2. Kiểm định A/B
- So sánh tỷ lệ chuyển đổi giữa nhóm Ad và nhóm PSA.
- Xây dựng giả thuyết thống kê và lựa chọn phương pháp kiểm định phù hợp.
- Đánh giá bằng chứng thống kê về sự khác biệt giữa hai nhóm.

### 4.3. Phân tích số lần hiển thị quảng cáo
- So sánh tổng số lần người dùng nhìn thấy quảng cáo giữa hai nhóm thử nghiệm.
- Phân tích sự khác biệt về số lần hiển thị quảng cáo theo ngày trong tuần và giờ trong ngày.

### 4.4. Kiểm định giả thuyết thống kê
- Sử dụng kiểm định Chi bình phương về tính độc lập để đánh giá mối liên hệ giữa các biến định tính.
- Thực hiện Three-Way ANOVA để phân tích ảnh hưởng của ba yếu tố đến tổng số lần hiển thị quảng cáo.

### 4.5. Diễn giải kết quả
- Phân tích p-value và đưa ra kết luận dựa trên các giả thuyết thống kê.
- Tổng hợp kết quả phân tích và đề xuất định hướng tối ưu hóa chiến dịch Marketing dựa trên bằng chứng thống kê.

## 5. Công cụ sử dụng

- **Python:** NumPy, pandas, Matplotlib, Seaborn.
- **R:** Thực hiện các kiểm định giả thuyết thống kê và phân tích phương sai.

## 6. Cấu trúc repository

```text
Marketing_AB_Testing/
├── Python/          # Mã nguồn phân tích bằng Python
├── R/               # Mã nguồn kiểm định thống kê bằng R
└── README.md        # Tài liệu giới thiệu dự án
```

## 7. Kỹ năng thể hiện

- Tiền xử lý dữ liệu và mã hóa biến định tính.
- Phân tích dữ liệu khám phá (EDA).
- Kiểm định A/B và kiểm định giả thuyết thống kê.
- Kiểm định Chi bình phương về tính độc lập.
- Phân tích phương sai ba yếu tố (Three-Way ANOVA).
- Diễn giải kết quả thống kê và hỗ trợ ra quyết định dựa trên dữ liệu.

## 8. Kết luận

Dự án áp dụng các phương pháp thống kê để đánh giá sự khác biệt về tỷ lệ chuyển đổi giữa hai nhóm thử nghiệm, phân tích mức độ tiếp xúc với quảng cáo và khảo sát ảnh hưởng của các yếu tố liên quan đến thời điểm hiển thị quảng cáo.

Kết quả phân tích là cơ sở để đánh giá hiệu quả chiến dịch và hỗ trợ đề xuất các hướng tối ưu hóa hoạt động Marketing dựa trên dữ liệu.
