.class public final Lcom/google/android/gms/internal/ads/zztt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final zzbio:Ljava/io/InputStream;

.field private final zzbuu:Z

.field private final zzbuv:Z

.field private final zzbuw:J

.field private final zzbux:Z


# direct methods
.method private constructor <init>(Ljava/io/InputStream;ZZJZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztt;->zzbio:Ljava/io/InputStream;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zztt;->zzbuu:Z

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zztt;->zzbux:Z

    .line 5
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zztt;->zzbuw:J

    .line 6
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zztt;->zzbuv:Z

    return-void
.end method

.method public static zza(Ljava/io/InputStream;ZZJZ)Lcom/google/android/gms/internal/ads/zztt;
    .locals 8

    .line 8
    new-instance v7, Lcom/google/android/gms/internal/ads/zztt;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zztt;-><init>(Ljava/io/InputStream;ZZJZ)V

    return-object v7
.end method


# virtual methods
.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztt;->zzbio:Ljava/io/InputStream;

    return-object v0
.end method

.method public final zzmy()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztt;->zzbuu:Z

    return v0
.end method

.method public final zzmz()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztt;->zzbuv:Z

    return v0
.end method

.method public final zzna()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zztt;->zzbuw:J

    return-wide v0
.end method

.method public final zznb()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztt;->zzbux:Z

    return v0
.end method
