.class public final Lcom/google/android/gms/internal/ads/zzbyg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbyd;


# instance fields
.field private final zzdup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfqa:Lcom/google/android/gms/internal/ads/zzdrz;

.field private zzfzn:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdrz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdmu;->zzdup:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyg;->zzdup:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyg;->zzfqa:Lcom/google/android/gms/internal/ads/zzdrz;

    return-void
.end method


# virtual methods
.method public final zzalx()V
    .locals 2

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyg;->zzfzn:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyg;->zzfqa:Lcom/google/android/gms/internal/ads/zzdrz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyg;->zzdup:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzj(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyg;->zzfzn:Z

    :cond_0
    return-void
.end method
