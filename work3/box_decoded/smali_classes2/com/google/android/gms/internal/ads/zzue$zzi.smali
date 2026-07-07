.class public final Lcom/google/android/gms/internal/ads/zzue$zzi;
.super Lcom/google/android/gms/internal/ads/zzekh;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzi"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzue$zzi$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzue$zzi;",
        "Lcom/google/android/gms/internal/ads/zzue$zzi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static final zzccc:Lcom/google/android/gms/internal/ads/zzue$zzi;

.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzue$zzi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcbp:I

.field private zzcbq:Ljava/lang/String;

.field private zzcbr:I

.field private zzcbs:I

.field private zzcbt:Lcom/google/android/gms/internal/ads/zzue$zzu;

.field private zzcbu:Lcom/google/android/gms/internal/ads/zzekq;

.field private zzcbv:Lcom/google/android/gms/internal/ads/zzue$zzg;

.field private zzcbw:Lcom/google/android/gms/internal/ads/zzue$zzh;

.field private zzcbx:Lcom/google/android/gms/internal/ads/zzue$zzm;

.field private zzcby:Lcom/google/android/gms/internal/ads/zzue$zza;

.field private zzcbz:Lcom/google/android/gms/internal/ads/zzue$zzo;

.field private zzcca:Lcom/google/android/gms/internal/ads/zzue$zzae;

.field private zzccb:Lcom/google/android/gms/internal/ads/zzue$zzb;

.field private zzdt:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Lcom/google/android/gms/internal/ads/zzue$zzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzue$zzi;-><init>()V

    .line 78
    sput-object v0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzccc:Lcom/google/android/gms/internal/ads/zzue$zzi;

    .line 79
    const-class v1, Lcom/google/android/gms/internal/ads/zzue$zzi;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzcbq:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzcbs:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzbib()Lcom/google/android/gms/internal/ads/zzekq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzcbu:Lcom/google/android/gms/internal/ads/zzekq;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzue$zza;)V
    .locals 0

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzcby:Lcom/google/android/gms/internal/ads/zzue$zza;

    .line 33
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzdt:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzdt:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzue$zzae;)V
    .locals 0

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzcca:Lcom/google/android/gms/internal/ads/zzue$zzae;

    .line 41
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzdt:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzdt:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzue$zzb;)V
    .locals 0

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzccb:Lcom/google/android/gms/internal/ads/zzue$zzb;

    .line 45
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzdt:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzdt:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzue$zzg;)V
    .locals 0

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzcbv:Lcom/google/android/gms/internal/ads/zzue$zzg;

    .line 28
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzdt:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzdt:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzue$zzi;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzob()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzue$zzi;Lcom/google/android/gms/internal/ads/zzue$zza;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzue$zzi;->zza(Lcom/google/android/gms/internal/ads/zzue$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzue$zzi;Lcom/google/android/gms/internal/ads/zzue$zzae;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzue$zzi;->zza(Lcom/google/android/gms/internal/ads/zzue$zzae;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzue$zzi;Lcom/google/android/gms/internal/ads/zzue$zzb;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzue$zzi;->zza(Lcom/google/android/gms/internal/ads/zzue$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzue$zzi;Lcom/google/android/gms/internal/ads/zzue$zzg;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzue$zzi;->zza(Lcom/google/android/gms/internal/ads/zzue$zzg;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzue$zzi;Lcom/google/android/gms/internal/ads/zzue$zzo;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzue$zzi;->zza(Lcom/google/android/gms/internal/ads/zzue$zzo;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzue$zzi;Ljava/lang/Iterable;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzue$zzi;->zza(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzue$zzi;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzbx(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzue$zzo;)V
    .locals 0

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzcbz:Lcom/google/android/gms/internal/ads/zzue$zzo;

    .line 37
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzdt:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzdt:I

    return-void
.end method

.method private final zza(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzcbu:Lcom/google/android/gms/internal/ads/zzekq;

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzekq;->zzbfk()Z

    move-result v1

    if-nez v1, :cond_1

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzekq;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 19
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzekq;->zzhh(I)Lcom/google/android/gms/internal/ads/zzekq;

    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzcbu:Lcom/google/android/gms/internal/ads/zzekq;

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzcbu:Lcom/google/android/gms/internal/ads/zzekq;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeik;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final zzbx(Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzdt:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzdt:I

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzcbq:Ljava/lang/String;

    return-void
.end method

.method private final zzob()V
    .locals 1

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzbib()Lcom/google/android/gms/internal/ads/zzekq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzcbu:Lcom/google/android/gms/internal/ads/zzekq;

    return-void
.end method

.method public static zzoe()Lcom/google/android/gms/internal/ads/zzue$zzi$zza;
    .locals 1

    .line 47
    sget-object v0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzccc:Lcom/google/android/gms/internal/ads/zzue$zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhx()Lcom/google/android/gms/internal/ads/zzekh$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzue$zzi$zza;

    return-object v0
.end method

.method static synthetic zzof()Lcom/google/android/gms/internal/ads/zzue$zzi;
    .locals 1

    .line 68
    sget-object v0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzccc:Lcom/google/android/gms/internal/ads/zzue$zzi;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 48
    sget-object p2, Lcom/google/android/gms/internal/ads/zzud;->zzds:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 67
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 65
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 56
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 58
    const-class p2, Lcom/google/android/gms/internal/ads/zzue$zzi;

    monitor-enter p2

    .line 59
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_0

    .line 61
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzccc:Lcom/google/android/gms/internal/ads/zzue$zzi;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 62
    sput-object p1, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    .line 63
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

    .line 55
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzccc:Lcom/google/android/gms/internal/ads/zzue$zzi;

    return-object p1

    :pswitch_4
    const/16 p1, 0xf

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdt"

    aput-object v0, p1, p2

    const-string p2, "zzcbp"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzcbq"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzcbr"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzcbs"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuo;->zzw()Lcom/google/android/gms/internal/ads/zzekl;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzcbt"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzcbu"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzcbv"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzcbw"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzcbx"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzcby"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzcbz"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzcca"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzccb"

    aput-object p3, p1, p2

    const-string p2, "\u0001\r\u0000\u0001\t\u0015\r\u0000\u0001\u0000\t\u1004\u0000\n\u1008\u0001\u000b\u100b\u0002\u000c\u100c\u0003\r\u1009\u0004\u000e\u0015\u000f\u1009\u0005\u0010\u1009\u0006\u0011\u1009\u0007\u0012\u1009\u0008\u0013\u1009\t\u0014\u1009\n\u0015\u1009\u000b"

    .line 54
    sget-object p3, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzccc:Lcom/google/android/gms/internal/ads/zzue$zzi;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzue$zzi;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 50
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzue$zzi$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzue$zzi$zza;-><init>(Lcom/google/android/gms/internal/ads/zzud;)V

    return-object p1

    .line 49
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzue$zzi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzue$zzi;-><init>()V

    return-object p1

    nop

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

.method public final zzoa()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzcbq:Ljava/lang/String;

    return-object v0
.end method

.method public final zzoc()Lcom/google/android/gms/internal/ads/zzue$zzg;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzcbv:Lcom/google/android/gms/internal/ads/zzue$zzg;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzue$zzg;->zznx()Lcom/google/android/gms/internal/ads/zzue$zzg;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzod()Lcom/google/android/gms/internal/ads/zzue$zza;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzi;->zzcby:Lcom/google/android/gms/internal/ads/zzue$zza;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzue$zza;->zzni()Lcom/google/android/gms/internal/ads/zzue$zza;

    move-result-object v0

    :cond_0
    return-object v0
.end method
