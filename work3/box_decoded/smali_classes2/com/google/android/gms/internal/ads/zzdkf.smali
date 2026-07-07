.class final Lcom/google/android/gms/internal/ads/zzdkf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/zzbre<",
        "+",
        "Lcom/google/android/gms/internal/ads/zzboc;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzhev:Lcom/google/android/gms/internal/ads/zzdkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdkn<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final zzhez:Lcom/google/android/gms/internal/ads/zzdpd;

.field private final zzhfg:Lcom/google/android/gms/internal/ads/zzdkk;

.field private zzhfh:Lcom/google/android/gms/internal/ads/zzdkj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpd;Lcom/google/android/gms/internal/ads/zzdkk;Lcom/google/android/gms/internal/ads/zzdkn;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdpd;",
            "Lcom/google/android/gms/internal/ads/zzdkk;",
            "Lcom/google/android/gms/internal/ads/zzdkn<",
            "TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzhez:Lcom/google/android/gms/internal/ads/zzdpd;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzhfg:Lcom/google/android/gms/internal/ads/zzdkk;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzhev:Lcom/google/android/gms/internal/ads/zzdkn;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdkf;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdkf;Lcom/google/android/gms/internal/ads/zzdkj;)Lcom/google/android/gms/internal/ads/zzdkj;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzhfh:Lcom/google/android/gms/internal/ads/zzdkj;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdkf;)Lcom/google/android/gms/internal/ads/zzdpq;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdkf;->zzaue()Lcom/google/android/gms/internal/ads/zzdpq;

    move-result-object p0

    return-object p0
.end method

.method private final zzaue()Lcom/google/android/gms/internal/ads/zzdpq;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzhev:Lcom/google/android/gms/internal/ads/zzdkn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzhfg:Lcom/google/android/gms/internal/ads/zzdkk;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkn;->zzc(Lcom/google/android/gms/internal/ads/zzdkk;)Lcom/google/android/gms/internal/ads/zzbrd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbrd;->zzafp()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbre;

    .line 25
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbre;->zzago()Lcom/google/android/gms/internal/ads/zzdnn;

    move-result-object v0

    .line 26
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzhio:Lcom/google/android/gms/internal/ads/zzvk;

    .line 27
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzhip:Ljava/lang/String;

    .line 28
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzhis:Lcom/google/android/gms/internal/ads/zzvw;

    .line 29
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzhez:Lcom/google/android/gms/internal/ads/zzdpd;

    invoke-interface {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdpd;->zza(Lcom/google/android/gms/internal/ads/zzvk;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvw;)Lcom/google/android/gms/internal/ads/zzdpq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdkf;)Lcom/google/android/gms/internal/ads/zzdkj;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzhfh:Lcom/google/android/gms/internal/ads/zzdkj;

    return-object p0
.end method


# virtual methods
.method public final zzaud()Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Lcom/google/android/gms/internal/ads/zzdkj;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzhfh:Lcom/google/android/gms/internal/ads/zzdkj;

    if-eqz v0, :cond_0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyr;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v0

    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzadf;->zzddc:Lcom/google/android/gms/internal/ads/zzacn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdkf;->zzaue()Lcom/google/android/gms/internal/ads/zzdpq;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzdkj;-><init>(Lcom/google/android/gms/internal/ads/zzatl;Lcom/google/android/gms/internal/ads/zzdpq;Lcom/google/android/gms/internal/ads/zzdkh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzhfh:Lcom/google/android/gms/internal/ads/zzdkj;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyr;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzhev:Lcom/google/android/gms/internal/ads/zzdkn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzhfg:Lcom/google/android/gms/internal/ads/zzdkk;

    .line 14
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkn;->zzc(Lcom/google/android/gms/internal/ads/zzdkk;)Lcom/google/android/gms/internal/ads/zzbrd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdjv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzhez:Lcom/google/android/gms/internal/ads/zzdpd;

    .line 15
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdpd;->zzavc()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdpk;->zzhlq:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdjv;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbrd;->zza(Lcom/google/android/gms/internal/ads/zzdjv;)Lcom/google/android/gms/internal/ads/zzbrd;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbrd;->zzafp()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbre;

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbre;->zzagh()Lcom/google/android/gms/internal/ads/zzboz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzhez:Lcom/google/android/gms/internal/ads/zzdpd;

    .line 19
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdpd;->zzavc()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzboz;->zza(Lcom/google/android/gms/internal/ads/zzdpk;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyi;->zzg(Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzdyi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdkg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdkg;-><init>(Lcom/google/android/gms/internal/ads/zzdkf;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkf;->executor:Ljava/util/concurrent/Executor;

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyi;->zza(Lcom/google/android/gms/internal/ads/zzdvm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyi;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/ads/zzcoh;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdkh;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdkh;-><init>(Lcom/google/android/gms/internal/ads/zzdkf;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdkf;->executor:Ljava/util/concurrent/Executor;

    .line 22
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdyi;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdvm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyi;

    move-result-object v0

    .line 23
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdke;->zzdza:Lcom/google/android/gms/internal/ads/zzdvm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkf;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyr;->zzb(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdvm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v0

    return-object v0
.end method
