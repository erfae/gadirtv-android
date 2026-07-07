.class final Lcom/google/android/gms/internal/ads/zzbfv;
.super Lcom/google/android/gms/internal/ads/zzbgb;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/ads/zzakj;
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

.field private zzelc:Lcom/google/android/gms/internal/ads/zzabq;

.field private final zzeph:Lcom/google/android/gms/internal/ads/zzts;

.field private final zzera:Lcom/google/android/gms/internal/ads/zzbfk;

.field private final zzerb:Lcom/google/android/gms/internal/ads/zzef;

.field private final zzerc:Lcom/google/android/gms/internal/ads/zzacg;

.field private final zzerd:Lcom/google/android/gms/ads/internal/zzk;

.field private final zzere:Lcom/google/android/gms/ads/internal/zzb;

.field private final zzerg:Lcom/google/android/gms/internal/ads/zzsu;

.field private final zzerh:Z

.field private zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

.field private zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

.field private zzern:Lcom/google/android/gms/ads/internal/overlay/zze;

.field private zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

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

.field private final zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

.field private final zzeth:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final zzxl:Landroid/util/DisplayMetrics;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzbfk;Lcom/google/android/gms/internal/ads/zzbfm;Lcom/google/android/gms/internal/ads/zzbfn;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzacg;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzsu;ZLcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdmz;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p9

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbfz;)V

    const/4 v3, 0x1

    .line 2
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzeru:Z

    const/4 v4, 0x0

    .line 3
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerv:Z

    const-string v4, ""

    .line 4
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzdtb:Ljava/lang/String;

    .line 5
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzeth:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, -0x1

    .line 6
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzdpm:I

    .line 7
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzdpl:I

    .line 8
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzbfv;->maxWidth:I

    .line 9
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzbfv;->maxHeight:I

    .line 10
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzera:Lcom/google/android/gms/internal/ads/zzbfk;

    move-object v5, p2

    .line 11
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    move-object v5, p3

    .line 12
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    move-object v5, p4

    .line 13
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzacv:Ljava/lang/String;

    move v5, p5

    .line 14
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerr:Z

    .line 15
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzert:I

    move-object v4, p7

    .line 16
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerb:Lcom/google/android/gms/internal/ads/zzef;

    move-object/from16 v4, p8

    .line 17
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerc:Lcom/google/android/gms/internal/ads/zzacg;

    .line 18
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

    move-object/from16 v4, p11

    .line 19
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerd:Lcom/google/android/gms/ads/internal/zzk;

    move-object/from16 v4, p12

    .line 20
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzere:Lcom/google/android/gms/ads/internal/zzb;

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzbqu:Landroid/view/WindowManager;

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzm;->zza(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzxl:Landroid/util/DisplayMetrics;

    move-object/from16 v4, p13

    .line 23
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzeph:Lcom/google/android/gms/internal/ads/zzts;

    move-object/from16 v4, p14

    .line 24
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerg:Lcom/google/android/gms/internal/ads/zzsu;

    move/from16 v4, p15

    .line 25
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerh:Z

    move-object/from16 v4, p16

    .line 26
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

    move-object/from16 v4, p17

    .line 27
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    .line 28
    new-instance v4, Lcom/google/android/gms/ads/internal/util/zzbz;

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbfk;->zzaaj()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    .line 30
    invoke-direct {v4, v5, p0, p0, v6}, Lcom/google/android/gms/ads/internal/util/zzbz;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesk:Lcom/google/android/gms/ads/internal/util/zzbz;

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    move-result-object v4

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzazh;->zzbrf:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v4, p1, v2, v5}, Lcom/google/android/gms/ads/internal/util/zzm;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    .line 32
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ads/zzbfv;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->zzado()V

    .line 34
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbet;->zzc(Lcom/google/android/gms/internal/ads/zzbdv;)Lcom/google/android/gms/internal/ads/zzbet;

    move-result-object v2

    const-string v4, "googleAdsJsInterface"

    invoke-virtual {p0, v2, v4}, Lcom/google/android/gms/internal/ads/zzbfw;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->zzads()V

    .line 38
    new-instance v2, Lcom/google/android/gms/internal/ads/zzabt;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzabs;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzacv:Ljava/lang/String;

    const-string v7, "make_wv"

    invoke-direct {v4, v3, v7, v5}, Lcom/google/android/gms/internal/ads/zzabs;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/zzabt;-><init>(Lcom/google/android/gms/internal/ads/zzabs;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v2

    move-object/from16 v3, p10

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzabs;->zzc(Lcom/google/android/gms/internal/ads/zzabs;)V

    .line 40
    sget-object v2, Lcom/google/android/gms/internal/ads/zzabf;->zzcqn:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdmz;->zzbvf:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 43
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdmz;->zzbvf:Ljava/lang/String;

    const-string v4, "gqi"

    .line 45
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzabs;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzabn;->zzb(Lcom/google/android/gms/internal/ads/zzabs;)Lcom/google/android/gms/internal/ads/zzabq;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzelc:Lcom/google/android/gms/internal/ads/zzabq;

    .line 47
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    const-string v4, "native:view_create"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzabt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabq;)V

    .line 48
    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesf:Lcom/google/android/gms/internal/ads/zzabq;

    .line 49
    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzbfv;->zzese:Lcom/google/android/gms/internal/ads/zzabq;

    .line 50
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/ads/internal/util/zzu;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/ads/internal/util/zzu;->zzbg(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbfv;)I
    .locals 0

    .line 554
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesd:I

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbfv;I)I
    .locals 0

    .line 555
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesd:I

    return p1
.end method

.method static final synthetic zza(ZILcom/google/android/gms/internal/ads/zzue$zzi$zza;)V
    .locals 2

    .line 547
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzue$zzae;->zzpj()Lcom/google/android/gms/internal/ads/zzue$zzae$zza;

    move-result-object v0

    .line 548
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzue$zzae$zza;->zzpi()Z

    move-result v1

    if-eq v1, p0, :cond_0

    .line 549
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzue$zzae$zza;->zzw(Z)Lcom/google/android/gms/internal/ads/zzue$zzae$zza;

    .line 551
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzue$zzae$zza;->zzcu(I)Lcom/google/android/gms/internal/ads/zzue$zzae$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzekh$zza;->zzbhv()Lcom/google/android/gms/internal/ads/zzels;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzekh;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzue$zzae;

    .line 552
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzue$zzi$zza;->zzb(Lcom/google/android/gms/internal/ads/zzue$zzae;)Lcom/google/android/gms/internal/ads/zzue$zzi$zza;

    return-void
.end method

.method private final zzadl()Z
    .locals 10

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    .line 57
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfm;->zzaby()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    .line 59
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfm;->zzabz()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 61
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqa()Lcom/google/android/gms/internal/ads/zzayr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzxl:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzayr;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v4

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqa()Lcom/google/android/gms/internal/ads/zzayr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzxl:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzayr;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v5

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzera:Lcom/google/android/gms/internal/ads/zzbfk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfk;->zzaaj()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzm;->zzf(Landroid/app/Activity;)[I

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqa()Lcom/google/android/gms/internal/ads/zzayr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzxl:Landroid/util/DisplayMetrics;

    aget v6, v0, v1

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzayr;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v3

    .line 71
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqa()Lcom/google/android/gms/internal/ads/zzayr;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzxl:Landroid/util/DisplayMetrics;

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

    .line 72
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzdpl:I

    if-ne v0, v4, :cond_3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzdpm:I

    if-ne v3, v5, :cond_3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbfv;->maxWidth:I

    if-ne v3, v6, :cond_3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbfv;->maxHeight:I

    if-ne v3, v7, :cond_3

    return v1

    :cond_3
    if-ne v0, v4, :cond_4

    .line 74
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzdpm:I

    if-eq v0, v5, :cond_5

    :cond_4
    const/4 v1, 0x1

    .line 75
    :cond_5
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzdpl:I

    .line 76
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzdpm:I

    .line 77
    iput v6, p0, Lcom/google/android/gms/internal/ads/zzbfv;->maxWidth:I

    .line 78
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzbfv;->maxHeight:I

    .line 79
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaqu;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzaqu;-><init>(Lcom/google/android/gms/internal/ads/zzbdv;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzxl:Landroid/util/DisplayMetrics;

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzbqu:Landroid/view/WindowManager;

    .line 80
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 81
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzaqu;->zza(IIIIFI)V

    return v1
.end method

.method private final zzadn()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzelc:Lcom/google/android/gms/internal/ads/zzabq;

    const-string v2, "aeh2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabn;->zza(Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzabq;[Ljava/lang/String;)Z

    return-void
.end method

.method private final declared-synchronized zzado()V
    .locals 2

    monitor-enter p0

    .line 349
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerr:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    const-string v0, "Disabling hardware acceleration on an AdView."

    .line 353
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    .line 354
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->zzadp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "Enabling hardware acceleration on an AdView."

    .line 355
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    .line 356
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->zzadq()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_2
    const-string v0, "Enabling hardware acceleration on an overlay."

    .line 350
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    .line 351
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->zzadq()V
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

    .line 358
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzers:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 359
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/ads/internal/util/zzu;

    const/4 v0, 0x0

    .line 360
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 361
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzers:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
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

    .line 363
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzers:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 364
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/ads/internal/util/zzu;

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 366
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzers:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
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

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesl:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 423
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

    .line 424
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbcx;->release()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 426
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesl:Ljava/util/Map;
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

.method private final zzads()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    if-nez v0, :cond_0

    return-void

    .line 472
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 473
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzku()Lcom/google/android/gms/internal/ads/zzayg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayg;->zzwt()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 474
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzku()Lcom/google/android/gms/internal/ads/zzayg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayg;->zzwt()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabi;->zza(Lcom/google/android/gms/internal/ads/zzabs;)Z

    :cond_1
    return-void
.end method

.method private final zzbc(Z)V
    .locals 2

    .line 501
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "isVisible"

    .line 502
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    .line 504
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Lcom/google/android/gms/internal/ads/zzakj;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getRequestId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzdtb:Ljava/lang/String;
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

.method public final onAdClicked()V
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfm;->onAdClicked()V

    :cond_0
    return-void
.end method

.method protected final declared-synchronized onAttachedToWindow()V
    .locals 4

    monitor-enter p0

    .line 293
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbgb;->onAttachedToWindow()V

    .line 294
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgb;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesk:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->onAttachedToWindow()V

    .line 296
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerx:Z

    .line 298
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    .line 299
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbfm;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 301
    check-cast v1, Lcom/google/android/gms/internal/ads/zzbfm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbfm;->zzabz()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzery:Z

    if-nez v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    .line 306
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfm;->zzacb()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 308
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    .line 309
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfm;->zzacc()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 310
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzery:Z

    .line 311
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->zzadl()Z

    const/4 v0, 0x1

    .line 312
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbfv;->zzbc(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final onDetachedFromWindow()V
    .locals 3

    .line 314
    monitor-enter p0

    .line 315
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgb;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesk:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->onDetachedFromWindow()V

    .line 317
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbgb;->onDetachedFromWindow()V

    .line 318
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzery:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    .line 320
    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbfm;

    if-eqz v2, :cond_1

    .line 322
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfm;->zzabz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    .line 327
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfm;->zzacb()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 329
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    .line 330
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfm;->zzacc()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 331
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzery:Z

    .line 332
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzbfv;->zzbc(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 332
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 151
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/google/android/gms/ads/internal/util/zzm;->zza(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 156
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

    .line 380
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 381
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 384
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgb;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/16 v0, 0x9

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0xa

    .line 173
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    const/4 v2, -0x1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    .line 176
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzbfv;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v4, 0x1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 177
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzbfv;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    cmpl-float v0, v1, v3

    if-lez v0, :cond_2

    .line 178
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzbfv;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    cmpg-float v0, v1, v3

    if-gez v0, :cond_4

    .line 179
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzbfv;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 181
    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgb;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onGlobalLayout()V
    .locals 2

    .line 269
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->zzadl()Z

    move-result v0

    .line 270
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->zzaco()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzvi()V

    :cond_0
    return-void
.end method

.method protected final declared-synchronized onMeasure(II)V
    .locals 7

    monitor-enter p0

    .line 182
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgb;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbfv;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 185
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerr:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzadz()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_9

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaeb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgb;->onMeasure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 191
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaea()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 192
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcsh:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 193
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgb;->onMeasure(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 198
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->zzaah()Lcom/google/android/gms/internal/ads/zzbep;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 200
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbep;->getAspectRatio()F

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    cmpl-float v1, v0, v1

    if-nez v1, :cond_5

    .line 202
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgb;->onMeasure(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 204
    :cond_5
    :try_start_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 205
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

    .line 214
    :cond_7
    :goto_1
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 215
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfv;->setMeasuredDimension(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 218
    :cond_8
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->isFluid()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 219
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcsk:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 220
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 221
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

    .line 225
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbfx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbfx;-><init>(Lcom/google/android/gms/internal/ads/zzbfv;)V

    .line 226
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbfv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahv;)V

    const-string v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    .line 228
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbfw;->zzcy(Ljava/lang/String;)V

    .line 229
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 230
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesd:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    int-to-float p2, v0

    .line 233
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzxl:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    goto :goto_2

    .line 231
    :cond_a
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 234
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfv;->setMeasuredDimension(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    .line 222
    :cond_b
    :goto_3
    :try_start_6
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgb;->onMeasure(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 236
    :cond_c
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzady()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 237
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzxl:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzxl:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfv;->setMeasuredDimension(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    .line 239
    :cond_d
    :try_start_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 240
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 241
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 242
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

    .line 250
    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbfn;->widthPixels:I

    const/4 v3, 0x1

    if-gt v2, v0, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbfn;->heightPixels:I

    if-le v2, v5, :cond_12

    goto :goto_6

    :cond_12
    const/4 v2, 0x0

    goto :goto_7

    :cond_13
    :goto_6
    const/4 v2, 0x1

    .line 251
    :goto_7
    sget-object v4, Lcom/google/android/gms/internal/ads/zzabf;->zzcvc:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 252
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v4

    .line 253
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 254
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbfn;->widthPixels:I

    int-to-float v4, v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzxl:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v6

    int-to-float v0, v0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzxl:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v6

    cmpl-float v0, v4, v0

    if-gtz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbfn;->heightPixels:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzxl:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v4

    int-to-float v4, v5

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzxl:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_14

    goto :goto_8

    :cond_14
    const/4 v3, 0x0

    :goto_8
    if-eqz v2, :cond_15

    move v2, v3

    :cond_15
    const/16 v0, 0x8

    if-eqz v2, :cond_17

    .line 261
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbfn;->widthPixels:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzxl:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbfn;->heightPixels:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzxl:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float p1, p1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzxl:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v4

    float-to-int p1, p1

    int-to-float p2, p2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzxl:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v4

    float-to-int p2, p2

    const/16 v4, 0x67

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Not enough space to show ad. Needs "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dp, but only has "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp."

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_16

    const/4 p1, 0x4

    .line 263
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfv;->setVisibility(I)V

    .line 264
    :cond_16
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbfv;->setMeasuredDimension(II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    .line 265
    :cond_17
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_18

    .line 266
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzbfv;->setVisibility(I)V

    .line 267
    :cond_18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbfn;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbfn;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfv;->setMeasuredDimension(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    .line 186
    :cond_19
    :goto_9
    :try_start_a
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgb;->onMeasure(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPause()V
    .locals 2

    .line 390
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbgb;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not pause webview."

    .line 393
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 395
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbgb;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not resume webview."

    .line 398
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    .line 160
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfm;->zzabz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    .line 162
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfm;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerz:Lcom/google/android/gms/internal/ads/zzadx;

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzadx;->zzc(Landroid/view/MotionEvent;)V

    .line 166
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerb:Lcom/google/android/gms/internal/ads/zzef;

    if-eqz v0, :cond_2

    .line 168
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzef;->zza(Landroid/view/MotionEvent;)V

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerc:Lcom/google/android/gms/internal/ads/zzacg;

    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacg;->zza(Landroid/view/MotionEvent;)V

    .line 171
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgb;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 445
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesh:Ljava/lang/ref/WeakReference;

    .line 446
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgb;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final declared-synchronized setRequestedOrientation(I)V
    .locals 1

    monitor-enter p0

    .line 343
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzert:I

    .line 344
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzern:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final stopLoading()V
    .locals 2

    .line 406
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbgb;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not stop loading webview."

    .line 409
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 520
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->zzadj()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "AR ad is not enabled or the ad from the server is not an AR ad."

    .line 521
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzee(Ljava/lang/String;)V

    return-void

    .line 523
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 524
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const-string v0, "Initializing ArWebView object."

    .line 525
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzee(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerg:Lcom/google/android/gms/internal/ads/zzsu;

    invoke-interface {v0, p2, p0}, Lcom/google/android/gms/internal/ads/zzsu;->zza(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 527
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerg:Lcom/google/android/gms/internal/ads/zzsu;

    invoke-interface {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzsu;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 529
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerg:Lcom/google/android/gms/internal/ads/zzsu;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzsu;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    const-string p1, "The FrameLayout object cannot be null."

    .line 530
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzb;)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfm;->zza(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 0

    monitor-enter p0

    .line 274
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzern:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
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

    .line 454
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesa:Lcom/google/android/gms/internal/ads/zzads;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
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

    .line 448
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerz:Lcom/google/android/gms/internal/ads/zzadx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
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

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerw:Lcom/google/android/gms/internal/ads/zzbep;

    if-eqz v0, :cond_0

    const-string p1, "Attempt to create multiple AdWebViewVideoControllers."

    .line 461
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    monitor-exit p0

    return-void

    .line 463
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerw:Lcom/google/android/gms/internal/ads/zzbep;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
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

    .line 280
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 281
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdmz;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

    .line 542
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzqv;)V
    .locals 1

    .line 496
    monitor-enter p0

    .line 497
    :try_start_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzqv;->zzbqz:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerx:Z

    .line 498
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzqv;->zzbqz:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfv;->zzbc(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 498
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzsc;)V
    .locals 0

    monitor-enter p0

    .line 456
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesb:Lcom/google/android/gms/internal/ads/zzsc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
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

    .line 512
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfm;->zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V

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

    .line 506
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfm;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahv;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbcx;)V
    .locals 1

    monitor-enter p0

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesl:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 429
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesl:Ljava/util/Map;

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesl:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Lcom/google/android/gms/internal/ads/zzakj;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Lcom/google/android/gms/internal/ads/zzakj;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;)V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbfm;->zza(ZILjava/lang/String;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbfm;->zza(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(ZJ)V
    .locals 2

    .line 135
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

    .line 136
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onCacheAccessComplete"

    .line 139
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Lcom/google/android/gms/internal/ads/zzakj;Ljava/lang/String;Ljava/util/Map;)V

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

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerw:Lcom/google/android/gms/internal/ads/zzbep;
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

    .line 443
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzelc:Lcom/google/android/gms/internal/ads/zzabq;

    return-object v0
.end method

.method public final zzaaj()Landroid/app/Activity;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzera:Lcom/google/android/gms/internal/ads/zzbfk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfk;->zzaaj()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final zzaak()Lcom/google/android/gms/ads/internal/zzb;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzere:Lcom/google/android/gms/ads/internal/zzb;

    return-object v0
.end method

.method public final declared-synchronized zzaal()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmz;->zzbvf:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 438
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

    .line 441
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzbvg:I
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

    .line 444
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    return-object v0
.end method

.method public final zzaao()Lcom/google/android/gms/internal/ads/zzazh;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

    return-object v0
.end method

.method public final zzaap()I
    .locals 1

    .line 486
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final zzaaq()I
    .locals 1

    .line 487
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized zzaar()V
    .locals 1

    monitor-enter p0

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesa:Lcom/google/android/gms/internal/ads/zzads;

    if-eqz v0, :cond_0

    .line 452
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzads;->zzsq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
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

    .line 536
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

    return-object v0
.end method

.method public final zzacl()V
    .locals 3

    .line 91
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->zzadn()V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 93
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzazh;->zzbrf:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    .line 95
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Lcom/google/android/gms/internal/ads/zzakj;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzacm()V
    .locals 3

    .line 126
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 127
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/ads/internal/util/zzad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzad;->zzql()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_muted"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/ads/internal/util/zzad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzad;->zzqk()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzad;->zzbi(Landroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_volume"

    .line 131
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "volume"

    .line 133
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Lcom/google/android/gms/internal/ads/zzakj;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzacn()Landroid/content/Context;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzera:Lcom/google/android/gms/internal/ads/zzbfk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfk;->zzacn()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzaco()Lcom/google/android/gms/ads/internal/overlay/zze;
    .locals 1

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzern:Lcom/google/android/gms/ads/internal/overlay/zze;
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

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesi:Lcom/google/android/gms/ads/internal/overlay/zze;
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

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;
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

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzacv:Ljava/lang/String;
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

    .line 545
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    return-object v0
.end method

.method public final zzact()Landroid/webkit/WebViewClient;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    return-object v0
.end method

.method public final declared-synchronized zzacu()Z
    .locals 1

    monitor-enter p0

    .line 147
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzdro:Z
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

    .line 148
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerb:Lcom/google/android/gms/internal/ads/zzef;

    return-object v0
.end method

.method public final zzacw()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzeth:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-object v0
.end method

.method public final declared-synchronized zzacx()Z
    .locals 1

    monitor-enter p0

    .line 150
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerr:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzacy()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzacz()Z
    .locals 1

    monitor-enter p0

    .line 413
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzeru:Z
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

    .line 465
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesc:I
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

    .line 291
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesk:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzyz()V

    return-void
.end method

.method public final zzadc()V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesf:Lcom/google/android/gms/internal/ads/zzabq;

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabn;->zzb(Lcom/google/android/gms/internal/ads/zzabs;)Lcom/google/android/gms/internal/ads/zzabq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesf:Lcom/google/android/gms/internal/ads/zzabq;

    .line 388
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    const-string v2, "native:view_load"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzabt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabq;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized zzadd()Lcom/google/android/gms/internal/ads/zzadx;
    .locals 1

    monitor-enter p0

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerz:Lcom/google/android/gms/internal/ads/zzadx;
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

    .line 476
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbfv;->setBackgroundColor(I)V

    return-void
.end method

.method public final zzadf()V
    .locals 1

    const-string v0, "Cannot add text view to inner AdWebView"

    .line 400
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzee(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized zzadg()Lcom/google/android/gms/internal/ads/zzsc;
    .locals 1

    monitor-enter p0

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesb:Lcom/google/android/gms/internal/ads/zzsc;
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

    .line 532
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerg:Lcom/google/android/gms/internal/ads/zzsu;

    return-object v0
.end method

.method public final zzadj()Z
    .locals 2

    .line 533
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcwz:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 534
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 535
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerg:Lcom/google/android/gms/internal/ads/zzsu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerh:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzadk()Lcom/google/android/gms/internal/ads/zzdmz;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    return-object v0
.end method

.method public final declared-synchronized zzal(Z)V
    .locals 2

    monitor-enter p0

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzern:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz v0, :cond_0

    .line 339
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbfm;->zzaby()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 340
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzdro:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzaq(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzeth:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzau(Z)V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    .line 480
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfm;->zzau(Z)V

    return-void
.end method

.method public final zzaw(Z)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    .line 404
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfm;->zzaw(Z)V

    return-void
.end method

.method public final declared-synchronized zzaz(Z)V
    .locals 2

    monitor-enter p0

    .line 283
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerr:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 284
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerr:Z

    .line 285
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->zzado()V

    if-eqz v0, :cond_3

    .line 286
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcnb:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 287
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 288
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzady()Z

    move-result v0

    if-nez v0, :cond_3

    .line 289
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

    .line 290
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

    .line 278
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesi:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
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

    .line 509
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfm;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahv;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 84
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

    .line 85
    invoke-super/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzbgb;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaki;->zzb(Lcom/google/android/gms/internal/ads/zzakj;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzb(ZI)V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfm;->zzb(ZI)V

    return-void
.end method

.method public final declared-synchronized zzba(Z)V
    .locals 0

    monitor-enter p0

    .line 411
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzeru:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
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

    .line 466
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesc:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesc:I

    if-gtz v0, :cond_1

    .line 467
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzern:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz p1, :cond_1

    .line 468
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzvl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized zzbd(Z)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 369
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->zzads()V

    .line 370
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesk:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzza()V

    .line 371
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzern:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz p1, :cond_0

    .line 372
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->close()V

    .line 373
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzern:Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->onDestroy()V

    .line 374
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzern:Lcom/google/android/gms/ads/internal/overlay/zze;

    .line 375
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzeth:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 376
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzetg:Lcom/google/android/gms/internal/ads/zzbfm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbfm;->destroy()V

    .line 377
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlm()Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbcu;->zzc(Lcom/google/android/gms/internal/ads/zzbbe;)Z

    .line 378
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->zzadr()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzbx(Landroid/content/Context;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzera:Lcom/google/android/gms/internal/ads/zzbfk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfk;->setBaseContext(Landroid/content/Context;)V

    .line 336
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesk:Lcom/google/android/gms/ads/internal/util/zzbz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzera:Lcom/google/android/gms/internal/ads/zzbfk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfk;->zzaaj()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzj(Landroid/app/Activity;)V

    return-void
.end method

.method public final zzc(ZI)Z
    .locals 2

    .line 515
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgb;->destroy()V

    .line 516
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzeph:Lcom/google/android/gms/internal/ads/zzts;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbfu;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfu;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzts;->zza(Lcom/google/android/gms/internal/ads/zztv;)V

    .line 517
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzeph:Lcom/google/android/gms/internal/ads/zzts;

    sget-object p2, Lcom/google/android/gms/internal/ads/zztu$zza$zza;->zzbxp:Lcom/google/android/gms/internal/ads/zztu$zza$zza;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzts;->zza(Lcom/google/android/gms/internal/ads/zztu$zza$zza;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final declared-synchronized zzcy(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgb;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgb;->zzcy(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "The webview is destroyed. Ignoring action."

    .line 89
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzdq(I)V
    .locals 0

    monitor-enter p0

    .line 439
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzbvg:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
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

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    .line 100
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzelc:Lcom/google/android/gms/internal/ads/zzabq;

    const-string v2, "aebb2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabn;->zza(Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzabq;[Ljava/lang/String;)Z

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->zzadn()V

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close_type"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzabs;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 106
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "closetype"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzazh;->zzbrf:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onhide"

    .line 109
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Lcom/google/android/gms/internal/ads/zzakj;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized zzff(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbcx;
    .locals 1

    monitor-enter p0

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesl:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 433
    monitor-exit p0

    return-object p1

    .line 434
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

.method public final zzj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Lcom/google/android/gms/internal/ads/zzakj;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized zzkm()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 414
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerv:Z

    .line 415
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerd:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    .line 416
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzk;->zzkm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
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

    .line 418
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerv:Z

    .line 419
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerd:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    .line 420
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzk;->zzkn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
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

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzese:Lcom/google/android/gms/internal/ads/zzabq;

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzelc:Lcom/google/android/gms/internal/ads/zzabq;

    const-string v2, "aes2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabn;->zza(Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzabq;[Ljava/lang/String;)Z

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzry()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabn;->zzb(Lcom/google/android/gms/internal/ads/zzabs;)Lcom/google/android/gms/internal/ads/zzabq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzese:Lcom/google/android/gms/internal/ads/zzabq;

    .line 120
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzesg:Lcom/google/android/gms/internal/ads/zzabt;

    const-string v2, "native:view_show"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzabt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabq;)V

    .line 121
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 122
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzazh;->zzbrf:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    .line 124
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Lcom/google/android/gms/internal/ads/zzakj;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzvk()V
    .locals 1

    .line 482
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfv;->zzaco()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzvk()V

    :cond_0
    return-void
.end method
