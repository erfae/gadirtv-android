.class public Lcom/magoware/magoware/webtv/vod/mobile/activities/BuyMovieWebView;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BuyMovieWebView.java"


# instance fields
.field private movieId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/BuyMovieWebView;->movieId:I

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 40
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    invoke-virtual {p0, v1, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/BuyMovieWebView;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/BuyMovieWebView;->setResult(I)V

    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/BuyMovieWebView;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 21
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0027

    .line 22
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/BuyMovieWebView;->setContentView(I)V

    const p1, 0x7f0b06ff

    .line 24
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/BuyMovieWebView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    .line 27
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/BuyMovieWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "payment_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/BuyMovieWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/BuyMovieWebView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "movie_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/BuyMovieWebView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/BuyMovieWebView;->movieId:I

    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    .line 34
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 35
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->get()Lcom/magoware/magoware/webtv/util/NetworkUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->getWebViewHeader()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
