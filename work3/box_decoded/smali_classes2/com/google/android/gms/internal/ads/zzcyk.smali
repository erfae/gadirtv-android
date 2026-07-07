.class final Lcom/google/android/gms/internal/ads/zzcyk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcyn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcyn<",
        "Lcom/google/android/gms/internal/ads/zzboc;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgwv:Lcom/google/android/gms/internal/ads/zzcyh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcyh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzgwv:Lcom/google/android/gms/internal/ads/zzcyh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzboc;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzgwv:Lcom/google/android/gms/internal/ads/zzcyh;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzgwv:Lcom/google/android/gms/internal/ads/zzcyh;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcyh;->zza(Lcom/google/android/gms/internal/ads/zzcyh;Z)Z

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzgwv:Lcom/google/android/gms/internal/ads/zzcyh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboc;->zzajz()Lcom/google/android/gms/internal/ads/zzbrp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcyh;->zza(Lcom/google/android/gms/internal/ads/zzcyh;Lcom/google/android/gms/internal/ads/zzyn;)Lcom/google/android/gms/internal/ads/zzyn;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboc;->zzajj()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzarx()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzgwv:Lcom/google/android/gms/internal/ads/zzcyh;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzgwv:Lcom/google/android/gms/internal/ads/zzcyh;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcyh;->zza(Lcom/google/android/gms/internal/ads/zzcyh;Z)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
