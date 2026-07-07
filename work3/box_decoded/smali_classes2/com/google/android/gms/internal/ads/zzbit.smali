.class final synthetic Lcom/google/android/gms/internal/ads/zzbit;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfov:Lcom/google/android/gms/internal/ads/zzbiu;

.field private final zzfow:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbiu;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbit;->zzfov:Lcom/google/android/gms/internal/ads/zzbiu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbit;->zzfow:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbit;->zzfov:Lcom/google/android/gms/internal/ads/zzbiu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbit;->zzfow:Ljava/lang/Runnable;

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzazj;->zzegt:Lcom/google/android/gms/internal/ads/zzdzc;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbiw;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzbiw;-><init>(Lcom/google/android/gms/internal/ads/zzbiu;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzdzc;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
