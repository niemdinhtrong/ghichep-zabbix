Zabbix được tạo ra bởi Alexei Vladishev và đang được phát triển bởi zabbix SIA. Đây là giải pháp giám sát mã nguồn mở. Có khả năng giám sát hệ các thông số trong hệ thống mạng. Nó có thể cài đặt để gửi các thông báo qua nhiều kênh để đến với người quản trị nhằm khắc phục nhanh nhất các sự cố. 

Zabbix cũng support web-based để ta có thể theo dõi trạng thái của các thiết bị. Điều này tạo điều kiện dễ dàng cho việc giám sát khi bạn ở bất kỳ đâu.

Kiến trúc của Zabbix gồm các thành phần chính sau:

**Server**

Nơi xử lý tất cả các thông tin mà các thiết bị gửi về.

**Database storage**

Tất cả các thông tin từ các thiết bị được thu thập sẽ được lưu trữ trong một database.

**Web interface**

Web interface giúp ta có thể truy cập để theo dõi các thiết bị ở bất kỳ đâu. Nó là một phần của zabbix server.

**Proxy**

Zabbix proxy có nhiệm vụ thu thập và phân tích dữ liệu thay cho zabbix server. Đây là một tùy chọn nên bạn có thể cài nó hoặc không nhưng nó sẽ rất hữu ích với hột hệ thống lớn. Nó sẽ giúp giảm tải cho zabbix server.

**Agent**

Zabbix agent được cài đặt trên các thiết bị mà ta cần giám sát. Nó sẽ có nhiệm vụ thu thập thông tin và gửi nó về zabbix server.

## Một số thuật ngữ

