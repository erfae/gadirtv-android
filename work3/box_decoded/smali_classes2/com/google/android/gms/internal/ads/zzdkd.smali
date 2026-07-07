.class public final Lcom/google/android/gms/internal/ads/zzdkd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdkl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestComponentT::",
        "Lcom/google/android/gms/internal/ads/zzbre<",
        "TAdT;>;AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdkl<",
        "TRequestComponentT;TAdT;>;"
    }
.end annotation


# instance fields
.field private zzhes:Lcom/google/android/gms/internal/ads/zzbre;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestComponentT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final declared-synchronized zzatz()Lcom/google/android/gms/internal/ads/zzbre;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRequestComponentT;"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkd;->zzhes:Lcom/google/android/gms/internal/ads/zzbre;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdkn;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdkm;",
            "Lcom/google/android/gms/internal/ads/zzdkn<",
            "TRequestComponentT;>;)",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "TAdT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdkm;->zzhfk:Lcom/google/android/gms/internal/ads/zzdkk;

    .line 4
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdkn;->zzc(Lcom/google/android/gms/internal/ads/zzdkk;)Lcom/google/android/gms/internal/ads/zzbrd;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbrd;->zzafp()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbre;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkd;->zzhes:Lcom/google/android/gms/internal/ads/zzbre;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbre;->zzagh()Lcom/google/android/gms/internal/ads/zzboz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboz;->zzakj()Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic zzaty()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdkd;->zzatz()Lcom/google/android/gms/internal/ads/zzbre;

    move-result-object v0

    return-object v0
.end method
