.class public final Lcom/google/android/gms/internal/ads/zzdjy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Lcom/google/android/gms/internal/ads/zzboc;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final zzgnh:Lcom/google/android/gms/internal/ads/zzatl;

.field public final zzhex:Lcom/google/android/gms/internal/ads/zzdpq;

.field public final zzhfe:Lcom/google/android/gms/internal/ads/zzdpn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpn<",
            "TAdT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpq;Lcom/google/android/gms/internal/ads/zzatl;Lcom/google/android/gms/internal/ads/zzdpn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdpq;",
            "Lcom/google/android/gms/internal/ads/zzatl;",
            "Lcom/google/android/gms/internal/ads/zzdpn<",
            "TAdT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjy;->zzhex:Lcom/google/android/gms/internal/ads/zzdpq;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjy;->zzgnh:Lcom/google/android/gms/internal/ads/zzatl;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdjy;->zzhfe:Lcom/google/android/gms/internal/ads/zzdpn;

    return-void
.end method
