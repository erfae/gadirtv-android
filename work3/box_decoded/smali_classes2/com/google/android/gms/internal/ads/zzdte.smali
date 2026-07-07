.class public final Lcom/google/android/gms/internal/ads/zzdte;
.super Lcom/google/android/gms/internal/ads/zzekh;
.source "com.google.android.gms:play-services-gass@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdte$zzb;,
        Lcom/google/android/gms/internal/ads/zzdte$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzdte;",
        "Lcom/google/android/gms/internal/ads/zzdte$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzdte;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhqn:Lcom/google/android/gms/internal/ads/zzekn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzekn<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/ads/zzdte$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhqr:Lcom/google/android/gms/internal/ads/zzdte;


# instance fields
.field private zzdt:I

.field private zzhqm:Lcom/google/android/gms/internal/ads/zzeko;

.field private zzhqo:Ljava/lang/String;

.field private zzhqp:Ljava/lang/String;

.field private zzhqq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdtd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdte;->zzhqn:Lcom/google/android/gms/internal/ads/zzekn;

    .line 44
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdte;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdte;-><init>()V

    .line 45
    sput-object v0, Lcom/google/android/gms/internal/ads/zzdte;->zzhqr:Lcom/google/android/gms/internal/ads/zzdte;

    .line 46
    const-class v1, Lcom/google/android/gms/internal/ads/zzdte;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdte;->zzbia()Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdte;->zzhqm:Lcom/google/android/gms/internal/ads/zzeko;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdte;->zzhqo:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdte;->zzhqp:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdte;->zzhqq:Ljava/lang/String;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdte$zza;)V
    .locals 2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdte;->zzhqm:Lcom/google/android/gms/internal/ads/zzeko;

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeko;->zzbfk()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdte;->zzhqm:Lcom/google/android/gms/internal/ads/zzeko;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdte;->zzhqm:Lcom/google/android/gms/internal/ads/zzeko;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdte$zza;->zzv()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzeko;->zzhg(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdte;Lcom/google/android/gms/internal/ads/zzdte$zza;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdte;->zza(Lcom/google/android/gms/internal/ads/zzdte$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdte;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdte;->zzha(Ljava/lang/String;)V

    return-void
.end method

.method public static zzaxj()Lcom/google/android/gms/internal/ads/zzdte$zzb;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdte;->zzhqr:Lcom/google/android/gms/internal/ads/zzdte;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhx()Lcom/google/android/gms/internal/ads/zzekh$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdte$zzb;

    return-object v0
.end method

.method static synthetic zzaxk()Lcom/google/android/gms/internal/ads/zzdte;
    .locals 1

    .line 40
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdte;->zzhqr:Lcom/google/android/gms/internal/ads/zzdte;

    return-object v0
.end method

.method private final zzha(Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdte;->zzdt:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdte;->zzdt:I

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdte;->zzhqo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 20
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdtf;->zzds:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 39
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 37
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 28
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdte;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 30
    const-class p2, Lcom/google/android/gms/internal/ads/zzdte;

    monitor-enter p2

    .line 31
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdte;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_0

    .line 33
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdte;->zzhqr:Lcom/google/android/gms/internal/ads/zzdte;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 34
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdte;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    .line 35
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

    .line 27
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdte;->zzhqr:Lcom/google/android/gms/internal/ads/zzdte;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdt"

    aput-object v0, p1, p2

    const-string p2, "zzhqm"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdte$zza;->zzw()Lcom/google/android/gms/internal/ads/zzekl;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzhqo"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzhqp"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzhqq"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001e\u0002\u1008\u0000\u0003\u1008\u0001\u0004\u1008\u0002"

    .line 26
    sget-object p3, Lcom/google/android/gms/internal/ads/zzdte;->zzhqr:Lcom/google/android/gms/internal/ads/zzdte;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzdte;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdte$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdte$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdtd;)V

    return-object p1

    .line 21
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdte;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdte;-><init>()V

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
