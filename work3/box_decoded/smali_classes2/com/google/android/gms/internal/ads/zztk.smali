.class final Lcom/google/android/gms/internal/ads/zztk;
.super Lcom/google/android/gms/internal/ads/zzazq;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzazq<",
        "Lcom/google/android/gms/internal/ads/zztt;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbvh:Lcom/google/android/gms/internal/ads/zztl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zztl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztk;->zzbvh:Lcom/google/android/gms/internal/ads/zztl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzazq;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzbvh:Lcom/google/android/gms/internal/ads/zztl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zztl;->zza(Lcom/google/android/gms/internal/ads/zztl;)V

    .line 3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzazq;->cancel(Z)Z

    move-result p1

    return p1
.end method
