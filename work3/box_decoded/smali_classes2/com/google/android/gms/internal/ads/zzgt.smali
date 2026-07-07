.class public final Lcom/google/android/gms/internal/ads/zzgt;
.super Lcom/google/android/gms/internal/ads/zzekh;
.source "com.google.android.gms:play-services-gass@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzgt$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzgt;",
        "Lcom/google/android/gms/internal/ads/zzgt$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static final zzacf:Lcom/google/android/gms/internal/ads/zzgt;

.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzgt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaca:Ljava/lang/String;

.field private zzacb:Ljava/lang/String;

.field private zzacc:J

.field private zzacd:J

.field private zzace:J

.field private zzdt:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>()V

    .line 57
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgt;->zzacf:Lcom/google/android/gms/internal/ads/zzgt;

    .line 58
    const-class v1, Lcom/google/android/gms/internal/ads/zzgt;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaca:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacb:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzgt;J)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgt;->zzdg(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzgt;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgt;->zzat(Ljava/lang/String;)V

    return-void
.end method

.method private final zzat(Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzdt:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzdt:I

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaca:Ljava/lang/String;

    return-void
.end method

.method private final zzau(Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzdt:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzdt:I

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacb:Ljava/lang/String;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzgt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeks;
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgt;->zzacf:Lcom/google/android/gms/internal/ads/zzgt;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Lcom/google/android/gms/internal/ads/zzekh;Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzekh;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgt;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzgt;J)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgt;->zzdh(J)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzgt;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgt;->zzau(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzgt;J)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgt;->zzdi(J)V

    return-void
.end method

.method private final zzdg(J)V
    .locals 1

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzdt:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzdt:I

    .line 17
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacc:J

    return-void
.end method

.method private final zzdh(J)V
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzdt:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzdt:I

    .line 21
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacd:J

    return-void
.end method

.method private final zzdi(J)V
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzdt:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzdt:I

    .line 25
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzace:J

    return-void
.end method

.method public static zzdl()Lcom/google/android/gms/internal/ads/zzgt$zza;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgt;->zzacf:Lcom/google/android/gms/internal/ads/zzgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhx()Lcom/google/android/gms/internal/ads/zzekh$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgt$zza;

    return-object v0
.end method

.method public static zzdm()Lcom/google/android/gms/internal/ads/zzgt;
    .locals 1

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgt;->zzacf:Lcom/google/android/gms/internal/ads/zzgt;

    return-object v0
.end method

.method static synthetic zzdn()Lcom/google/android/gms/internal/ads/zzgt;
    .locals 1

    .line 50
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgt;->zzacf:Lcom/google/android/gms/internal/ads/zzgt;

    return-object v0
.end method

.method public static zzl(Lcom/google/android/gms/internal/ads/zzeiu;)Lcom/google/android/gms/internal/ads/zzgt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeks;
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgt;->zzacf:Lcom/google/android/gms/internal/ads/zzgt;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Lcom/google/android/gms/internal/ads/zzekh;Lcom/google/android/gms/internal/ads/zzeiu;)Lcom/google/android/gms/internal/ads/zzekh;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgt;

    return-object p0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 30
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgs;->zzds:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 48
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 46
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgt;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 39
    const-class p2, Lcom/google/android/gms/internal/ads/zzgt;

    monitor-enter p2

    .line 40
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgt;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_0

    .line 42
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzgt;->zzacf:Lcom/google/android/gms/internal/ads/zzgt;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 43
    sput-object p1, Lcom/google/android/gms/internal/ads/zzgt;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    .line 44
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 36
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgt;->zzacf:Lcom/google/android/gms/internal/ads/zzgt;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdt"

    aput-object v0, p1, p2

    const-string p2, "zzaca"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzacb"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzacc"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzacd"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzace"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1003\u0002\u0004\u1003\u0003\u0005\u1003\u0004"

    .line 35
    sget-object p3, Lcom/google/android/gms/internal/ads/zzgt;->zzacf:Lcom/google/android/gms/internal/ads/zzgt;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzgt;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgt$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgt$zza;-><init>(Lcom/google/android/gms/internal/ads/zzgs;)V

    return-object p1

    .line 31
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgt;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzdg()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaca:Ljava/lang/String;

    return-object v0
.end method

.method public final zzdh()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzdi()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacc:J

    return-wide v0
.end method

.method public final zzdj()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacd:J

    return-wide v0
.end method

.method public final zzdk()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzace:J

    return-wide v0
.end method
