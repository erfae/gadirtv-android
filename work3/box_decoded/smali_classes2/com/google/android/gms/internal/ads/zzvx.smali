.class public Lcom/google/android/gms/internal/ads/zzvx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"


# instance fields
.field private final zzcic:Lcom/google/android/gms/internal/ads/zzvi;

.field private final zzcid:Lcom/google/android/gms/internal/ads/zzvf;

.field private final zzcie:Lcom/google/android/gms/internal/ads/zzzp;

.field private final zzcif:Lcom/google/android/gms/internal/ads/zzagn;

.field private final zzcig:Lcom/google/android/gms/internal/ads/zzaut;

.field private final zzcih:Lcom/google/android/gms/internal/ads/zzavx;

.field private final zzcii:Lcom/google/android/gms/internal/ads/zzarh;

.field private final zzcij:Lcom/google/android/gms/internal/ads/zzagm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzvi;Lcom/google/android/gms/internal/ads/zzvf;Lcom/google/android/gms/internal/ads/zzzp;Lcom/google/android/gms/internal/ads/zzagn;Lcom/google/android/gms/internal/ads/zzaut;Lcom/google/android/gms/internal/ads/zzavx;Lcom/google/android/gms/internal/ads/zzarh;Lcom/google/android/gms/internal/ads/zzagm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcic:Lcom/google/android/gms/internal/ads/zzvi;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcid:Lcom/google/android/gms/internal/ads/zzvf;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcie:Lcom/google/android/gms/internal/ads/zzzp;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcif:Lcom/google/android/gms/internal/ads/zzagn;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcig:Lcom/google/android/gms/internal/ads/zzaut;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcih:Lcom/google/android/gms/internal/ads/zzavx;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcii:Lcom/google/android/gms/internal/ads/zzarh;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcij:Lcom/google/android/gms/internal/ads/zzagm;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzvx;)Lcom/google/android/gms/internal/ads/zzvi;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcic:Lcom/google/android/gms/internal/ads/zzvi;

    return-object p0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 11
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "no_ads_fallback"

    .line 12
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flow"

    .line 13
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqa()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v0

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqg()Lcom/google/android/gms/internal/ads/zzazh;

    move-result-object p1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzazh;->zzbrf:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p0

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzayr;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzvx;)Lcom/google/android/gms/internal/ads/zzvf;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcid:Lcom/google/android/gms/internal/ads/zzvf;

    return-object p0
.end method

.method static synthetic zzb(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzvx;->zza(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzvx;)Lcom/google/android/gms/internal/ads/zzzp;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcie:Lcom/google/android/gms/internal/ads/zzzp;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzvx;)Lcom/google/android/gms/internal/ads/zzagn;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcif:Lcom/google/android/gms/internal/ads/zzagn;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzvx;)Lcom/google/android/gms/internal/ads/zzagm;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcij:Lcom/google/android/gms/internal/ads/zzagm;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzvx;)Lcom/google/android/gms/internal/ads/zzaut;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcig:Lcom/google/android/gms/internal/ads/zzaut;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzvx;)Lcom/google/android/gms/internal/ads/zzarh;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcii:Lcom/google/android/gms/internal/ads/zzarh;

    return-object p0
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/zzaen;
    .locals 1

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwm;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzwm;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwn;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 28
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaen;

    return-object p1
.end method

.method public final zza(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/google/android/gms/internal/ads/zzaeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzaeq;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwl;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    .line 32
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwn;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 33
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaeq;

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzani;)Lcom/google/android/gms/internal/ads/zzaxq;
    .locals 1

    .line 48
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwb;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwb;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzani;)V

    const/4 p2, 0x0

    .line 49
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwn;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 50
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaxq;

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzani;)Lcom/google/android/gms/internal/ads/zzxg;
    .locals 7

    .line 18
    new-instance v6, Lcom/google/android/gms/internal/ads/zzwf;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzani;)V

    const/4 p2, 0x0

    .line 19
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/ads/zzwn;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 20
    check-cast p1, Lcom/google/android/gms/internal/ads/zzxg;

    return-object p1
.end method

.method public final zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzani;)Lcom/google/android/gms/internal/ads/zzaqw;
    .locals 1

    .line 52
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwd;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzani;)V

    const/4 p2, 0x0

    .line 53
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwn;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 54
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqw;

    return-object p1
.end method

.method public final zzb(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzarj;
    .locals 5

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzwc;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/app/Activity;)V

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.internal.overlay.useClientJar"

    .line 42
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v1, "useClientJar flag not found in activity intent extras."

    .line 43
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaza;->zzey(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 46
    :goto_0
    invoke-virtual {v0, p1, v4}, Lcom/google/android/gms/internal/ads/zzwn;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzarj;

    return-object p1
.end method

.method public final zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzani;)Lcom/google/android/gms/internal/ads/zzwz;
    .locals 1

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwk;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwk;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzani;)V

    const/4 p2, 0x0

    .line 23
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwn;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 24
    check-cast p1, Lcom/google/android/gms/internal/ads/zzwz;

    return-object p1
.end method

.method public final zzc(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzani;)Lcom/google/android/gms/internal/ads/zzavh;
    .locals 1

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvz;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzvz;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzani;)V

    const/4 p2, 0x0

    .line 36
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwn;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 37
    check-cast p1, Lcom/google/android/gms/internal/ads/zzavh;

    return-object p1
.end method
