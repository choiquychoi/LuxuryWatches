## LuxuryWatch
LuxuryWatch là một trang web bán hàng trực tuyến chuyên cung cấp các sản phẩm đồng hồ cao cấp và các phụ kiện thời trang như vòng cổ, vòng tay, và các mặt hàng liên quan. Website được phát triển bằng ASP.NET Core MVC 7.0.

## Để chạy dự án

hãy sử dụng chương trình visual studio 2022

Clone dự án bằng git trong máy bạn

```bash
git clone https://github.com/choiquychoi/LuxuryWatches.git
```

## tạo database

hãy đảm bảo rằng máy bạn có SQL server sau đó hãy mở SQL và copy code query có trong file db_luxuryWeb.sql để trong thư mực dự án
và Query vào database của bạn

## Thay đổi code 

hãy kết nói database name của bạn vào visual studio 2022

sau đó, hãy thay đổi connection string trong file appsetting.json theo database của bạn

ngoài ra hãy thay đổi luôn connection string trong Models\LuxuryWebContext.cs 

## then run project
