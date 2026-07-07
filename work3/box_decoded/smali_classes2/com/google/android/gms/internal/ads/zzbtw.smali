.class public final Lcom/google/android/gms/internal/ads/zzbtw;
.super Lcom/google/android/gms/internal/ads/zzbwk;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbsm;
.implements Lcom/google/android/gms/internal/ads/zzbto;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbwk<",
        "Lcom/google/android/gms/internal/ads/zzbub;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbsm;",
        "Lcom/google/android/gms/internal/ads/zzbto;"
    }
.end annotation


# instance fields
.field private final zzfps:Lcom/google/android/gms/internal/ads/zzdmu;

.field private zzfya:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzdmu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbxy<",
            "Lcom/google/android/gms/internal/ads/zzbub;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzdmu;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbwk;-><init>(Ljava/util/Set;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zzfya:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zzfps:Lcom/google/android/gms/internal/ads/zzdmu;

    return-void
.end method

.method private final zzala()V
    .locals 3

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcyd:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zzfya:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zzfps:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhm:Lcom/google/android/gms/internal/ads/zzvp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zzfps:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhm:Lcom/google/android/gms/internal/ads/zzvp;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvp;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbtz;-><init>(Lcom/google/android/gms/internal/ads/zzbtw;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwk;->zza(Lcom/google/android/gms/internal/ads/zzbwm;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onAdImpression()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zzfps:Lcom/google/android/gms/internal/ads/zzdmu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhgp:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zzfps:Lcom/google/android/gms/internal/ads/zzdmu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhgp:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zzfps:Lcom/google/android/gms/internal/ads/zzdmu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhgp:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbtw;->zzala()V

    :cond_1
    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzbub;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zzfps:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhm:Lcom/google/android/gms/internal/ads/zzvp;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbub;->zzb(Lcom/google/android/gms/internal/ads/zzvp;)V

    return-void
.end method

.method public final zzakz()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zzfps:Lcom/google/android/gms/internal/ads/zzdmu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhgp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbtw;->zzala()V

    :cond_0
    return-void
.end method
