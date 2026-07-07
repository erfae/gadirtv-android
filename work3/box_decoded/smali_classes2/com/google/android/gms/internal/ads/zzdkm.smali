.class public final Lcom/google/android/gms/internal/ads/zzdkm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field public final zzhfj:Lcom/google/android/gms/internal/ads/zzatl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final zzhfk:Lcom/google/android/gms/internal/ads/zzdkk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdkk;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdkm;-><init>(Lcom/google/android/gms/internal/ads/zzdkk;Lcom/google/android/gms/internal/ads/zzatl;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdkk;Lcom/google/android/gms/internal/ads/zzatl;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzatl;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzhfk:Lcom/google/android/gms/internal/ads/zzdkk;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzhfj:Lcom/google/android/gms/internal/ads/zzatl;

    return-void
.end method
