.class public final Lcom/google/android/gms/internal/ads/zzdkc;
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

.field private final zzhff:Lcom/google/android/gms/internal/ads/zzdkl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdkl<",
            "TRequestComponentT;TAdT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdkl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdkl<",
            "TRequestComponentT;TAdT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhff:Lcom/google/android/gms/internal/ads/zzdkl;

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

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhes:Lcom/google/android/gms/internal/ads/zzbre;
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
    .locals 1
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

    .line 5
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdkm;->zzhfj:Lcom/google/android/gms/internal/ads/zzatl;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdkm;->zzhfk:Lcom/google/android/gms/internal/ads/zzdkk;

    .line 7
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzdkn;->zzc(Lcom/google/android/gms/internal/ads/zzdkk;)Lcom/google/android/gms/internal/ads/zzbrd;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbrd;->zzafp()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbre;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhes:Lcom/google/android/gms/internal/ads/zzbre;

    .line 8
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbre;->zzagh()Lcom/google/android/gms/internal/ads/zzboz;

    move-result-object p2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdkm;->zzhfj:Lcom/google/android/gms/internal/ads/zzatl;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzboz;->zzb(Lcom/google/android/gms/internal/ads/zzatl;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhff:Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdkl;->zza(Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdkn;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhff:Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdkl;->zzaty()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbre;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhes:Lcom/google/android/gms/internal/ads/zzbre;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic zzaty()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdkc;->zzatz()Lcom/google/android/gms/internal/ads/zzbre;

    move-result-object v0

    return-object v0
.end method
