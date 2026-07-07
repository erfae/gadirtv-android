.class final synthetic Lcom/google/android/gms/internal/ads/zzalw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdjp:Lcom/google/android/gms/internal/ads/zzalx;

.field private final zzdjq:Lcom/google/android/gms/internal/ads/zzako;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzalx;Lcom/google/android/gms/internal/ads/zzako;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzdjp:Lcom/google/android/gms/internal/ads/zzalx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzdjq:Lcom/google/android/gms/internal/ads/zzako;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzdjp:Lcom/google/android/gms/internal/ads/zzalx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzdjq:Lcom/google/android/gms/internal/ads/zzako;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalx;->zzdjr:Lcom/google/android/gms/internal/ads/zzals;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzals;->zza(Lcom/google/android/gms/internal/ads/zzals;)Lcom/google/android/gms/ads/internal/util/zzau;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzau;->zzh(Ljava/lang/Object;)V

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzako;->destroy()V

    return-void
.end method
