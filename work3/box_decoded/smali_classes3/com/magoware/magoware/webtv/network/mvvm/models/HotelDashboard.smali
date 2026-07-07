.class public Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;
.super Ljava/lang/Object;
.source "HotelDashboard.java"


# instance fields
.field private city:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weather_city"
    .end annotation
.end field

.field private mBackgroundUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "background_url"
    .end annotation
.end field

.field private mCompanyName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "company_name"
    .end annotation
.end field

.field private mContactInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contact_info"
    .end annotation
.end field

.field private mContactPhone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contact_phone"
    .end annotation
.end field

.field private mCustomerName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customer_fullname"
    .end annotation
.end field

.field private mLogoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logo_url"
    .end annotation
.end field

.field private mVideoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_url"
    .end annotation
.end field

.field private mWeatherUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weather_widget_url"
    .end annotation
.end field

.field private mWelcomeMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "welcome_message"
    .end annotation
.end field

.field private mWifiPassword:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wifi_password"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getmBackgroundUrl()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;->mBackgroundUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmCompanyName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;->mCompanyName:Ljava/lang/String;

    return-object v0
.end method

.method public getmContactInfo()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;->mContactInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getmContactPhone()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;->mContactPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getmCustomerName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;->mCustomerName:Ljava/lang/String;

    return-object v0
.end method

.method public getmLogoUrl()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;->mLogoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmVideoUrl()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;->mVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmWeatherUrl()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;->mWeatherUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmWelcomeMessage()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;->mWelcomeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getmWifiPassword()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;->mWifiPassword:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method
