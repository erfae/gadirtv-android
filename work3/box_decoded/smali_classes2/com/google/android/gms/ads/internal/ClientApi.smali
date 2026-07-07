.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lcom/google/android/gms/internal/ads/zzxs;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxs;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzaen;
    .locals 2

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 22
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzccy;

    const v1, 0xc1fb2e0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzccy;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzaeq;
    .locals 1

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 51
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 53
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    .line 54
    new-instance v0, Lcom/google/android/gms/internal/ads/zzccv;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzccv;-><init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzani;I)Lcom/google/android/gms/internal/ads/zzaui;
    .locals 0

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 25
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzani;I)Lcom/google/android/gms/internal/ads/zzbgm;

    move-result-object p2

    .line 26
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbgm;->zzaez()Lcom/google/android/gms/internal/ads/zzdmp;

    move-result-object p2

    .line 27
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdmp;->zzcb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdmp;

    move-result-object p1

    .line 28
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdmp;->zzahn()Lcom/google/android/gms/internal/ads/zzdmm;

    move-result-object p1

    .line 29
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdmm;->zzahl()Lcom/google/android/gms/internal/ads/zzdmo;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzani;I)Lcom/google/android/gms/internal/ads/zzwz;
    .locals 0

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 19
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzbgm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzani;I)Lcom/google/android/gms/internal/ads/zzbgm;

    move-result-object p3

    .line 20
    new-instance p4, Lcom/google/android/gms/internal/ads/zzcxk;

    invoke-direct {p4, p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzcxk;-><init>(Lcom/google/android/gms/internal/ads/zzbgm;Landroid/content/Context;Ljava/lang/String;)V

    return-object p4
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/zzxg;
    .locals 4

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazh;

    const v1, 0xc1fb2e0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p4, v2, v3}, Lcom/google/android/gms/internal/ads/zzazh;-><init>(IIZZ)V

    .line 49
    new-instance p4, Lcom/google/android/gms/ads/internal/zzj;

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/zzj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzazh;)V

    return-object p4
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzani;I)Lcom/google/android/gms/internal/ads/zzxg;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 4
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzbgm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzani;I)Lcom/google/android/gms/internal/ads/zzbgm;

    move-result-object p4

    .line 5
    new-instance p5, Lcom/google/android/gms/internal/ads/zzcxm;

    invoke-direct {p5, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcxm;-><init>(Lcom/google/android/gms/internal/ads/zzbgm;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;)V

    return-object p5
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Lcom/google/android/gms/internal/ads/zzxw;
    .locals 0

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 44
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbgm;->zzf(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzbgm;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgm;->zzaeq()Lcom/google/android/gms/internal/ads/zzbiu;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzarj;
    .locals 3

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzs;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 36
    :cond_0
    iget v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrr:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 41
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzs;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 38
    :cond_1
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzv;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzv;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-object v1

    .line 40
    :cond_2
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzaa;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 39
    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzy;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 37
    :cond_4
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzt;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzani;I)Lcom/google/android/gms/internal/ads/zzavh;
    .locals 0

    .line 55
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 56
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzbgm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzani;I)Lcom/google/android/gms/internal/ads/zzbgm;

    move-result-object p3

    .line 57
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbgm;->zzaez()Lcom/google/android/gms/internal/ads/zzdmp;

    move-result-object p3

    .line 58
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzdmp;->zzcb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdmp;

    move-result-object p1

    .line 59
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdmp;->zzft(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdmp;

    move-result-object p1

    .line 60
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdmp;->zzahn()Lcom/google/android/gms/internal/ads/zzdmm;

    move-result-object p1

    .line 61
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdmm;->zzahm()Lcom/google/android/gms/internal/ads/zzdmi;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzani;I)Lcom/google/android/gms/internal/ads/zzaxq;
    .locals 0

    .line 75
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 77
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzani;I)Lcom/google/android/gms/internal/ads/zzbgm;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgm;->zzafb()Lcom/google/android/gms/internal/ads/zzcyx;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzani;I)Lcom/google/android/gms/internal/ads/zzxg;
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 8
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzbgm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzani;I)Lcom/google/android/gms/internal/ads/zzbgm;

    .line 9
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzbgm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzani;I)Lcom/google/android/gms/internal/ads/zzbgm;

    move-result-object p4

    .line 10
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzbgm;->zzaew()Lcom/google/android/gms/internal/ads/zzdlc;

    move-result-object p4

    .line 11
    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/ads/zzdlc;->zzca(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdlc;

    move-result-object p1

    .line 12
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdlc;->zzc(Lcom/google/android/gms/internal/ads/zzvn;)Lcom/google/android/gms/internal/ads/zzdlc;

    move-result-object p1

    .line 13
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzdlc;->zzfs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdlc;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdlc;->zzahk()Lcom/google/android/gms/internal/ads/zzdld;

    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdld;->zzahj()Lcom/google/android/gms/internal/ads/zzcyg;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzani;I)Lcom/google/android/gms/internal/ads/zzaqw;
    .locals 0

    .line 79
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 81
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzani;I)Lcom/google/android/gms/internal/ads/zzbgm;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgm;->zzafc()Lcom/google/android/gms/internal/ads/zzcqy;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzani;I)Lcom/google/android/gms/internal/ads/zzxg;
    .locals 0

    .line 63
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 65
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzbgm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzani;I)Lcom/google/android/gms/internal/ads/zzbgm;

    move-result-object p2

    .line 66
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbgm;->zzaeu()Lcom/google/android/gms/internal/ads/zzdii;

    move-result-object p2

    .line 67
    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/zzdii;->zzfr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdii;

    move-result-object p2

    .line 68
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdii;->zzbz(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdii;

    move-result-object p1

    .line 69
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdii;->zzagw()Lcom/google/android/gms/internal/ads/zzdij;

    move-result-object p1

    .line 70
    sget-object p2, Lcom/google/android/gms/internal/ads/zzabf;->zzcut:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 71
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p2

    .line 72
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lt p5, p2, :cond_0

    .line 73
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdij;->zzagv()Lcom/google/android/gms/internal/ads/zzdjf;

    move-result-object p1

    return-object p1

    .line 74
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdij;->zzagu()Lcom/google/android/gms/internal/ads/zzdid;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzxw;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzaru;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
