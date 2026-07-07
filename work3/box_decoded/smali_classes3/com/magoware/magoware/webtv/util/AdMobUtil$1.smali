.class Lcom/magoware/magoware/webtv/util/AdMobUtil$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdMobUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/util/AdMobUtil;->setupAdMob(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/util/AdMobUtil;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/util/AdMobUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/magoware/magoware/webtv/util/AdMobUtil$1;->this$0:Lcom/magoware/magoware/webtv/util/AdMobUtil;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/magoware/magoware/webtv/util/AdMobUtil$1;->this$0:Lcom/magoware/magoware/webtv/util/AdMobUtil;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/AdMobUtil;->access$000(Lcom/magoware/magoware/webtv/util/AdMobUtil;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method
