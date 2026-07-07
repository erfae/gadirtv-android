.class public Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;
.super Lcom/magoware/magoware/webtv/CustomActivity;
.source "MainActivity2SmartTv.java"


# static fields
.field public static force_local:Z

.field public static force_remote:Z


# instance fields
.field private fcmBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private usernameAndVersion:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/CustomActivity;-><init>()V

    .line 254
    new-instance v0, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv$3;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv$3;-><init>(Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->fcmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initViewYesNet()V
    .locals 4

    const v0, 0x7f0b03bf

    .line 139
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 140
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LOGO_URL:Ljava/lang/String;

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->DEFAULT_URL_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    new-instance v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const v3, 0x7f0802eb

    .line 143
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    .line 144
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    .line 146
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    .line 147
    invoke-virtual {v3, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 148
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 149
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    const v0, 0x7f0b0700

    .line 151
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const/4 v1, 0x0

    .line 152
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 153
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 154
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 155
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 156
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 157
    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv$1;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv$1;-><init>(Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;Landroid/webkit/WebView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 170
    new-instance v1, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv$2;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv$2;-><init>(Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private setMdu1Logo()V
    .locals 5

    const v0, 0x7f0b03bd

    .line 265
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0802e1

    .line 267
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LOGO_URL:Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v2, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 268
    new-instance v3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v3}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 269
    invoke-virtual {v3, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 270
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/request/RequestOptions;

    const/4 v4, 0x1

    .line 271
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/request/RequestOptions;

    .line 272
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    .line 273
    invoke-virtual {v4, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 274
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 275
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const/4 v1, 0x0

    .line 279
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 66
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/CustomActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 70
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 72
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f0e003f

    .line 73
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->setContentView(I)V

    .line 74
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->initViewYesNet()V

    goto :goto_0

    :cond_0
    const p1, 0x7f0e013c

    .line 76
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->setContentView(I)V

    .line 77
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MDU1:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const p1, 0x7f0b04d4

    .line 78
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 80
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 81
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 82
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 83
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 84
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 85
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f0b062a

    .line 86
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    const p1, 0x7f0b06ba

    .line 89
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->usernameAndVersion:Landroid/widget/TextView;

    .line 91
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 92
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->usernameAndVersion:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->usernameAndVersion:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, " -B-"

    goto :goto_1

    :cond_3
    const-string p1, " -S-"

    .line 101
    :goto_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->usernameAndVersion:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f140464

    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f140477

    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/magoware/magoware/webtv/global/Global;->package_info:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_4
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MDU1:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 105
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->setMdu1Logo()V

    :cond_5
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->NPLAY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    const/high16 v1, 0x10000000

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0x8b

    if-ne p1, v0, :cond_0

    .line 194
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 195
    const-class p2, Lcom/magoware/magoware/webtv/deviceApps/AppsActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_0
    const/16 v0, 0xd2

    if-ne p1, v0, :cond_6

    .line 202
    :try_start_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "com.google.android.youtube.tv"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x7f140074

    .line 204
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v2

    .line 209
    :cond_1
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x8c

    if-ne p1, v0, :cond_4

    .line 218
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 219
    const-class p2, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 220
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    sget-object p2, Lcom/magoware/magoware/webtv/util/Utils;->LIVE_TV:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_4
    const/16 v0, 0x89

    if-ne p1, v0, :cond_5

    .line 236
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 237
    const-class p2, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 239
    sget-object p2, Lcom/magoware/magoware/webtv/util/Utils;->CATCHUP_TV:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_5
    const/16 v0, 0x88

    if-ne p1, v0, :cond_6

    .line 244
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 245
    const-class p2, Lcom/magoware/magoware/webtv/deviceApps/AppsActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 247
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 251
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/magoware/magoware/webtv/CustomActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 129
    invoke-super {p0}, Lcom/magoware/magoware/webtv/CustomActivity;->onPause()V

    .line 130
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->getInstance()Lcom/magoware/magoware/webtv/util/TopicSubscriber;

    move-result-object v0

    const-string v1, "main_menu"

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->unsubscribeFrom(Ljava/lang/String;)V

    .line 132
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->fcmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 111
    invoke-super {p0}, Lcom/magoware/magoware/webtv/CustomActivity;->onResume()V

    .line 112
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->getInstance()Lcom/magoware/magoware/webtv/util/TopicSubscriber;

    move-result-object v0

    const-string v1, "main_menu"

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->subscribeTo(Ljava/lang/String;)V

    .line 114
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->fcmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "BROADCAST_FCM_NOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 117
    :cond_1
    sget-boolean v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->fromGcminfoactivity:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 118
    sput-boolean v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->fromGcminfoactivity:Z

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    const-class v1, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    sget-object v1, Lcom/magoware/magoware/webtv/util/Utils;->LIVE_TV:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
