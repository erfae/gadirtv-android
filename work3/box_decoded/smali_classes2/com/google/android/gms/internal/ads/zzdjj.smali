.class final Lcom/google/android/gms/internal/ads/zzdjj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcyn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcyn<",
        "Lcom/google/android/gms/internal/ads/zzblv;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzheg:Lcom/google/android/gms/internal/ads/zzdjf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdjf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjj;->zzheg:Lcom/google/android/gms/internal/ads/zzdjf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzblv;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjj;->zzheg:Lcom/google/android/gms/internal/ads/zzdjf;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjj;->zzheg:Lcom/google/android/gms/internal/ads/zzdjf;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdjf;->zzhee:Lcom/google/android/gms/internal/ads/zzblv;

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjj;->zzheg:Lcom/google/android/gms/internal/ads/zzdjf;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdjf;->zzhee:Lcom/google/android/gms/internal/ads/zzblv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzboc;->destroy()V

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjj;->zzheg:Lcom/google/android/gms/internal/ads/zzdjf;

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzdjf;->zzhee:Lcom/google/android/gms/internal/ads/zzblv;

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjj;->zzheg:Lcom/google/android/gms/internal/ads/zzdjf;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzdjf;->zza(Lcom/google/android/gms/internal/ads/zzdjf;Lcom/google/android/gms/internal/ads/zzblv;)V

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjj;->zzheg:Lcom/google/android/gms/internal/ads/zzdjf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdjf;->zza(Lcom/google/android/gms/internal/ads/zzdjf;)Lcom/google/android/gms/internal/ads/zzdir;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbly;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdjj;->zzheg:Lcom/google/android/gms/internal/ads/zzdjf;

    .line 12
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdjf;->zza(Lcom/google/android/gms/internal/ads/zzdjf;)Lcom/google/android/gms/internal/ads/zzdir;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzbly;-><init>(Lcom/google/android/gms/internal/ads/zzblv;Lcom/google/android/gms/internal/ads/zzxg;Lcom/google/android/gms/internal/ads/zzdir;)V

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdir;->zzb(Lcom/google/android/gms/internal/ads/zzsg;)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboc;->zzajj()V

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

.method public final zzarx()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjj;->zzheg:Lcom/google/android/gms/internal/ads/zzdjf;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjj;->zzheg:Lcom/google/android/gms/internal/ads/zzdjf;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzdjf;->zzhee:Lcom/google/android/gms/internal/ads/zzblv;

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
