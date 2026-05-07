Được, đây là lộ trình thực tế trong **8-10 tuần**, cấu trúc 5 phase + capstone. Mỗi phase có project cụ thể để bạn vừa học vừa có "sản phẩm" thật trong portfolio.

---

## 3 nguyên tắc trước khi bắt đầu

1. **Tự gõ từng dòng code.** Dùng AI để giải thích khái niệm, debug khi bí, review code sau khi bạn viết xong - **không** dùng để viết code hộ.
2. **Vẽ class diagram trên giấy trước khi code.** Class nào, attribute gì, method gì, quan hệ ra sao. Việc này tách "tư duy thiết kế" khỏi "gõ syntax" - quan trọng hơn nhiều người nghĩ.
3. **Sau khi project chạy được, refactor lại 1 lần.** Đọc lại code, đặt câu hỏi: chỗ nào lặp lại? Chỗ nào tên biến tệ? Chỗ nào method quá dài? Lần refactor này dạy bạn nhiều hơn lần code đầu.

---

## Phase 1 - Class & Object cơ bản (tuần 1-2)

**Khái niệm cần nắm:** `__init__`, instance attributes, instance methods, `self`, class attributes vs instance attributes, cách tạo và gọi object.

**Project: Hệ thống tài khoản ngân hàng**

Yêu cầu cụ thể:
- Class `BankAccount` với `account_number`, `holder_name`, `balance`
- Method: `deposit(amount)`, `withdraw(amount)`, `get_balance()`, `transfer(other_account, amount)`
- Validate: không cho rút quá số dư, không cho deposit số âm
- Lưu lịch sử giao dịch trong list, có method `print_history()`
- Class attribute đếm tổng số tài khoản đã tạo

**Khi nào coi là "xong":** Bạn tạo được 3 tài khoản, chuyển tiền qua lại, in lịch sử, và giải thích được tại sao `self` cần thiết mà không cần Google.

---

## Phase 2 - Encapsulation & Properties (tuần 3)

**Khái niệm cần nắm:** Convention `_attribute` (protected) vs `__attribute` (name mangling - **tránh dùng** trừ khi thật cần thiết, đây cũng là bug bạn từng gặp với grader trước đây), `@property`, `@setter`, validation trong setter.

**Project: Mở rộng BankAccount + thêm class Customer**

Yêu cầu cụ thể:
- Class `Customer` với `name`, `age`, `phone`, `email`
- Dùng `@property` cho các field cần validate (age phải > 0, email phải có `@`, phone đủ số)
- BankAccount có thuộc tính `_balance` (protected), expose qua `@property balance` read-only
- Thêm `interest_rate`, computed property `display_balance` trả về string định dạng `"1,000,000 VND"`

**Bẫy hay gặp:** dùng `__balance` (double underscore) sẽ gây name mangling - rất khó debug và sai convention. Dùng `_balance` (single).

---

## Phase 3 - Inheritance (tuần 4-5)

**Khái niệm cần nắm:** Single inheritance, `super().__init__()`, method overriding, `isinstance()`, `issubclass()`, MRO cơ bản, khi nào nên kế thừa và khi nào không.

**Project: Hệ thống quản lý thư viện**

Yêu cầu cụ thể:
- Base class `LibraryItem` với `title`, `id`, `is_available`, `borrow()`, `return_item()`
- Kế thừa: `Book` (có `author`, `pages`), `DVD` (có `duration`, `director`), `Magazine` (có `issue_number`)
- Mỗi loại có thời gian mượn khác nhau: Book 14 ngày, DVD 3 ngày, Magazine 7 ngày → override method `get_loan_period()`
- Base class `User` → `Student`, `Staff`. Student mượn tối đa 3 item, Staff 10 item
- Class `Library` quản lý collection items + users + transactions

**Câu hỏi tự kiểm tra sau khi xong:** Tại sao Magazine không nên kế thừa từ Book dù chúng có vẻ giống nhau? (Gợi ý: nguyên tắc Liskov)

---

## Phase 4 - Polymorphism & Abstract Classes (tuần 6)

**Khái niệm cần nắm:** Module `abc`, `ABC`, `@abstractmethod`, duck typing, polymorphism qua interface chung.

**Project: Game RPG text-based**

Yêu cầu cụ thể:
- Abstract class `Character` với abstract method `attack()`, `special_skill()`. Concrete method `take_damage()`, `is_alive()`
- Concrete classes: `Warrior` (đánh mạnh, máu trâu), `Mage` (skill tốn mana, sát thương phép), `Archer` (đánh xa, có % crit)
- Class `Battle` nhận 2 Character bất kỳ, chạy turn-based combat → đây là chỗ polymorphism phát huy: `Battle` không cần biết loại nào, chỉ cần gọi `.attack()`
- Bonus: thêm `Item`, `Potion`, `Weapon` với polymorphism tương tự

**Test thật:** Bạn thêm 1 class mới `Necromancer` mà không sửa code class `Battle` - nếu được thì bạn đã hiểu polymorphism.

---

## Phase 5 - Composition + Magic Methods (tuần 7-8)

**Khái niệm cần nắm:** Composition vs inheritance ("has-a" vs "is-a"), khi nào dùng cái nào, `__str__`, `__repr__`, `__eq__`, `__lt__`, `__add__`, `__len__`, `__iter__`, `__getitem__`.

**Project: Card game - Tiến Lên Miền Nam (luật rút gọn)**

Yêu cầu cụ thể:
- Class `Card` với `rank`, `suit`. Implement `__lt__`, `__eq__`, `__str__` để so sánh và in được
- Class `Deck` chứa 52 Card. Implement `__iter__`, `__len__`, `shuffle()`, `draw()`
- Class `Hand` chứa cards của 1 người chơi, biết sort, biết check các combo (đôi, sám, sảnh)
- Class `Player` **chứa** một `Hand` (composition - không phải kế thừa)
- Class `Game` quản lý 4 player, lượt chơi, luật so bài

**Đây là project khó nhất chuỗi này** - sẽ đụng nhiều quyết định thiết kế thật. Đừng ngại vứt code đi viết lại lần 2.

---

## Capstone (tuần 9-10) - Tổng hợp tất cả

Chọn 1 trong 2:

**Option A: Hệ thống POS quán café** - menu, đơn hàng, thanh toán, báo cáo doanh thu. Có lưu/đọc file JSON.

**Option B: Inventory management cho cửa hàng** - sản phẩm, kho, nhập xuất, cảnh báo hết hàng, tìm kiếm. Có lưu CSV.

Yêu cầu chung: dùng inheritance + composition + abstract + magic methods + properties + persistence (file). Có CLI menu cho user tương tác.

---

## Một số gợi ý thực tế

**Đồng bộ với COMP 1005:** Course này của bạn đang dạy đúng những thứ trên. Lần tới làm assignment, hãy **tự viết** trước khi nhờ AI. Lúc đầu sẽ chậm và sai nhiều - đó là dấu hiệu bạn đang học thật. Một bài tập làm 4 tiếng tự lực có giá hơn 10 bài bạn copy từ AI.

**Lịch học gợi ý:** 1-2 tiếng/ngày, 5-6 ngày/tuần. Đừng dồn cuối tuần. OOP cần "ngấm" qua thời gian, không phải nạp kiến thức rồi quên.

**Dấu hiệu đã hiểu thật sự:** Bạn giải thích được khái niệm cho người khác (em họ, bạn cùng lớp) bằng tiếng Việt thuần, không cần dùng từ tiếng Anh. Nếu chưa làm được thì bạn chưa hiểu kỹ.

**Khi bí:** Hỏi AI 3 câu này theo thứ tự - "Lỗi này nghĩa là gì?" → "Tại sao cách tôi làm sai?" → "Có cách viết tốt hơn không, và tại sao tốt hơn?". Đừng hỏi "viết hộ tôi".

---

Bạn có muốn tôi đi sâu vào project nào trước không? Ví dụ Phase 1 - tôi có thể cho bạn class diagram mẫu của BankAccount để bạn tham khảo cách thiết kế trước khi code (chứ không phải code mẫu).