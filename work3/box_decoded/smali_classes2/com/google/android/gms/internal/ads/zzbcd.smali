.class final synthetic Lcom/google/android/gms/internal/ads/zzbcd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzegi:Ljava/util/Map;

.field private final zzenn:Lcom/google/android/gms/internal/ads/zzbbe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbe;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcd;->zzenn:Lcom/google/android/gms/internal/ads/zzbbe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcd;->zzegi:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcd;->zzenn:Lcom/google/android/gms/internal/ads/zzbbe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcd;->zzegi:Ljava/util/Map;

    const-string v2, "onGcacheInfoEvent"

    .line 2
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbbe;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
