Nếu không muốn cài agent trên máy host bạn có thể dùng SSH để lấy thông số từ host. Bằng cách này các script sẽ được chạy trên các host và các dữ liệu trả về sẽ được gửi về zabbix server để có thể monitor host đó

**Cấu hình**

Để cài đặt bạn tạo một item trên host cần monitor. Ở đây chọn kiểu item là `SSH agent`

![](/images/item-ssh/1.png)

Trong đó:
 * Authencation method: Có 2 kiểu xác thực SSH đó là sử dụng password hoặc sử dụng key.
 * User name: tên user của host cho phép ssh vào để thực hiện câu lệnh.
 * Executed script: câu lệnh để lấy thông tin

Ở ví dụ trên tôi xác thực bằng password. Để an toàn hơn bạn có thể sử dụng key để xác thực. Nếu dùng key bạn cần điền file `public key` và `private key`. Nếu bạn để passphrase cho `private key` thì cần điền pass này vào `key passphrase`

![](/images/item-ssh/3.png)

Item được tạo ra

![](/images/item-ssh/4.png)

Vào `Monitoring` -> `Latest data` để thấy các thông tin do item vừa tạo gửi về

![](/images/item-ssh/5.png)

![](/images/item-ssh/6.png)