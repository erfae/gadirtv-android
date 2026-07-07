.class final Lcom/google/android/gms/internal/ads/zzdqa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyo<",
        "Lcom/google/android/gms/internal/ads/zzdpn<",
        "TAdT;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzhms:Lcom/google/android/gms/internal/ads/zzdpv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdpv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhms:Lcom/google/android/gms/internal/ads/zzdpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdpn;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhms:Lcom/google/android/gms/internal/ads/zzdpv;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhms:Lcom/google/android/gms/internal/ads/zzdpv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpv;->zza(Lcom/google/android/gms/internal/ads/zzdpv;)Lcom/google/android/gms/internal/ads/zzdqc;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzdqc;->zza(Lcom/google/android/gms/internal/ads/zzdpn;)V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhms:Lcom/google/android/gms/internal/ads/zzdpv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpv;->zzb(Lcom/google/android/gms/internal/ads/zzdpv;)I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/ads/zzdqe;->zzhna:I

    if-eq v1, v2, :cond_0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhms:Lcom/google/android/gms/internal/ads/zzdpv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpv;->zzd(Lcom/google/android/gms/internal/ads/zzdpv;)Lcom/google/android/gms/internal/ads/zzdpd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhms:Lcom/google/android/gms/internal/ads/zzdpv;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdpv;->zzc(Lcom/google/android/gms/internal/ads/zzdpv;)Lcom/google/android/gms/internal/ads/zzdqb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdqb;->zzaua()Lcom/google/android/gms/internal/ads/zzdpq;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdpd;->zza(Lcom/google/android/gms/internal/ads/zzdpq;Lcom/google/android/gms/internal/ads/zzdpn;)Z

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhms:Lcom/google/android/gms/internal/ads/zzdpv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpv;->zzb(Lcom/google/android/gms/internal/ads/zzdpv;)I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/ads/zzdqe;->zzhmz:I

    if-ne v1, v2, :cond_1

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhms:Lcom/google/android/gms/internal/ads/zzdpv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpv;->zzc(Lcom/google/android/gms/internal/ads/zzdpv;)Lcom/google/android/gms/internal/ads/zzdqb;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdpv;->zza(Lcom/google/android/gms/internal/ads/zzdpv;Lcom/google/android/gms/internal/ads/zzdqb;)V

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhms:Lcom/google/android/gms/internal/ads/zzdpv;

    sget v2, Lcom/google/android/gms/internal/ads/zzdqe;->zzhmz:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdpv;->zza(Lcom/google/android/gms/internal/ads/zzdpv;I)I

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhms:Lcom/google/android/gms/internal/ads/zzdpv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpv;->zze(Lcom/google/android/gms/internal/ads/zzdpv;)Lcom/google/android/gms/internal/ads/zzdzh;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdzh;->set(Ljava/lang/Object;)Z

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhms:Lcom/google/android/gms/internal/ads/zzdpv;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhms:Lcom/google/android/gms/internal/ads/zzdpv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpv;->zza(Lcom/google/android/gms/internal/ads/zzdpv;)Lcom/google/android/gms/internal/ads/zzdqc;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzdqc;->zzb(Ljava/lang/Throwable;)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhms:Lcom/google/android/gms/internal/ads/zzdpv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpv;->zze(Lcom/google/android/gms/internal/ads/zzdpv;)Lcom/google/android/gms/internal/ads/zzdzh;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdzh;->setException(Ljava/lang/Throwable;)Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
