.class final Lcom/google/android/gms/internal/ads/zznl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field public final zzawh:J

.field public final zzbgj:J

.field public zzbgk:Z

.field public zzbgl:Lcom/google/android/gms/internal/ads/zzoi;

.field public zzbgm:Lcom/google/android/gms/internal/ads/zznl;


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zznl;->zzbgj:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 3
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zznl;->zzawh:J

    return-void
.end method


# virtual methods
.method public final zzik()Lcom/google/android/gms/internal/ads/zznl;
    .locals 1

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznl;->zzbgl:Lcom/google/android/gms/internal/ads/zzoi;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznl;->zzbgm:Lcom/google/android/gms/internal/ads/zznl;

    return-object v0
.end method
