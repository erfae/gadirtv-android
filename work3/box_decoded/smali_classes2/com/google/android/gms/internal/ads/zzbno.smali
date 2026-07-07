.class public final Lcom/google/android/gms/internal/ads/zzbno;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final zzfua:Lcom/google/android/gms/internal/ads/zzagd;

.field private final zzfub:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzagd;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbno;->zzfua:Lcom/google/android/gms/internal/ads/zzagd;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbno;->zzfub:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final zzajt()Lcom/google/android/gms/internal/ads/zzagd;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbno;->zzfua:Lcom/google/android/gms/internal/ads/zzagd;

    return-object v0
.end method

.method public final zzaju()Ljava/lang/Runnable;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbno;->zzfub:Ljava/lang/Runnable;

    return-object v0
.end method
