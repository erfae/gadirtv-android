.class public final Lcom/google/android/gms/internal/ads/zzaqv;
.super Lcom/google/android/gms/internal/ads/zzaqu;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzaqu;",
        "Lcom/google/android/gms/internal/ads/zzahv<",
        "Lcom/google/android/gms/internal/ads/zzbdv;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private density:F

.field private maxHeight:I

.field private maxWidth:I

.field private rotation:I

.field private final zzbqu:Landroid/view/WindowManager;

.field private final zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

.field private final zzdpk:Lcom/google/android/gms/internal/ads/zzaam;

.field private zzdpl:I

.field private zzdpm:I

.field private zzdpn:I

.field private zzdpo:I

.field private zzxl:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbdv;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaam;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqu;-><init>(Lcom/google/android/gms/internal/ads/zzbdv;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpl:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpm:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqv;->maxWidth:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqv;->maxHeight:I

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpn:I

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpo:I

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqv;->context:Landroid/content/Context;

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpk:Lcom/google/android/gms/internal/ads/zzaam;

    const-string p1, "window"

    .line 11
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzbqu:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    .line 31
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdv;

    .line 34
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzxl:Landroid/util/DisplayMetrics;

    .line 35
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzbqu:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzxl:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzxl:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaqv;->density:F

    .line 38
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->rotation:I

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqa()Lcom/google/android/gms/internal/ads/zzayr;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzxl:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzayr;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpl:I

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqa()Lcom/google/android/gms/internal/ads/zzayr;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzxl:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzayr;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpm:I

    .line 44
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzaaj()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzm;->zzf(Landroid/app/Activity;)[I

    move-result-object p1

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqa()Lcom/google/android/gms/internal/ads/zzayr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzxl:Landroid/util/DisplayMetrics;

    aget v2, p1, v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzayr;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->maxWidth:I

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqa()Lcom/google/android/gms/internal/ads/zzayr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzxl:Landroid/util/DisplayMetrics;

    aget p1, p1, p2

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzayr;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->maxHeight:I

    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpl:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->maxWidth:I

    .line 47
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpm:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->maxHeight:I

    .line 52
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacq()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzady()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 53
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpl:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpn:I

    .line 54
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpm:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpo:I

    goto :goto_2

    .line 55
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzbdv;->measure(II)V

    .line 57
    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpl:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpm:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaqv;->maxWidth:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaqv;->maxHeight:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaqv;->density:F

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaqv;->rotation:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaqu;->zza(IIIIFI)V

    .line 60
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaqs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaqs;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpk:Lcom/google/android/gms/internal/ads/zzaam;

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaam;->zzrg()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaqs;->zzae(Z)Lcom/google/android/gms/internal/ads/zzaqs;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpk:Lcom/google/android/gms/internal/ads/zzaam;

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaam;->zzrh()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaqs;->zzad(Z)Lcom/google/android/gms/internal/ads/zzaqs;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpk:Lcom/google/android/gms/internal/ads/zzaam;

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaam;->zzrj()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaqs;->zzaf(Z)Lcom/google/android/gms/internal/ads/zzaqs;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpk:Lcom/google/android/gms/internal/ads/zzaam;

    .line 64
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaam;->zzri()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaqs;->zzag(Z)Lcom/google/android/gms/internal/ads/zzaqs;

    move-result-object p1

    .line 65
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaqs;->zzah(Z)Lcom/google/android/gms/internal/ads/zzaqs;

    move-result-object p1

    .line 67
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaqq;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzaqq;-><init>(Lcom/google/android/gms/internal/ads/zzaqs;Lcom/google/android/gms/internal/ads/zzaqt;)V

    .line 69
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqq;->zzdr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "onDeviceFeaturesReceived"

    invoke-interface {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x2

    new-array v1, p1, [I

    .line 72
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdv;->getLocationOnScreen([I)V

    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqa()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqv;->context:Landroid/content/Context;

    aget v0, v1, v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzb(Landroid/content/Context;I)I

    move-result v0

    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqa()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqv;->context:Landroid/content/Context;

    aget p2, v1, p2

    invoke-virtual {v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzayr;->zzb(Landroid/content/Context;I)I

    move-result p2

    .line 76
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzaqv;->zzj(II)V

    .line 78
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->isLoggable(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Dispatching Ready Event."

    .line 79
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 80
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzaao()Lcom/google/android/gms/internal/ads/zzazh;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzazh;->zzbrf:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqu;->zzdu(Ljava/lang/String;)V

    return-void
.end method

.method public final zzj(II)V
    .locals 5

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqv;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqv;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzm;->zzh(Landroid/app/Activity;)[I

    move-result-object v0

    aget v1, v0, v1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacq()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacq()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzady()Z

    move-result v0

    if-nez v0, :cond_4

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->getWidth()I

    move-result v0

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbdv;->getHeight()I

    move-result v2

    .line 19
    sget-object v3, Lcom/google/android/gms/internal/ads/zzabf;->zzcnc:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    .line 22
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacq()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacq()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbfn;->widthPixels:I

    :cond_2
    if-nez v2, :cond_3

    .line 24
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacq()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacq()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbfn;->heightPixels:I

    .line 26
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqa()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaqv;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzb(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpn:I

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqa()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqv;->context:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzayr;->zzb(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpo:I

    :cond_4
    sub-int v0, p2, v1

    .line 28
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpn:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdpo:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaqu;->zzb(IIII)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacs()Lcom/google/android/gms/internal/ads/zzbfg;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfg;->zzi(II)V

    return-void
.end method
