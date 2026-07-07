.class public final Lcom/google/android/gms/internal/ads/zzib;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field public zzafm:Ljava/lang/Object;

.field private zzags:I

.field private zzaie:Ljava/lang/Object;

.field public zzaif:J

.field private zzaig:Z

.field private zzaih:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/lang/Object;IJJZ)Lcom/google/android/gms/internal/ads/zzib;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaie:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzib;->zzafm:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzags:I

    .line 5
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaif:J

    const-wide/16 p2, 0x0

    .line 6
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaih:J

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaig:Z

    return-object p0
.end method

.method public final zzfh()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaih:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhb;->zzdm(J)J

    move-result-wide v0

    return-wide v0
.end method
