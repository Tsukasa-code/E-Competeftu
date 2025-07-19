# Cơ Cấu Giải Thưởng - E-COMPETE

## Tổng quan

Đã thiết kế giao diện cơ cấu giải thưởng hoàn chỉnh hiển thị cả 4 loại giải thưởng trong cùng một màn hình, sử dụng hình ảnh khung có sẵn từ `assets/images/khungcocau.png`.

## Các file đã tạo

### 1. `lib/screens/prize_structure_section.dart`
- Section chính hiển thị cả 4 loại giải thưởng
- Responsive design cho mobile và desktop
- Tích hợp sẵn trong `home_screen.dart`

### 2. `lib/screens/prize_structure_demo.dart`
- File demo để test giao diện hoàn chỉnh
- Có thể truy cập để xem preview

## Tính năng chính

### 🎨 Thiết kế
- **Background**: Sử dụng hình ảnh `khungcocau.png` làm nền
- **Overlay**: Gradient đen để text dễ đọc
- **Decorative elements**: Kim cương và viền vàng (#B6B65A)
- **Màu sắc**: 
  - Vàng (#FFD700) cho 01 QUÁN QUÂN (giải cao nhất)
  - Xanh lá (#4CAF50) cho các giải khác

### 📱 Responsive
- **Mobile**: Layout dọc, 4 cards xếp chồng
- **Desktop**: Layout 2x2 grid, 2 rows
- **Breakpoint**: 900px

### 🔧 Tích hợp
- Đã thêm vào menu chính (Mục lục)
- Đã thêm vào drawer menu
- Có thể scroll đến section từ menu

## Cấu trúc giải thưởng

### 🥇 01 QUÁN QUÂN (Champion)
- **Giá trị**: 93.395.000 VNĐ
- **Màu sắc**: Vàng (#FFD700) - đặc biệt
- **Giải thưởng**:
  - 15.000.000 VNĐ tiền mặt
  - 300$ budget support
  - 05 scholarships 100% Colorme
  - 05 scholarships 100% ST Lighthouse
  - 05 vouchers 100% Spark Prep
  - 5 IELTS accounts (6 months)

### 🥈 01 Á QUÂN (Runner-up)
- **Giá trị**: 51.995.000 VNĐ
- **Giải thưởng**:
  - 10.000.000 VNĐ tiền mặt
  - 300$ budget support
  - 05 scholarships 50% Colorme
  - 05 scholarships 70% ST Lighthouse
  - 05 vouchers 50% Spark Prep
  - 05 IELTS accounts (3 months)

### 🥉 01 QUÝ QUÂN (Grand Champion)
- **Giá trị**: 47.870.000 VNĐ
- **Giải thưởng**:
  - 8.000.000 VNĐ tiền mặt
  - 300$ budget support
  - 05 scholarships 25% Colorme
  - 05 scholarships 70% ST Lighthouse
  - 05 vouchers 50% Spark Prep
  - 5 IELTS accounts (3 months)

### 🏆 TOP 05
- **Giá trị**: 41.245.000 VNĐ
- **Giải thưởng**:
  - 5.000.000 VNĐ tiền mặt
  - 300$ budget support
  - 5 Colorme vouchers
  - 05 scholarships 70% ST Lighthouse
  - 05 vouchers 50% Spark Prep
  - 05 IELTS accounts (1 month)

### 📊 Tổng kết
- **Tổng giá trị**: 234.505.000 VNĐ
- **Số lượng giải**: 4 loại
- **Đối tác**: Colorme, ST Lighthouse, Spark Prep

## Layout

### Desktop (2x2 Grid)
```
┌─────────────────┬─────────────────┐
│  01 QUÁN QUÂN  │   01 Á QUÂN    │
│  93.395.000 VNĐ│  51.995.000 VNĐ│
└─────────────────┴─────────────────┘
┌─────────────────┬─────────────────┐
│  01 QUÝ QUÂN   │    TOP 05      │
│  47.870.000 VNĐ│  41.245.000 VNĐ│
└─────────────────┴─────────────────┘
```

### Mobile (Vertical Stack)
```
┌─────────────────┐
│  01 QUÁN QUÂN  │
│  93.395.000 VNĐ│
└─────────────────┘
┌─────────────────┐
│   01 Á QUÂN    │
│  51.995.000 VNĐ│
└─────────────────┘
┌─────────────────┐
│  01 QUÝ QUÂN   │
│  47.870.000 VNĐ│
└─────────────────┘
┌─────────────────┐
│    TOP 05      │
│  41.245.000 VNĐ│
└─────────────────┘
```

## Cách sử dụng

### 1. Xem demo
```dart
// Thay đổi home trong main.dart
home: const PrizeStructureDemo(),
```

### 2. Sử dụng section trong trang chính
```dart
// Đã tích hợp sẵn trong home_screen.dart
import 'prize_structure_section.dart';
```

### 3. Truy cập từ menu
- Click "08. Cơ cấu giải thưởng" trong menu chính
- Hoặc từ drawer menu

## Tùy chỉnh

### Thay đổi dữ liệu
Chỉnh sửa các list `prizes` trong `prize_structure_section.dart`.

### Thay đổi màu sắc
```dart
// Màu chính
Color(0xFFFFD700) // Vàng cho Champion
Color(0xFF4CAF50) // Xanh lá cho các giải khác
Color(0xFFB6B65A) // Vàng cho decorative elements
```

### Thay đổi layout
- Desktop: Chỉnh sửa `_buildDesktopLayout()`
- Mobile: Chỉnh sửa `_buildMobileLayout()`

## Lưu ý

1. ✅ Đảm bảo file `khungcocau.png` tồn tại trong `assets/images/`
2. ✅ Kiểm tra `pubspec.yaml` đã include assets
3. ✅ Test trên cả mobile và desktop để đảm bảo responsive
4. ✅ 01 QUÁN QUÂN có màu vàng đặc biệt để nổi bật
5. ✅ Tất cả 4 loại giải thưởng hiển thị trong cùng một màn hình
6. ✅ Tổng giá trị được tính toán chính xác: 234.505.000 VNĐ 