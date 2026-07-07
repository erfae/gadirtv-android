.class public final Lcom/google/android/gms/internal/ads/zzno;
.super Lcom/google/android/gms/internal/ads/zzhz;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# static fields
.field private static final zzbgn:Ljava/lang/Object;


# instance fields
.field private final zzaiq:Z

.field private final zzair:Z

.field private final zzbgo:J

.field private final zzbgp:J

.field private final zzbgq:J

.field private final zzbgr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzno;->zzbgn:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(JJJJZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhz;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzno;->zzbgo:J

    .line 5
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzno;->zzbgp:J

    const-wide/16 p1, 0x0

    .line 6
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzno;->zzbgq:J

    .line 7
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzno;->zzbgr:J

    .line 8
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzno;->zzaiq:Z

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzno;->zzair:Z

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 11

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v9, p3

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzno;-><init>(JJJJZZ)V

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzib;Z)Lcom/google/android/gms/internal/ads/zzib;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 27
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzpc;->zzc(III)I

    if-eqz p3, :cond_0

    .line 28
    sget-object p1, Lcom/google/android/gms/internal/ads/zzno;->zzbgn:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/4 v3, 0x0

    .line 29
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzno;->zzbgo:J

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p2

    move-object v1, v2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzib;->zza(Ljava/lang/Object;Ljava/lang/Object;IJJZ)Lcom/google/android/gms/internal/ads/zzib;

    move-result-object p1

    return-object p1
.end method

.method public final zza(ILcom/google/android/gms/internal/ads/zzie;ZJ)Lcom/google/android/gms/internal/ads/zzie;
    .locals 2

    const/4 p3, 0x0

    const/4 p4, 0x1

    .line 12
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzpc;->zzc(III)I

    .line 13
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzno;->zzaiq:Z

    iget-wide p4, p0, Lcom/google/android/gms/internal/ads/zzno;->zzbgp:J

    const/4 v0, 0x0

    .line 14
    iput-object v0, p2, Lcom/google/android/gms/internal/ads/zzie;->zzaie:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzie;->zzaio:J

    .line 16
    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzie;->zzaip:J

    .line 17
    iput-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzie;->zzaiq:Z

    .line 18
    iput-boolean p3, p2, Lcom/google/android/gms/internal/ads/zzie;->zzair:Z

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzie;->zzaiu:J

    .line 20
    iput-wide p4, p2, Lcom/google/android/gms/internal/ads/zzie;->zzaif:J

    .line 21
    iput p3, p2, Lcom/google/android/gms/internal/ads/zzie;->zzais:I

    .line 22
    iput p3, p2, Lcom/google/android/gms/internal/ads/zzie;->zzait:I

    .line 23
    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzie;->zzaiv:J

    return-object p2
.end method

.method public final zzc(Ljava/lang/Object;)I
    .locals 1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/zzno;->zzbgn:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final zzff()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzfg()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
