# 📘 BÀI TẬP PHÂN LOẠI BIẾN

---

## 📝 Bài 1

Một khảo sát về sinh viên:

| StudentID | Age | GPA | Major | Graduated |
| --------- | --- | --- | ----- | --------- |
| S01       | 20  | 3.5 | CS    | Yes       |
| S02       | 22  | 3.8 | Math  | No        |

### Yêu cầu:

1. Xác định cá thể.
2. Liệt kê các biến.
3. Phân loại từng biến: Quantitative / Categorical.
4. Nếu categorical: Nominal hay Ordinal?

---

## 📝 Bài 2

Dữ liệu bệnh nhân:

| PatientID | Weight | BloodType | Smoker | RiskLevel |
| --------- | ------ | --------- | ------ | --------- |
| P01       | 70     | A         | Yes    | High      |
| P02       | 55     | O         | No     | Low       |

### Yêu cầu:

- Phân loại từng biến.
- Biến nào là identifier?
- Biến nào là ordinal?

---

## 📝 Bài 3

Khảo sát nhân viên:

| Employee | Salary | Department | ExperienceYears | Satisfaction |
| -------- | ------ | ---------- | --------------- | ------------ |
| A        | 50000  | HR         | 3               | Medium       |
| B        | 70000  | IT         | 7               | High         |

### Yêu cầu:

- Biến nào định lượng?
- Satisfaction thuộc loại gì?
- Có thể tính trung bình Satisfaction không?

---

## 📝 Bài 4

Khảo sát mua sắm:

| CustomerID | Age | Gender | PurchaseAmount | PaymentMethod |
| ---------- | --- | ------ | -------------- | ------------- |
| C01        | 25  | Male   | 120            | Credit Card   |
| C02        | 30  | Female | 80             | Cash          |

### Yêu cầu:

- Phân loại từng biến.
- PaymentMethod là nominal hay ordinal?

---

## 📝 Bài 5

Dữ liệu sản phẩm:

| ProductID | Price | Category    | InStock | Rating |
| --------- | ----- | ----------- | ------- | ------ |
| P1        | 100   | Electronics | Yes     | 4      |
| P2        | 50    | Clothing    | No      | 3      |

### Yêu cầu:

- Rating là quantitative hay ordinal? Giải thích.
- Category là loại gì?

---

## 📝 Bài 6

Khảo sát lớp học:

| Student | Height | Weight | GradeLevel | Passed |
| ------- | ------ | ------ | ---------- | ------ |
| A       | 170    | 60     | 12         | Yes    |
| B       | 165    | 55     | 11         | No     |

### Yêu cầu:

- Phân loại GradeLevel.
- Height và Weight thuộc loại gì?

---

## 📝 Bài 7

Khảo sát khách sạn:

| GuestID | NightsStayed | RoomType | Satisfaction | ReturnCustomer |
| ------- | ------------ | -------- | ------------ | -------------- |
| G01     | 3            | Deluxe   | Very High    | Yes            |
| G02     | 1            | Standard | Medium       | No             |

### Yêu cầu:

- Satisfaction là nominal hay ordinal?
- NightsStayed là loại gì?

---

## 📝 Bài 8

Dữ liệu giao thông:

| DriverID | Age | VehicleType | Speed | Accident |
| -------- | --- | ----------- | ----- | -------- |
| D01      | 35  | Car         | 80    | No       |
| D02      | 28  | Truck       | 60    | Yes      |

### Yêu cầu:

- Speed là biến gì?
- Accident là loại gì?

---

## 📝 Bài 9

Khảo sát công nghệ:

| User | DeviceType | ScreenSize | OperatingSystem | DailyUsageHours |
| ---- | ---------- | ---------- | --------------- | --------------- |
| U1   | Phone      | 6.5        | Android         | 5               |
| U2   | Laptop     | 15         | Windows         | 8               |

### Yêu cầu:

- ScreenSize là continuous hay discrete?
- DeviceType là nominal hay ordinal?

---

## 📝 Bài 10 (Nâng cao)

Khảo sát mức độ đau:

| Patient | PainScale | Temperature | Diagnosis |
| ------- | --------- | ----------- | --------- |
| P1      | 8         | 38.5        | Flu       |
| P2      | 3         | 36.8        | Cold      |

Giả sử:
PainScale được đo từ 1–10 (mức độ đau).

### Yêu cầu:

1. PainScale nên xem là quantitative hay ordinal? Giải thích.
2. Temperature là loại gì?
3. Diagnosis là loại gì?

# 📘 DATA FRAME DÙNG CHO TẤT CẢ BÀI

Giả sử bạn có:

```r
df <- data.frame(
  Name = c("John", "Jack", "Kenny", "Mary", "Tom", "Anna"),
  Age = c(20, 30, 50, 24, 35, 28),
  Gender = c("Male", "Male", "Male", "Female", "Male", "Female"),
  Score = c(80, 85, 90, 95, 88, 92),
  Department = c("IT", "HR", "IT", "Finance", "IT", "HR")
)
```

---

# 🟢 BÀI 1 (Rất dễ)

👉 Chọn hàng thứ 3.

---

# 🟢 BÀI 2 (Dễ)

👉 Chọn các hàng có Age > 30.

---

# 🟢 BÀI 3 (Dễ)

👉 Chọn các hàng có Gender = "Female".

---

# 🟢 BÀI 4 (Trung bình)

👉 Chọn các hàng có Score >= 90.

---

# 🟡 BÀI 5 (Trung bình)

👉 Chọn các hàng có Age > 25 và Gender = "Male".

---

# 🟡 BÀI 6 (Trung bình+)

👉 Chọn các hàng có:

- Department = "IT"
- và Score > 85

---

# 🟡 BÀI 7 (Trung bình+)

👉 Chọn các hàng có:

- Age < 25
- hoặc Score > 90

---

# 🟠 BÀI 8 (Khó)

👉 Chọn các hàng:

- Gender là "Male"
- và Department thuộc IT hoặc HR

(Gợi ý: dùng `%in%`)

---

# 🔴 BÀI 9 (Khó hơn)

👉 Chọn các hàng:

- Age nằm trong khoảng từ 25 đến 40
- và Score >= 85

---

# 🔴 BÀI 10 (Nâng cao)

👉 Chọn các hàng:

- Department khác "IT"
- và Score không nhỏ hơn 90
- và Age không bằng 30
