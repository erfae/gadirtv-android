.class final synthetic Lcom/google/android/gms/internal/ads/zzbcg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzom;


# instance fields
.field private final zzdvw:[B

.field private final zzenp:Lcom/google/android/gms/internal/ads/zzom;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzom;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenp:Lcom/google/android/gms/internal/ads/zzom;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzdvw:[B

    return-void
.end method


# virtual methods
.method public final zzip()Lcom/google/android/gms/internal/ads/zzon;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenp:Lcom/google/android/gms/internal/ads/zzom;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzdvw:[B

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzom;->zzip()Lcom/google/android/gms/internal/ads/zzon;

    move-result-object v0

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzok;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzok;-><init>([B)V

    .line 4
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbcn;

    array-length v1, v1

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzbcn;-><init>(Lcom/google/android/gms/internal/ads/zzon;ILcom/google/android/gms/internal/ads/zzon;)V

    return-object v3
.end method
