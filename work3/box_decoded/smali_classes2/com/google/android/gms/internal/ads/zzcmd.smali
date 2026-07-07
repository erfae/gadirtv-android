.class public final Lcom/google/android/gms/internal/ads/zzcmd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final zzggb:Lcom/google/android/gms/internal/ads/zzdzc;

.field private final zzglz:Lcom/google/android/gms/internal/ads/zzdzc;

.field private final zzgma:Lcom/google/android/gms/internal/ads/zzcns;

.field private final zzgmb:Lcom/google/android/gms/internal/ads/zzeoz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeoz<",
            "Lcom/google/android/gms/internal/ads/zzcou;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzcns;Lcom/google/android/gms/internal/ads/zzeoz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzc;",
            "Lcom/google/android/gms/internal/ads/zzdzc;",
            "Lcom/google/android/gms/internal/ads/zzcns;",
            "Lcom/google/android/gms/internal/ads/zzeoz<",
            "Lcom/google/android/gms/internal/ads/zzcou;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmd;->zzglz:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmd;->zzggb:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmd;->zzgma:Lcom/google/android/gms/internal/ads/zzcns;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcmd;->zzgmb:Lcom/google/android/gms/internal/ads/zzeoz;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzatl;ILcom/google/android/gms/internal/ads/zzcoh;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmd;->zzgmb:Lcom/google/android/gms/internal/ads/zzeoz;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzeoz;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzcou;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzcou;->zzb(Lcom/google/android/gms/internal/ads/zzatl;I)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzatl;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatl;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatl;->packageName:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzm;->zzen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcoh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdok;->zzhjl:Lcom/google/android/gms/internal/ads/zzdok;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcoh;-><init>(Lcom/google/android/gms/internal/ads/zzdok;)V

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyr;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmd;->zzglz:Lcom/google/android/gms/internal/ads/zzdzc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcmg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcmg;-><init>(Lcom/google/android/gms/internal/ads/zzcmd;Lcom/google/android/gms/internal/ads/zzatl;)V

    .line 13
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzc;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v0

    .line 14
    const-class v1, Ljava/util/concurrent/ExecutionException;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcmf;->zzbon:Lcom/google/android/gms/internal/ads/zzdyb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcmd;->zzggb:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 15
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdyr;->zzb(Lcom/google/android/gms/internal/ads/zzdyz;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdyb;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v0

    .line 16
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 17
    const-class v2, Lcom/google/android/gms/internal/ads/zzcoh;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcmi;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcmi;-><init>(Lcom/google/android/gms/internal/ads/zzcmd;Lcom/google/android/gms/internal/ads/zzatl;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmd;->zzggb:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 18
    invoke-static {v0, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdyr;->zzb(Lcom/google/android/gms/internal/ads/zzdyz;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdyb;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzatl;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmd;->zzgma:Lcom/google/android/gms/internal/ads/zzcns;

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcns;->zzi(Lcom/google/android/gms/internal/ads/zzatl;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcvj:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyz;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    return-object p1
.end method
