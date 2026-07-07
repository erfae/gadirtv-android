.class public final Lcom/google/android/gms/internal/ads/zzdlf;
.super Lcom/google/android/gms/ads/reward/AdMetadataListener;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbru;
.implements Lcom/google/android/gms/internal/ads/zzbrz;
.implements Lcom/google/android/gms/internal/ads/zzbsi;
.implements Lcom/google/android/gms/internal/ads/zzbtj;
.implements Lcom/google/android/gms/internal/ads/zzbub;
.implements Lcom/google/android/gms/internal/ads/zzdki;


# instance fields
.field private final zzhdt:Lcom/google/android/gms/internal/ads/zzdpa;

.field private final zzhfs:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/ads/reward/AdMetadataListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhft:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzavp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhfu:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzavi;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhfv:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzaup;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhfw:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzavq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhfx:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzaug;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhfy:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzym;",
            ">;"
        }
    .end annotation
.end field

.field private zzhfz:Lcom/google/android/gms/internal/ads/zzdlf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpa;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/reward/AdMetadataListener;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfs:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhft:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfu:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfv:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfw:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfx:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfy:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfz:Lcom/google/android/gms/internal/ads/zzdlf;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhdt:Lcom/google/android/gms/internal/ads/zzdpa;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzdlf;)Lcom/google/android/gms/internal/ads/zzdlf;
    .locals 2

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdlf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhdt:Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdlf;-><init>(Lcom/google/android/gms/internal/ads/zzdpa;)V

    .line 13
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdlf;->zzb(Lcom/google/android/gms/internal/ads/zzdki;)V

    return-object v0
.end method


# virtual methods
.method public final onAdClosed()V
    .locals 3

    move-object v0, p0

    .line 46
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfz:Lcom/google/android/gms/internal/ads/zzdlf;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 48
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhdt:Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpa;->onAdClosed()V

    .line 49
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfu:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdlx;->zzgwb:Lcom/google/android/gms/internal/ads/zzdka;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    .line 50
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfv:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdlw;->zzgwb:Lcom/google/android/gms/internal/ads/zzdka;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 2

    move-object v0, p0

    .line 52
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfz:Lcom/google/android/gms/internal/ads/zzdlf;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfv:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdlz;->zzgwb:Lcom/google/android/gms/internal/ads/zzdka;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 3

    move-object v0, p0

    .line 29
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfz:Lcom/google/android/gms/internal/ads/zzdlf;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhft:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdle;->zzgwb:Lcom/google/android/gms/internal/ads/zzdka;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    .line 32
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfv:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdlh;->zzgwb:Lcom/google/android/gms/internal/ads/zzdka;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    return-void
.end method

.method public final onAdMetadataChanged()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfz:Lcom/google/android/gms/internal/ads/zzdlf;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/ads/reward/AdMetadataListener;->onAdMetadataChanged()V

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfs:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdlo;->zzgwb:Lcom/google/android/gms/internal/ads/zzdka;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    return-void
.end method

.method public final onAdOpened()V
    .locals 3

    move-object v0, p0

    .line 41
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfz:Lcom/google/android/gms/internal/ads/zzdlf;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfu:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdlv;->zzgwb:Lcom/google/android/gms/internal/ads/zzdka;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    .line 44
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfv:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdlu;->zzgwb:Lcom/google/android/gms/internal/ads/zzdka;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 2

    move-object v0, p0

    .line 67
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfz:Lcom/google/android/gms/internal/ads/zzdlf;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfv:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdln;->zzgwb:Lcom/google/android/gms/internal/ads/zzdka;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 2

    move-object v0, p0

    .line 56
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfz:Lcom/google/android/gms/internal/ads/zzdlf;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfv:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdlg;->zzgwb:Lcom/google/android/gms/internal/ads/zzdka;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfs:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzauf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 60
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfz:Lcom/google/android/gms/internal/ads/zzdlf;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 62
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfu:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdlj;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzdlj;-><init>(Lcom/google/android/gms/internal/ads/zzauf;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    .line 63
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfw:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdli;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdli;-><init>(Lcom/google/android/gms/internal/ads/zzauf;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    .line 64
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfv:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdll;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzdll;-><init>(Lcom/google/android/gms/internal/ads/zzauf;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    .line 65
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfx:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlk;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdlk;-><init>(Lcom/google/android/gms/internal/ads/zzauf;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaug;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfx:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaup;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfv:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzavi;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzavp;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhft:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzavq;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdki;)V
    .locals 0

    .line 85
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdlf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfz:Lcom/google/android/gms/internal/ads/zzdlf;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzvp;)V
    .locals 2

    move-object v0, p0

    .line 81
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfz:Lcom/google/android/gms/internal/ads/zzdlf;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfy:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlr;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdlr;-><init>(Lcom/google/android/gms/internal/ads/zzvp;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzym;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfy:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzve;)V
    .locals 3

    move-object v0, p0

    .line 71
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfz:Lcom/google/android/gms/internal/ads/zzdlf;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfu:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdlm;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzdlm;-><init>(Lcom/google/android/gms/internal/ads/zzve;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    .line 74
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfu:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlp;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdlp;-><init>(Lcom/google/android/gms/internal/ads/zzve;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzve;)V
    .locals 4

    move-object v0, p0

    .line 34
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfz:Lcom/google/android/gms/internal/ads/zzdlf;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 36
    :cond_0
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzve;->errorCode:I

    .line 37
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhft:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdlq;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzdlq;-><init>(Lcom/google/android/gms/internal/ads/zzve;)V

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    .line 38
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhft:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdlt;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzdlt;-><init>(I)V

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    .line 39
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzdlf;->zzhfv:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdls;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdls;-><init>(I)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    return-void
.end method
