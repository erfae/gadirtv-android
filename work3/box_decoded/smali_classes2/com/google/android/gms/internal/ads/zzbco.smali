.class public final Lcom/google/android/gms/internal/ads/zzbco;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbdf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbbe;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbbf;)Lcom/google/android/gms/internal/ads/zzbcx;
    .locals 0

    if-lez p2, :cond_2

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbca;->zzabr()I

    move-result p2

    .line 4
    iget p3, p4, Lcom/google/android/gms/internal/ads/zzbbf;->zzeky:I

    if-ge p2, p3, :cond_0

    .line 5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzbdi;-><init>(Lcom/google/android/gms/internal/ads/zzbbe;Lcom/google/android/gms/internal/ads/zzbbf;)V

    return-object p2

    .line 6
    :cond_0
    iget p3, p4, Lcom/google/android/gms/internal/ads/zzbbf;->zzeks:I

    if-ge p2, p3, :cond_1

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbdj;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzbdj;-><init>(Lcom/google/android/gms/internal/ads/zzbbe;Lcom/google/android/gms/internal/ads/zzbbf;)V

    return-object p2

    .line 8
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbdh;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzbdh;-><init>(Lcom/google/android/gms/internal/ads/zzbbe;)V

    return-object p2

    .line 9
    :cond_2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbde;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzbde;-><init>(Lcom/google/android/gms/internal/ads/zzbbe;)V

    return-object p2
.end method
