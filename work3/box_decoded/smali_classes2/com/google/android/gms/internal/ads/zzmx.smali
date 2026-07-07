.class final Lcom/google/android/gms/internal/ads/zzmx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznn;


# instance fields
.field private final track:I

.field private final synthetic zzbei:Lcom/google/android/gms/internal/ads/zzmo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzmo;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbei:Lcom/google/android/gms/internal/ads/zzmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzmx;->track:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzmx;)I
    .locals 0

    .line 10
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzmx;->track:I

    return p0
.end method


# virtual methods
.method public final isReady()Z
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbei:Lcom/google/android/gms/internal/ads/zzmo;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmx;->track:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzmo;->zzaz(I)Z

    move-result v0

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhr;Lcom/google/android/gms/internal/ads/zzjl;Z)I
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbei:Lcom/google/android/gms/internal/ads/zzmo;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmx;->track:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzmo;->zza(ILcom/google/android/gms/internal/ads/zzhr;Lcom/google/android/gms/internal/ads/zzjl;Z)I

    move-result p1

    return p1
.end method

.method public final zzeh(J)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbei:Lcom/google/android/gms/internal/ads/zzmo;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmx;->track:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzmo;->zze(IJ)V

    return-void
.end method

.method public final zzhs()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbei:Lcom/google/android/gms/internal/ads/zzmo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzmo;->zzhs()V

    return-void
.end method
