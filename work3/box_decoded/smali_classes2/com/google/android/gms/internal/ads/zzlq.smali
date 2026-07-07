.class final Lcom/google/android/gms/internal/ads/zzlq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field public zzaxa:I

.field public zzbah:Lcom/google/android/gms/internal/ads/zzlc;

.field public zzbai:J

.field public zzbaj:J

.field public zzbak:J

.field public zzbal:I

.field public zzbam:[J

.field public zzban:[I

.field public zzbao:[I

.field public zzbap:[I

.field public zzbaq:[J

.field public zzbar:[Z

.field public zzbas:Z

.field public zzbat:[Z

.field public zzbau:Lcom/google/android/gms/internal/ads/zzlr;

.field public zzbav:I

.field public zzbaw:Lcom/google/android/gms/internal/ads/zzpn;

.field public zzbax:Z

.field public zzbay:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzau(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzbaw:Lcom/google/android/gms/internal/ads/zzpn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->limit()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzpn;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzbaw:Lcom/google/android/gms/internal/ads/zzpn;

    .line 4
    :cond_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzbav:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzbas:Z

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzbax:Z

    return-void
.end method

.method public final zzav(I)J
    .locals 5

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzbaq:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzbap:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1
.end method
