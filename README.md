# PHP Session Hijacking Education

![Proje Banner](https://www.imagevisit.com/images/2024/08/28/Adsiz-tasarim-1.png)

Bu proje, **PHP** ile geliştirilmiş kullanıcı giriş sistemi ve **Session Hijacking** güvenlik açığını anlamaya yönelik bir demo uygulamasıdır. Uygulama, web güvenliği konusunda eğitim amaçlı kullanımı hedeflemektedir.

## 📜 İçindekiler
- [Proje Hakkında](#proje-hakkında)
- [Kurulum](#kurulum)
- [Kullanım](#kullanım)
- [Demo Videosu](#demo-videosu)
- [Katkıda Bulunanlar](#katkıda-bulunanlar)
- [Lisans](#lisans)

## 📖 Proje Hakkında

Bu proje, PHP tabanlı bir oturum yönetim sistemini ve bu sistem üzerinde oluşabilecek **Session Hijacking** adlı güvenlik açığını gösterir. `Session Hijacking`, bir saldırganın geçerli oturum ID'sini ele geçirerek, oturumu ele geçirmesi anlamına gelir. Bu demoda, bu tür bir saldırıya karşı alınabilecek önlemleri anlamanızı sağlamayı amaçladım.

Proje, kullanıcıların giriş yapabileceği, kişisel bilgilerini görebileceği bir **Dashboard** sayfası içerir. Bu sayede, oturum yönetimi ve oturum ele geçirme saldırıları hakkında daha derin bir anlayış kazanabilirsiniz.

## ⚙️ Kurulum

Bu projeyi yerel ortamınızda çalıştırmak için aşağıdaki adımları izleyin:

1. **Bu depoyu klonlayın:**

    ```bash
    git clone https://github.com/kullaniciadi/PHP-Session-Hijacking-Demo.git
    ```

2. **Veritabanını oluşturun ve yapılandırın:**

    - Depo içerisindeki `siber_guvenlik.sql` veritabanı dosyasını mysql'e import edin.

3. **Veritabanı bağlantı ayarlarını yapın:**

    - `conn.php` dosyasındaki veritabanı bağlantı bilgilerini kendi ortamınıza göre düzenleyin.

4. **Projeyi çalıştırın:**

    - PHP sunucunuzu başlatın ve projeyi tarayıcınızda açın.

## 🚀 Kullanım

- **Giriş Yap:** Uygulamaya giriş yaparak kendi verilerinizi görebilirsiniz.
- **Dashboard:** Giriş yaptıktan sonra kullanıcı bilgilerinizi görüntüleyebilir ve oturumunuzu yönetebilirsiniz.
- **Güvenlik Açığı Deneyi:** Farklı oturumlarda oturum ID'sini manipüle ederek, session hijacking açığını deneyimleyebilirsiniz.

## 🎥 Demo Videosu

Bu proje hakkında daha fazla bilgi almak ve nasıl çalıştığını görmek için hazırladığım demo videosunu izleyebilirsiniz:

[![Session Hijacking Demo](https://www.imagevisit.com/images/2024/08/28/MR-ROBOT-1.png)](https://youtu.be/yBi4q-8B-nQ)

## 📝 Lisans

Bu proje MIT Lisansı altında lisanslanmıştır - daha fazla bilgi için `LICENSE` dosyasına göz atabilirsiniz.
