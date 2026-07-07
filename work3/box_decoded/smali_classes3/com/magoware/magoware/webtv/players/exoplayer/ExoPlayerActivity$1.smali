.class Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "ExoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$000(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)Lcom/magoware/magoware/webtv/util/AdMobUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/AdMobUtil;->getmInterstitialAd()Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 240
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$100(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    :cond_0
    return-void
.end method
