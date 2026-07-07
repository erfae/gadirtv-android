.class final Lcom/google/android/gms/internal/ads/zzali;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdja:Lcom/google/android/gms/internal/ads/zzals;

.field private final synthetic zzdjb:Lcom/google/android/gms/internal/ads/zzako;

.field private final synthetic zzdjc:Lcom/google/android/gms/internal/ads/zzalb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzalb;Lcom/google/android/gms/internal/ads/zzals;Lcom/google/android/gms/internal/ads/zzako;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzali;->zzdjc:Lcom/google/android/gms/internal/ads/zzalb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzali;->zzdja:Lcom/google/android/gms/internal/ads/zzals;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzali;->zzdjb:Lcom/google/android/gms/internal/ads/zzako;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzdjc:Lcom/google/android/gms/internal/ads/zzalb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalb;->zza(Lcom/google/android/gms/internal/ads/zzalb;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzali;->zzdja:Lcom/google/android/gms/internal/ads/zzals;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzazx;->getStatus()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzali;->zzdja:Lcom/google/android/gms/internal/ads/zzals;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzazx;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzali;->zzdja:Lcom/google/android/gms/internal/ads/zzals;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzazx;->reject()V

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzazj;->zzegt:Lcom/google/android/gms/internal/ads/zzdzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzali;->zzdjb:Lcom/google/android/gms/internal/ads/zzako;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzall;->zzb(Lcom/google/android/gms/internal/ads/zzako;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdzc;->execute(Ljava/lang/Runnable;)V

    const-string v1, "Could not receive loaded message in a timely manner. Rejecting."

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzee(Ljava/lang/String;)V

    .line 9
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
