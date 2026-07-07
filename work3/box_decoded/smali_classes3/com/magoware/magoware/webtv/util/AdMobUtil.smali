.class public Lcom/magoware/magoware/webtv/util/AdMobUtil;
.super Ljava/lang/Object;
.source "AdMobUtil.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private get_ads:I

.field private mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AdMobUtil"

    .line 20
    iput-object v0, p0, Lcom/magoware/magoware/webtv/util/AdMobUtil;->TAG:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/magoware/magoware/webtv/global/Global;->shared_preference:Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->GET_ADS:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/magoware/magoware/webtv/util/AdMobUtil;->get_ads:I

    .line 24
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/util/AdMobUtil;->setupAdMob(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/util/AdMobUtil;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/magoware/magoware/webtv/util/AdMobUtil;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object p0
.end method

.method private setupAdMob(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 29
    iget v0, p0, Lcom/magoware/magoware/webtv/util/AdMobUtil;->get_ads:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MAGOWARE:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/util/AdMobUtil;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    const-string p1, "ca-app-pub-7895691684736135/5073807715"

    .line 35
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/magoware/magoware/webtv/util/AdMobUtil;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 38
    iget-object p1, p0, Lcom/magoware/magoware/webtv/util/AdMobUtil;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v0, Lcom/magoware/magoware/webtv/util/AdMobUtil$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/util/AdMobUtil$1;-><init>(Lcom/magoware/magoware/webtv/util/AdMobUtil;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getmInterstitialAd()Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/magoware/magoware/webtv/util/AdMobUtil;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method public showAd()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/magoware/magoware/webtv/util/AdMobUtil;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/magoware/magoware/webtv/util/AdMobUtil;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    :cond_0
    return-void
.end method
