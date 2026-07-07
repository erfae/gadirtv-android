.class final Lcom/google/android/gms/internal/ads/zzbel;
.super Landroid/webkit/WebView;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/ads/zzbdv;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private maxHeight:I

.field private maxWidth:I

.field private zzacv:Ljava/lang/String;

.field private final zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

.field private final zzbqu:Landroid/view/WindowManager;

.field private zzbvg:I

.field private zzdpl:I

.field private zzdpm:I

.field private zzdro:Z

.field private zzdtb:Ljava/lang/String;

.field private zzeat:Ljava/lang/Boolean;

.field private zzelc:Lcom/google/android/gms/internal/ads/zzabq;

.field private final zzeph:Lcom/google/android/gms/internal/ads/zzts;

.field private final zzera:Lcom/google/android/gms/internal/ads/zzbfk;

.field private final zzerb:Lcom/google/android/gms/internal/ads/zzef;

.field private final zzerc:Lcom/google/android/gms/internal/ads/zzacg;

.field private final zzerd:Lcom/google/android/gms/ads/internal/zzk;

.field private final zzere:Lcom/google/android/gms/ads/internal/zzb;

.field private final zzerf:F

.field private final zzerg:Lcom/google/android/gms/internal/ads/zzsu;

.field private final zzerh:Z

.field private zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

.field private zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

.field private zzerk:Z

.field private zzerl:Z

.field private zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

.field private zzern:Lcom/google/android/gms/ads/internal/overlay/zze;

.field private zzero:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

.field private zzerq:Z

.field private zzerr:Z

.field private zzers:Z

.field private zzert:I

.field private zzeru:Z

.field private zzerv:Z

.field private zzerw:Lcom/google/android/gms/internal/ads/zzbep;

.field private zzerx:Z

.field private zzery:Z

.field private zzerz:Lcom/google/android/gms/internal/ads/zzadx;

.field private zzesa:Lcom/google/android/gms/internal/ads/zzads;

.field private zzesb:Lcom/google/android/gms/internal/ads/zzsc;

.field private zzesc:I

.field private zzesd:I

.field private zzese:Lcom/google/android/gms/internal/ads/zzabq;

.field private zzesf:Lcom/google/android/gms/internal/ads/zzabq;

.field private zzesg:Lcom/google/android/gms/internal/ads/zzabt;

.field private zzesh:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzesi:Lcom/google/android/gms/ads/internal/overlay/zze;

.field private zzesj:Z

.field private zzesk:Lcom/google/android/gms/ads/internal/util/zzbz;

.field private zzesl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbcx;",
            ">;"
        }
    .end annotation
.end field

.field private final zzxl:Landroid/util/DisplayMetrics;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbfk;Lcom/google/android/gms/internal/ads/zzbfn;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzacg;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzsu;ZLcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdmz;)V
    .locals 8

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p8

    .line 3
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 4
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzerk:Z

    .line 5
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzerl:Z

    const/4 v5, 0x1

    .line 6
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzeru:Z

    .line 7
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzerv:Z

    const-string v0, ""

    .line 8
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzdtb:Ljava/lang/String;

    const/4 v0, -0x1

    .line 9
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzdpm:I

    .line 10
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzdpl:I

    .line 11
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->maxWidth:I

    .line 12
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->maxHeight:I

    .line 13
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzera:Lcom/google/android/gms/internal/ads/zzbfk;

    move-object v6, p2

    .line 14
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    move-object v6, p3

    .line 15
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzacv:Ljava/lang/String;

    move v6, p4

    .line 16
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzerr:Z

    .line 17
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzert:I

    move-object v0, p6

    .line 18
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzerb:Lcom/google/android/gms/internal/ads/zzef;

    move-object v0, p7

    .line 19
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzerc:Lcom/google/android/gms/internal/ads/zzacg;

    .line 20
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

    move-object/from16 v0, p10

    .line 21
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzerd:Lcom/google/android/gms/ads/internal/zzk;

    move-object/from16 v0, p11

    .line 22
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzere:Lcom/google/android/gms/ads/internal/zzb;

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "window"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzbqu:Landroid/view/WindowManager;

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzm;->zza(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzxl:Landroid/util/DisplayMetrics;

    .line 25
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzerf:F

    move-object/from16 v0, p12

    .line 26
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzeph:Lcom/google/android/gms/internal/ads/zzts;

    move-object/from16 v0, p13

    .line 27
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzerg:Lcom/google/android/gms/internal/ads/zzsu;

    move/from16 v0, p14

    .line 28
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzerh:Z

    move-object/from16 v0, p15

    .line 29
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

    move-object/from16 v0, p16

    .line 30
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    .line 31
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzbel;->setBackgroundColor(I)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    .line 33
    invoke-virtual {v6, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 34
    :try_start_0
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    const-string v0, "Unable to enable Javascript."

    .line 37
    invoke-static {v0, v7}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    :goto_0
    invoke-virtual {v6, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 39
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 40
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_0

    const/4 v0, 0x2

    .line 42
    invoke-virtual {v6, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 43
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    move-result-object v0

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzazh;->zzbrf:Ljava/lang/String;

    invoke-virtual {v0, p1, v3, v6}, Lcom/google/android/gms/ads/internal/util/zzm;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    .line 44
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/ads/internal/util/zzu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/ads/internal/util/zzu;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    .line 45
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ads/zzbel;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzado()V

    .line 47
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbet;->zzc(Lcom/google/android/gms/internal/ads/zzbdv;)Lcom/google/android/gms/internal/ads/zzbet;

    move-result-object v0

    const-string v3, "googleAdsJsInterface"

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzbel;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const-string v0, "accessibility"

    .line 49
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbel;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    .line 50
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbel;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzbz;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzera:Lcom/google/android/gms/internal/ads/zzbfk;

    .line 52
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbfk;->zzaaj()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, p0, p0, v4}, Lcom/google/android/gms/ads/internal/util/zzbz;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzesk:Lcom/google/android/gms/ads/internal/util/zzbz;

    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzads()V

    .line 55
    new-instance v0, Lcom/google/android/gms/internal/ads/zzabt;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzabs;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzacv:Ljava/lang/String;

    const-string v7, "make_wv"

    invoke-direct {v3, v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzabs;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzabt;-><init>(Lcom/google/android/gms/internal/ads/zzabs;)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    move-object/from16 v3, p9

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzabs;->zzc(Lcom/google/android/gms/internal/ads/zzabs;)V

    .line 57
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcqn:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 58
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmz;->zzbvf:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdmz;->zzbvf:Ljava/lang/String;

    const-string v5, "gqi"

    .line 62
    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/internal/ads/zzabs;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabn;->zzb(Lcom/google/android/gms/internal/ads/zzabs;)Lcom/google/android/gms/internal/ads/zzabq;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzelc:Lcom/google/android/gms/internal/ads/zzabq;

    .line 64
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    const-string v5, "native:view_create"

    invoke-virtual {v3, v5, v0}, Lcom/google/android/gms/internal/ads/zzabt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabq;)V

    .line 65
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzesf:Lcom/google/android/gms/internal/ads/zzabq;

    .line 66
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzbel;->zzese:Lcom/google/android/gms/internal/ads/zzabq;

    .line 67
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/ads/internal/util/zzu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzu;->zzbg(Landroid/content/Context;)V

    .line 68
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzku()Lcom/google/android/gms/internal/ads/zzayg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayg;->zzww()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbel;)I
    .locals 0

    .line 697
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesd:I

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbel;I)I
    .locals 0

    .line 698
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesd:I

    return p1
.end method

.method private final zza(Ljava/lang/Boolean;)V
    .locals 1

    .line 175
    monitor-enter p0

    .line 176
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzeat:Ljava/lang/Boolean;

    .line 177
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzku()Lcom/google/android/gms/internal/ads/zzayg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzayg;->zza(Ljava/lang/Boolean;)V

    return-void

    :catchall_0
    move-exception p1

    .line 177
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zza(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbel;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 154
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static final synthetic zza(ZILcom/google/android/gms/internal/ads/zzue$zzi$zza;)V
    .locals 2

    .line 690
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzue$zzae;->zzpj()Lcom/google/android/gms/internal/ads/zzue$zzae$zza;

    move-result-object v0

    .line 691
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzue$zzae$zza;->zzpi()Z

    move-result v1

    if-eq v1, p0, :cond_0

    .line 692
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzue$zzae$zza;->zzw(Z)Lcom/google/android/gms/internal/ads/zzue$zzae$zza;

    .line 694
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzue$zzae$zza;->zzcu(I)Lcom/google/android/gms/internal/ads/zzue$zzae$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzekh$zza;->zzbhv()Lcom/google/android/gms/internal/ads/zzels;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzekh;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzue$zzae;

    .line 695
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzue$zzi$zza;->zzb(Lcom/google/android/gms/internal/ads/zzue$zzae;)Lcom/google/android/gms/internal/ads/zzue$zzi$zza;

    return-void
.end method

.method private final zzadl()Z
    .locals 10

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    .line 79
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdu;->zzaby()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    .line 81
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdu;->zzabz()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 83
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqa()Lcom/google/android/gms/internal/ads/zzayr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzxl:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzayr;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v4

    .line 84
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqa()Lcom/google/android/gms/internal/ads/zzayr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzxl:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzayr;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v5

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzera:Lcom/google/android/gms/internal/ads/zzbfk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfk;->zzaaj()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzm;->zzf(Landroid/app/Activity;)[I

    move-result-object v0

    .line 92
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqa()Lcom/google/android/gms/internal/ads/zzayr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzxl:Landroid/util/DisplayMetrics;

    aget v6, v0, v1

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzayr;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v3

    .line 93
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqa()Lcom/google/android/gms/internal/ads/zzayr;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzxl:Landroid/util/DisplayMetrics;

    aget v0, v0, v2

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    move v7, v0

    move v6, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v4

    move v7, v5

    .line 94
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzdpl:I

    if-ne v0, v4, :cond_3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzdpm:I

    if-ne v3, v5, :cond_3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbel;->maxWidth:I

    if-ne v3, v6, :cond_3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbel;->maxHeight:I

    if-ne v3, v7, :cond_3

    return v1

    :cond_3
    if-ne v0, v4, :cond_4

    .line 96
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzdpm:I

    if-eq v0, v5, :cond_5

    :cond_4
    const/4 v1, 0x1

    .line 97
    :cond_5
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzdpl:I

    .line 98
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzdpm:I

    .line 99
    iput v6, p0, Lcom/google/android/gms/internal/ads/zzbel;->maxWidth:I

    .line 100
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzbel;->maxHeight:I

    .line 101
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaqu;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzaqu;-><init>(Lcom/google/android/gms/internal/ads/zzbdv;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzxl:Landroid/util/DisplayMetrics;

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzbqu:Landroid/view/WindowManager;

    .line 102
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 103
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzaqu;->zza(IIIIFI)V

    return v1
.end method

.method private final declared-synchronized zzadm()V
    .locals 2

    monitor-enter p0

    .line 166
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzku()Lcom/google/android/gms/internal/ads/zzayg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayg;->zzwu()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzeat:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "(function(){})()"

    const/4 v1, 0x0

    .line 169
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbel;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x1

    .line 170
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbel;->zza(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    :catch_0
    const/4 v0, 0x0

    .line 173
    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbel;->zza(Ljava/lang/Boolean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzadn()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    .line 220
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzelc:Lcom/google/android/gms/internal/ads/zzabq;

    const-string v2, "aeh2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabn;->zza(Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzabq;[Ljava/lang/String;)Z

    return-void
.end method

.method private final declared-synchronized zzado()V
    .locals 2

    monitor-enter p0

    .line 462
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerr:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 465
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    const-string v0, "Disabling hardware acceleration on an AdView."

    .line 466
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    .line 467
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzadp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "Enabling hardware acceleration on an AdView."

    .line 468
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    .line 469
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzadq()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_2
    const-string v0, "Enabling hardware acceleration on an overlay."

    .line 463
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    .line 464
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzadq()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzadp()V
    .locals 2

    monitor-enter p0

    .line 471
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzers:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 472
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/ads/internal/util/zzu;

    const/4 v0, 0x0

    .line 473
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 474
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzers:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzadq()V
    .locals 2

    monitor-enter p0

    .line 476
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzers:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 477
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/ads/internal/util/zzu;

    const/4 v0, 0x0

    .line 478
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 479
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzers:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzadr()V
    .locals 2

    monitor-enter p0

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesl:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 567
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbcx;

    .line 568
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbcx;->release()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 570
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesl:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzads()V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    if-nez v0, :cond_0

    return-void

    .line 616
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 617
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzku()Lcom/google/android/gms/internal/ads/zzayg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayg;->zzwt()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 618
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzku()Lcom/google/android/gms/internal/ads/zzayg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayg;->zzwt()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabi;->zza(Lcom/google/android/gms/internal/ads/zzabs;)Z

    :cond_1
    return-void
.end method

.method static zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbfn;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzacg;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzsu;ZLcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdmz;)Lcom/google/android/gms/internal/ads/zzbel;
    .locals 18

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfk;

    move-object v1, v0

    move-object/from16 p1, v1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfk;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v17, Lcom/google/android/gms/internal/ads/zzbel;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v16}, Lcom/google/android/gms/internal/ads/zzbel;-><init>(Lcom/google/android/gms/internal/ads/zzbfk;Lcom/google/android/gms/internal/ads/zzbfn;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzacg;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzsu;ZLcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdmz;)V

    return-object v17
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbel;)V
    .locals 0

    .line 699
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private final zzbc(Z)V
    .locals 2

    .line 645
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "isVisible"

    .line 646
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    .line 647
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbel;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final declared-synchronized zzfn(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbel;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 121
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzfo(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 132
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 135
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzku()Lcom/google/android/gms/internal/ads/zzayg;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrlUnsafe"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzayg;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    .line 136
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private final zzfp(Ljava/lang/String;)V
    .locals 2

    .line 156
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v0

    const-string v1, "javascript:"

    if-eqz v0, :cond_3

    .line 157
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzwu()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzadm()V

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzwu()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbel;->zza(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 161
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbel;->zzfn(Ljava/lang/String;)V

    return-void

    .line 162
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbel;->zzfn(Ljava/lang/String;)V

    return-void
.end method

.method private final declared-synchronized zzwu()Ljava/lang/Boolean;
    .locals 1

    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzeat:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzwx()V
    .locals 1

    monitor-enter p0

    .line 513
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesj:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 514
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesj:Z

    .line 515
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzku()Lcom/google/android/gms/internal/ads/zzayg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayg;->zzwx()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    .line 481
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzads()V

    .line 482
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesk:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzza()V

    .line 483
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzern:Lcom/google/android/gms/ads/internal/overlay/zze;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->close()V

    .line 485
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzern:Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->onDestroy()V

    .line 486
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzern:Lcom/google/android/gms/ads/internal/overlay/zze;

    .line 487
    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzero:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 488
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdu;->reset()V

    .line 489
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerq:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 490
    monitor-exit p0

    return-void

    .line 491
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlm()Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbcu;->zzc(Lcom/google/android/gms/internal/ads/zzbbe;)Z

    .line 492
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzadr()V

    const/4 v0, 0x1

    .line 493
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerq:Z

    const-string v0, "Initiating WebView self destruct sequence in 3..."

    .line 494
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzee(Ljava/lang/String;)V

    const-string v0, "Loading blank page in WebView, 2..."

    .line 495
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzee(Ljava/lang/String;)V

    const-string v0, "about:blank"

    .line 496
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbel;->zzfo(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 113
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfc(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 115
    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    monitor-exit p0

    return-void

    .line 117
    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 498
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 499
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerq:Z

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdu;->reset()V

    .line 501
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlm()Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbcu;->zzc(Lcom/google/android/gms/internal/ads/zzbbe;)Z

    .line 502
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzadr()V

    .line 503
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzwx()V

    .line 504
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 504
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 507
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 508
    throw v0
.end method

.method public final declared-synchronized getRequestId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzdtb:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 0

    return-object p0
.end method

.method public final declared-synchronized isDestroyed()Z
    .locals 1

    monitor-enter p0

    .line 517
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerq:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 140
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 144
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadUrl(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->isDestroyed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 124
    :try_start_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 127
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzku()Lcom/google/android/gms/internal/ads/zzayg;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrl"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzayg;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    .line 128
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 130
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onAdClicked()V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdu;->onAdClicked()V

    :cond_0
    return-void
.end method

.method protected final declared-synchronized onAttachedToWindow()V
    .locals 4

    monitor-enter p0

    .line 407
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 408
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesk:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->onAttachedToWindow()V

    .line 410
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerx:Z

    .line 412
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    .line 413
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbdu;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 415
    check-cast v1, Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdu;->zzabz()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzery:Z

    if-nez v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    .line 420
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdu;->zzacb()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 422
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    .line 423
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdu;->zzacc()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 424
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzery:Z

    .line 425
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzadl()Z

    const/4 v0, 0x1

    .line 426
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbel;->zzbc(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final onDetachedFromWindow()V
    .locals 3

    .line 428
    monitor-enter p0

    .line 429
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesk:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->onDetachedFromWindow()V

    .line 431
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 432
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzery:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    .line 434
    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbdu;

    if-eqz v2, :cond_1

    .line 436
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdu;->zzabz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    .line 441
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdu;->zzacb()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 443
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    .line 444
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdu;->zzacc()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 445
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzery:Z

    .line 446
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzbel;->zzbc(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 446
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 256
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/google/android/gms/ads/internal/util/zzm;->zza(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 261
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x33

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 518
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 520
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 521
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 524
    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/16 v0, 0x9

    .line 279
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0xa

    .line 280
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    const/4 v2, -0x1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    .line 283
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzbel;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v4, 0x1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 284
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzbel;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    cmpl-float v0, v1, v3

    if-lez v0, :cond_2

    .line 285
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzbel;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    cmpg-float v0, v1, v3

    if-gez v0, :cond_4

    .line 286
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzbel;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 288
    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onGlobalLayout()V
    .locals 2

    .line 383
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzadl()Z

    move-result v0

    .line 384
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzaco()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzvi()V

    :cond_0
    return-void
.end method

.method protected final declared-synchronized onMeasure(II)V
    .locals 7

    monitor-enter p0

    .line 289
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbel;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    .line 292
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerr:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzadz()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_9

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaeb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    .line 298
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaea()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 299
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcsh:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 300
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 301
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    .line 305
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzaah()Lcom/google/android/gms/internal/ads/zzbep;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 307
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbep;->getAspectRatio()F

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    cmpl-float v1, v0, v1

    if-nez v1, :cond_5

    .line 309
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    .line 311
    :cond_5
    :try_start_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 312
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v1, p2

    mul-float v1, v1, v0

    float-to-int v1, v1

    int-to-float v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    if-nez p2, :cond_6

    if-eqz v2, :cond_6

    int-to-float p2, v2

    mul-float p2, p2, v0

    float-to-int v1, p2

    move p2, v2

    goto :goto_1

    :cond_6
    if-nez p1, :cond_7

    if-eqz v1, :cond_7

    int-to-float p1, v1

    div-float/2addr p1, v0

    float-to-int v2, p1

    move p1, v1

    .line 321
    :cond_7
    :goto_1
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 322
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbel;->setMeasuredDimension(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    .line 325
    :cond_8
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->isFluid()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 326
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcsk:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 327
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 328
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    const-string v0, "/contentHeight"

    .line 332
    new-instance v1, Lcom/google/android/gms/internal/ads/zzben;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzben;-><init>(Lcom/google/android/gms/internal/ads/zzbel;)V

    .line 333
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbel;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahv;)V

    const-string v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    .line 335
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbel;->zzfp(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzxl:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 337
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 338
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesd:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    int-to-float p2, v1

    mul-float p2, p2, v0

    float-to-int p2, p2

    goto :goto_2

    .line 339
    :cond_a
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 342
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbel;->setMeasuredDimension(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 329
    :cond_b
    :goto_3
    :try_start_6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 330
    monitor-exit p0

    return-void

    .line 344
    :cond_c
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzady()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 345
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzxl:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzxl:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbel;->setMeasuredDimension(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    .line 347
    :cond_d
    :try_start_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 348
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 349
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 350
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    if-eq v0, v4, :cond_f

    if-ne v0, v3, :cond_e

    goto :goto_4

    :cond_e
    const v0, 0x7fffffff

    goto :goto_5

    :cond_f
    :goto_4
    move v0, p1

    :goto_5
    if-eq v2, v4, :cond_10

    if-ne v2, v3, :cond_11

    :cond_10
    move v5, p2

    .line 358
    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbfn;->widthPixels:I

    const/4 v3, 0x1

    if-gt v2, v0, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbfn;->heightPixels:I

    if-le v2, v5, :cond_12

    goto :goto_6

    :cond_12
    const/4 v2, 0x0

    goto :goto_7

    :cond_13
    :goto_6
    const/4 v2, 0x1

    .line 359
    :goto_7
    sget-object v4, Lcom/google/android/gms/internal/ads/zzabf;->zzcvc:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 360
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v4

    .line 361
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 362
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbfn;->widthPixels:I

    int-to-float v4, v4

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerf:F

    div-float/2addr v4, v6

    int-to-float v0, v0

    div-float/2addr v0, v6

    cmpl-float v0, v4, v0

    if-gtz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbfn;->heightPixels:I

    int-to-float v0, v0

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerf:F

    div-float/2addr v0, v4

    int-to-float v5, v5

    div-float/2addr v5, v4

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_8

    :cond_14
    const/4 v0, 0x0

    :goto_8
    if-eqz v2, :cond_15

    move v2, v0

    :cond_15
    const/16 v0, 0x8

    if-eqz v2, :cond_17

    .line 369
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbfn;->widthPixels:I

    int-to-float v2, v2

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerf:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbfn;->heightPixels:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerf:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float p1, p1

    div-float/2addr p1, v5

    float-to-int p1, p1

    int-to-float p2, p2

    div-float/2addr p2, v5

    float-to-int p2, p2

    const/16 v5, 0x67

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Not enough space to show ad. Needs "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dp, but only has "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_16

    const/4 p1, 0x4

    .line 371
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbel;->setVisibility(I)V

    .line 372
    :cond_16
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbel;->setMeasuredDimension(II)V

    .line 373
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerk:Z

    if-nez p1, :cond_1a

    .line 374
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzeph:Lcom/google/android/gms/internal/ads/zzts;

    sget-object p2, Lcom/google/android/gms/internal/ads/zztu$zza$zza;->zzbxn:Lcom/google/android/gms/internal/ads/zztu$zza$zza;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzts;->zza(Lcom/google/android/gms/internal/ads/zztu$zza$zza;)V

    .line 375
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerk:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    .line 376
    :cond_17
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_18

    .line 377
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzbel;->setVisibility(I)V

    .line 378
    :cond_18
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerl:Z

    if-nez p1, :cond_19

    .line 379
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzeph:Lcom/google/android/gms/internal/ads/zzts;

    sget-object p2, Lcom/google/android/gms/internal/ads/zztu$zza$zza;->zzbxo:Lcom/google/android/gms/internal/ads/zztu$zza$zza;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzts;->zza(Lcom/google/android/gms/internal/ads/zztu$zza$zza;)V

    .line 380
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerl:Z

    .line 381
    :cond_19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbfn;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbfn;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbel;->setMeasuredDimension(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 382
    :cond_1a
    monitor-exit p0

    return-void

    .line 293
    :cond_1b
    :goto_9
    :try_start_a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 294
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPause()V
    .locals 2

    .line 530
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 532
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not pause webview."

    .line 535
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 537
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 539
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not resume webview."

    .line 542
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    .line 265
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdu;->zzabz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    .line 267
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdu;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerz:Lcom/google/android/gms/internal/ads/zzadx;

    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzadx;->zzc(Landroid/view/MotionEvent;)V

    .line 271
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerb:Lcom/google/android/gms/internal/ads/zzef;

    if-eqz v0, :cond_2

    .line 273
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzef;->zza(Landroid/view/MotionEvent;)V

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerc:Lcom/google/android/gms/internal/ads/zzacg;

    if-eqz v0, :cond_3

    .line 275
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacg;->zza(Landroid/view/MotionEvent;)V

    .line 276
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    return p1

    .line 278
    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 597
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesh:Ljava/lang/ref/WeakReference;

    .line 598
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final declared-synchronized setRequestedOrientation(I)V
    .locals 1

    monitor-enter p0

    .line 456
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzert:I

    .line 457
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzern:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 71
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbdu;

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    :cond_0
    return-void
.end method

.method public final stopLoading()V
    .locals 2

    .line 548
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 550
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not stop loading webview."

    .line 553
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 663
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzadj()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "AR ad is not enabled or the ad from the server is not an AR ad."

    .line 664
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzee(Ljava/lang/String;)V

    return-void

    .line 666
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 667
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const-string v0, "Initializing ArWebView object."

    .line 668
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzee(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerg:Lcom/google/android/gms/internal/ads/zzsu;

    invoke-interface {v0, p2, p0}, Lcom/google/android/gms/internal/ads/zzsu;->zza(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 670
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerg:Lcom/google/android/gms/internal/ads/zzsu;

    invoke-interface {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzsu;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 672
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerg:Lcom/google/android/gms/internal/ads/zzsu;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzsu;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    const-string p1, "The FrameLayout object cannot be null."

    .line 673
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzb;)V
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdu;->zza(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 0

    monitor-enter p0

    .line 388
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzern:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzads;)V
    .locals 0

    monitor-enter p0

    .line 590
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesa:Lcom/google/android/gms/internal/ads/zzads;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzadx;)V
    .locals 0

    monitor-enter p0

    .line 600
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerz:Lcom/google/android/gms/internal/ads/zzadx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzbep;)V
    .locals 1

    monitor-enter p0

    .line 604
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerw:Lcom/google/android/gms/internal/ads/zzbep;

    if-eqz v0, :cond_0

    const-string p1, "Attempt to create multiple AdWebViewVideoControllers."

    .line 605
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    monitor-exit p0

    return-void

    .line 607
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerw:Lcom/google/android/gms/internal/ads/zzbep;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzbfn;)V
    .locals 0

    monitor-enter p0

    .line 394
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 395
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdmz;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

    .line 685
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzqv;)V
    .locals 1

    .line 640
    monitor-enter p0

    .line 641
    :try_start_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzqv;->zzbqz:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerx:Z

    .line 642
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzqv;->zzbqz:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbel;->zzbc(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 642
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzsc;)V
    .locals 0

    monitor-enter p0

    .line 592
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesb:Lcom/google/android/gms/internal/ads/zzsc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/Predicate<",
            "Lcom/google/android/gms/internal/ads/zzahv<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbdv;",
            ">;>;)V"
        }
    .end annotation

    .line 655
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdu;->zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V

    :cond_0
    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzahv<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbdv;",
            ">;)V"
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdu;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahv;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbcx;)V
    .locals 1

    monitor-enter p0

    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesl:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 573
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesl:Ljava/util/Map;

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesl:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 105
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/util/zzm;->zzj(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbel;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    const-string p1, "Could not convert parameters to JSON."

    .line 108
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p2, :cond_0

    .line 182
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 183
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 185
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbel;->zzfp(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;)V
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbdu;->zza(ZILjava/lang/String;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbdu;->zza(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(ZJ)V
    .locals 2

    .line 241
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "success"

    .line 242
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onCacheAccessComplete"

    .line 244
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbel;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzaag()Lcom/google/android/gms/internal/ads/zzbax;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzaah()Lcom/google/android/gms/internal/ads/zzbep;
    .locals 1

    monitor-enter p0

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerw:Lcom/google/android/gms/internal/ads/zzbep;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzaai()Lcom/google/android/gms/internal/ads/zzabq;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzelc:Lcom/google/android/gms/internal/ads/zzabq;

    return-object v0
.end method

.method public final zzaaj()Landroid/app/Activity;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzera:Lcom/google/android/gms/internal/ads/zzbfk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfk;->zzaaj()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final zzaak()Lcom/google/android/gms/ads/internal/zzb;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzere:Lcom/google/android/gms/ads/internal/zzb;

    return-object v0
.end method

.method public final declared-synchronized zzaal()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmz;->zzbvf:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 582
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzaam()I
    .locals 1

    monitor-enter p0

    .line 585
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzbvg:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzaan()Lcom/google/android/gms/internal/ads/zzabt;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    return-object v0
.end method

.method public final zzaao()Lcom/google/android/gms/internal/ads/zzazh;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

    return-object v0
.end method

.method public final zzaap()I
    .locals 1

    .line 630
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final zzaaq()I
    .locals 1

    .line 631
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized zzaar()V
    .locals 1

    monitor-enter p0

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesa:Lcom/google/android/gms/internal/ads/zzads;

    if-eqz v0, :cond_0

    .line 588
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzads;->zzsq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzabw()Lcom/google/android/gms/internal/ads/zzdmu;
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

    return-object v0
.end method

.method public final zzacl()V
    .locals 3

    .line 201
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzadn()V

    .line 202
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 203
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzazh;->zzbrf:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    .line 204
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbel;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzacm()V
    .locals 3

    .line 233
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 234
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/ads/internal/util/zzad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzad;->zzql()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_muted"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/ads/internal/util/zzad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzad;->zzqk()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzad;->zzbi(Landroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_volume"

    .line 238
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "volume"

    .line 239
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbel;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzacn()Landroid/content/Context;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzera:Lcom/google/android/gms/internal/ads/zzbfk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfk;->zzacn()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzaco()Lcom/google/android/gms/ads/internal/overlay/zze;
    .locals 1

    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzern:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzacp()Lcom/google/android/gms/ads/internal/overlay/zze;
    .locals 1

    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesi:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzacq()Lcom/google/android/gms/internal/ads/zzbfn;
    .locals 1

    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzacr()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzacv:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic zzacs()Lcom/google/android/gms/internal/ads/zzbfg;
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    return-object v0
.end method

.method public final zzact()Landroid/webkit/WebViewClient;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    return-object v0
.end method

.method public final declared-synchronized zzacu()Z
    .locals 1

    monitor-enter p0

    .line 252
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzdro:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzacv()Lcom/google/android/gms/internal/ads/zzef;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerb:Lcom/google/android/gms/internal/ads/zzef;

    return-object v0
.end method

.method public final declared-synchronized zzacw()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    monitor-enter p0

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzero:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzacx()Z
    .locals 1

    monitor-enter p0

    .line 255
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerr:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzacy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Destroying WebView!"

    .line 509
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzee(Ljava/lang/String;)V

    .line 510
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzwx()V

    .line 511
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzm;->zzedd:Lcom/google/android/gms/internal/ads/zzduw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbem;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbem;-><init>(Lcom/google/android/gms/internal/ads/zzbel;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzduw;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzacz()Z
    .locals 1

    monitor-enter p0

    .line 557
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzeru:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzada()Z
    .locals 1

    monitor-enter p0

    .line 609
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzadb()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesk:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzyz()V

    return-void
.end method

.method public final zzadc()V
    .locals 3

    .line 526
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesf:Lcom/google/android/gms/internal/ads/zzabq;

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabn;->zzb(Lcom/google/android/gms/internal/ads/zzabs;)Lcom/google/android/gms/internal/ads/zzabq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesf:Lcom/google/android/gms/internal/ads/zzabq;

    .line 528
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    const-string v2, "native:view_load"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzabt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabq;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized zzadd()Lcom/google/android/gms/internal/ads/zzadx;
    .locals 1

    monitor-enter p0

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerz:Lcom/google/android/gms/internal/ads/zzadx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzade()V
    .locals 1

    const/4 v0, 0x0

    .line 620
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbel;->setBackgroundColor(I)V

    return-void
.end method

.method public final zzadf()V
    .locals 1

    const-string v0, "Cannot add text view to inner AdWebView"

    .line 544
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzee(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized zzadg()Lcom/google/android/gms/internal/ads/zzsc;
    .locals 1

    monitor-enter p0

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesb:Lcom/google/android/gms/internal/ads/zzsc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzadh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzadi()Lcom/google/android/gms/internal/ads/zzsu;
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerg:Lcom/google/android/gms/internal/ads/zzsu;

    return-object v0
.end method

.method public final zzadj()Z
    .locals 2

    .line 676
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcwz:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 677
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 678
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerg:Lcom/google/android/gms/internal/ads/zzsu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerh:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzadk()Lcom/google/android/gms/internal/ads/zzdmz;
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    return-object v0
.end method

.method public final declared-synchronized zzal(Z)V
    .locals 2

    monitor-enter p0

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzern:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz v0, :cond_0

    .line 453
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdu;->zzaby()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 454
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzdro:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzaq(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    monitor-enter p0

    .line 390
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzero:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzau(Z)V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    .line 624
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdu;->zzau(Z)V

    return-void
.end method

.method public final zzaw(Z)V
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdu;->zzaw(Z)V

    return-void
.end method

.method public final declared-synchronized zzaz(Z)V
    .locals 2

    monitor-enter p0

    .line 397
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerr:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 398
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerr:Z

    .line 399
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzado()V

    if-eqz v0, :cond_3

    .line 400
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcnb:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 401
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 402
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzady()Z

    move-result v0

    if-nez v0, :cond_3

    .line 403
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaqu;-><init>(Lcom/google/android/gms/internal/ads/zzbdv;)V

    if-eqz p1, :cond_2

    const-string p1, "expanded"

    goto :goto_1

    :cond_2
    const-string p1, "default"

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqu;->zzdv(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 0

    monitor-enter p0

    .line 392
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesi:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzahv<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbdv;",
            ">;)V"
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdu;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahv;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 148
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfd;->zzadu()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbfd;->zzf(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    move-object v3, p0

    move-object v4, p1

    move-object v8, p3

    .line 149
    invoke-super/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 150
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p2, :cond_0

    .line 189
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 190
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(window.AFMA_ReceiveMessage || function() {})(\'"

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    .line 197
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Dispatching AFMA event: "

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbel;->zzfp(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(ZI)V
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerm:Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdu;->zzb(ZI)V

    return-void
.end method

.method public final declared-synchronized zzba(Z)V
    .locals 0

    monitor-enter p0

    .line 555
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzeru:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzbb(Z)V
    .locals 1

    monitor-enter p0

    .line 610
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesc:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesc:I

    if-gtz v0, :cond_1

    .line 611
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzern:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz p1, :cond_1

    .line 612
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzvl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzbx(Landroid/content/Context;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzera:Lcom/google/android/gms/internal/ads/zzbfk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfk;->setBaseContext(Landroid/content/Context;)V

    .line 450
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesk:Lcom/google/android/gms/ads/internal/util/zzbz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzera:Lcom/google/android/gms/internal/ads/zzbfk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfk;->zzaaj()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzj(Landroid/app/Activity;)V

    return-void
.end method

.method public final zzc(ZI)Z
    .locals 2

    .line 658
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->destroy()V

    .line 659
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzeph:Lcom/google/android/gms/internal/ads/zzts;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbek;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbek;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzts;->zza(Lcom/google/android/gms/internal/ads/zztv;)V

    .line 660
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzeph:Lcom/google/android/gms/internal/ads/zzts;

    sget-object p2, Lcom/google/android/gms/internal/ads/zztu$zza$zza;->zzbxp:Lcom/google/android/gms/internal/ads/zztu$zza$zza;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzts;->zza(Lcom/google/android/gms/internal/ads/zztu$zza$zza;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final zzcy(Ljava/lang/String;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbel;->zzfp(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized zzdq(I)V
    .locals 0

    monitor-enter p0

    .line 583
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzbvg:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzdv(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    .line 209
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzelc:Lcom/google/android/gms/internal/ads/zzabq;

    const-string v2, "aebb2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabn;->zza(Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzabq;[Ljava/lang/String;)Z

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzadn()V

    .line 212
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close_type"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzabs;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 215
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "closetype"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzazh;->zzbrf:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onhide"

    .line 217
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbel;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized zzff(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbcx;
    .locals 1

    monitor-enter p0

    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesl:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 577
    monitor-exit p0

    return-object p1

    .line 578
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbcx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzkm()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 558
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerv:Z

    .line 559
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerd:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    .line 560
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzk;->zzkm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzkn()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 562
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerv:Z

    .line 563
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzerd:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    .line 564
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzk;->zzkn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzvj()V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzese:Lcom/google/android/gms/internal/ads/zzabq;

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    .line 225
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzelc:Lcom/google/android/gms/internal/ads/zzabq;

    const-string v2, "aes2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabn;->zza(Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzabq;[Ljava/lang/String;)Z

    .line 227
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabn;->zzb(Lcom/google/android/gms/internal/ads/zzabs;)Lcom/google/android/gms/internal/ads/zzabq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzese:Lcom/google/android/gms/internal/ads/zzabq;

    .line 228
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    const-string v2, "native:view_show"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzabt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabq;)V

    .line 229
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 230
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzazh;->zzbrf:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    .line 231
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbel;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzvk()V
    .locals 1

    .line 626
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbel;->zzaco()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzvk()V

    :cond_0
    return-void
.end method
