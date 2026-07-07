.class public final Lcom/google/android/gms/internal/ads/zzdsv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.5.0"


# instance fields
.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzhqe:Lcom/google/android/gms/internal/ads/zzdtb;

.field private final zzhqf:Lcom/google/android/gms/internal/ads/zzdtb;

.field private zzhqg:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzhqh:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzvs:Lcom/google/android/gms/internal/ads/zzdsi;

.field private final zzyk:Lcom/google/android/gms/internal/ads/zzdsj;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdsi;Lcom/google/android/gms/internal/ads/zzdsj;Lcom/google/android/gms/internal/ads/zzdsz;Lcom/google/android/gms/internal/ads/zzdtc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsv;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsv;->executor:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsv;->zzvs:Lcom/google/android/gms/internal/ads/zzdsi;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdsv;->zzyk:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdsv;->zzhqe:Lcom/google/android/gms/internal/ads/zzdtb;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdsv;->zzhqf:Lcom/google/android/gms/internal/ads/zzdtb;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/internal/ads/zzcf$zza;)Lcom/google/android/gms/internal/ads/zzcf$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;"
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzcf$zza;

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdsi;Lcom/google/android/gms/internal/ads/zzdsj;)Lcom/google/android/gms/internal/ads/zzdsv;
    .locals 8

    .line 9
    new-instance v7, Lcom/google/android/gms/internal/ads/zzdsv;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdsz;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzdsz;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdtc;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzdtc;-><init>()V

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdsv;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdsi;Lcom/google/android/gms/internal/ads/zzdsj;Lcom/google/android/gms/internal/ads/zzdsz;Lcom/google/android/gms/internal/ads/zzdtc;)V

    .line 11
    iget-object p0, v7, Lcom/google/android/gms/internal/ads/zzdsv;->zzyk:Lcom/google/android/gms/internal/ads/zzdsj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsj;->zzawy()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 12
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdsy;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzdsy;-><init>(Lcom/google/android/gms/internal/ads/zzdsv;)V

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ads/zzdsv;->zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    iput-object p0, v7, Lcom/google/android/gms/internal/ads/zzdsv;->zzhqg:Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, v7, Lcom/google/android/gms/internal/ads/zzdsv;->zzhqe:Lcom/google/android/gms/internal/ads/zzdtb;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzdtb;->zzaxi()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    iput-object p0, v7, Lcom/google/android/gms/internal/ads/zzdsv;->zzhqg:Lcom/google/android/gms/tasks/Task;

    .line 14
    :goto_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdsx;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzdsx;-><init>(Lcom/google/android/gms/internal/ads/zzdsv;)V

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ads/zzdsv;->zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    iput-object p0, v7, Lcom/google/android/gms/internal/ads/zzdsv;->zzhqh:Lcom/google/android/gms/tasks/Task;

    return-object v7
.end method

.method private final zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsv;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsv;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdta;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdta;-><init>(Lcom/google/android/gms/internal/ads/zzdsv;)V

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zzaxe()Lcom/google/android/gms/internal/ads/zzcf$zza;
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsv;->zzhqg:Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsv;->zzhqe:Lcom/google/android/gms/internal/ads/zzdtb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdtb;->zzaxi()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdsv;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/internal/ads/zzcf$zza;)Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzaxf()Lcom/google/android/gms/internal/ads/zzcf$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsv;->zzhqf:Lcom/google/android/gms/internal/ads/zzdtb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsv;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdtb;->zzcm(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzaxg()Lcom/google/android/gms/internal/ads/zzcf$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsv;->zzhqe:Lcom/google/android/gms/internal/ads/zzdtb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsv;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdtb;->zzcm(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzc(Ljava/lang/Exception;)V
    .locals 4

    .line 24
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsv;->zzvs:Lcom/google/android/gms/internal/ads/zzdsi;

    const/16 v1, 0x7e9

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdsi;->zza(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zzco()Lcom/google/android/gms/internal/ads/zzcf$zza;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsv;->zzhqh:Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsv;->zzhqf:Lcom/google/android/gms/internal/ads/zzdtb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdtb;->zzaxi()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdsv;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/internal/ads/zzcf$zza;)Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    return-object v0
.end method
