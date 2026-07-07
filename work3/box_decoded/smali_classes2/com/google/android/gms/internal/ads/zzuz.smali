.class public final Lcom/google/android/gms/internal/ads/zzuz;
.super Lcom/google/android/gms/internal/ads/zzwr;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"


# instance fields
.field private final zzcgp:Lcom/google/android/gms/internal/ads/zzva;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzva;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwr;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuz;->zzcgp:Lcom/google/android/gms/internal/ads/zzva;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuz;->zzcgp:Lcom/google/android/gms/internal/ads/zzva;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzva;->onAdClicked()V

    return-void
.end method
