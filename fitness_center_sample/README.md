# Fitness Center Uygulaması

Bu Flutter projesi, fitness tutkunları için tasarlanmış bir fitness merkezi uygulamasını içermektedir. Uygulama, kullanıcılara antrenman programları oluşturma, egzersiz takibi yapma, beslenme planlarına erişim ve fitness hedeflerini izleme imkanı sunmaktadır.

## Proje Adı: Fitness Center Sample

### İçerik

**Dizin Yapısı**

- `lib/`: Uygulama kodlarını, assetleri ve araçları içerir.
- `lib/Ekler/`: Uygulama içinde kullanılan görselleri ve diğer varlıkları içerir.

**Uygulama İçeriği**

- `lib/Ekranlar/`: Uygulamanın ana ekranları ve sayfalarını içerir.
- `lib/Bilesenler/`: Uygulama veri modellerini, yardımcı fonksiyonları ve araçları içerir.

### Bağımlılıklar

Uygulama, çeşitli paketleri kullanmaktadır. Bunlar arasında:

- `dio`: HTTP istekleri için.
- `flutter_svg`: SVG ikonlar için.
- `url_launcher`: URL yönlendirmeleri için.
- `secure_storage`: Kullanıcı adını kaydetmek için.

### Kurulum

1. Projeyi yerel makinanıza klonlayın.
2. Gerekli bağımlılıkları yüklemek için terminalde `flutter pub get` komutunu çalıştırın.
3. Uygulamayı başlatmak için `flutter run` komutunu kullanın.

### Özellikler

- Reqres API'si kullanılarak örnek eğitmenler oluşturuldu (Eğitmenler sayfası).
- Secure Storage kullanılarak kullanıcı bilgileri kaydedildi ve gösterildi (Tab Bar ve Profil sayfası).
- URL Launcher kullanılarak gerekli yönlendirmeler yapıldı (Çalışmalarım sayfası).

### Kullanım

- Uygulama, kullanıcıların bir fitness planı oluşturmalarına olanak tanır.
- Kullanıcılar, günlük antrenmanlarını ve tüketilen kalorilerini kaydedebilirler.
- Beslenme planlarına göz atabilir ve hedeflerine ulaşmak için öneriler alabilirler.

### İletişim

Fırat Meriç Bektaş - 0533 133 3121

Proje ile ilgili sorularınız veya geri bildirimleriniz için lütfen bir issue oluşturun.

### Geliştiriciler

- Fırat Meriç Bektaş - 222016716
- Rıdvan Emir Atalay - 222016730

Bu README dosyası, projenin temel yapısı ve içeriği hakkında genel bir bilgi sağlamaktadır.