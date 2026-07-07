.class public final Lcom/google/android/gms/internal/ads/zzue$zzg;
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
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzue$zzg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzue$zzg;",
        "Lcom/google/android/gms/internal/ads/zzue$zzg$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static final zzcbb:Lcom/google/android/gms/internal/ads/zzue$zzg;

.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzue$zzg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcat:Ljava/lang/String;

.field private zzcau:Lcom/google/android/gms/internal/ads/zzue$zzt;

.field private zzcav:I

.field private zzcaw:Lcom/google/android/gms/internal/ads/zzue$zzu;

.field private zzcax:I

.field private zzcay:I

.field private zzcaz:I

.field private zzcba:I

.field private zzdt:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/ads/zzue$zzg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzue$zzg;-><init>()V

    .line 42
    sput-object v0, Lcom/google/android/gms/internal/ads/zzue$zzg;->zzcbb:Lcom/google/android/gms/internal/ads/zzue$zzg;

    .line 43
    const-class v1, Lcom/google/android/gms/internal/ads/zzue$zzg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzg;->zzcat:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzg;->zzcay:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzg;->zzcaz:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzg;->zzcba:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzue$zzg;Lcom/google/android/gms/internal/ads/zzue$zzu;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzue$zzg;->zza(Lcom/google/android/gms/internal/ads/zzue$zzu;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzue$zzg;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzue$zzg;->zzbv(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzue$zzu;)V
    .locals 0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzg;->zzcaw:Lcom/google/android/gms/internal/ads/zzue$zzu;

    .line 13
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzg;->zzdt:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzg;->zzdt:I

    return-void
.end method

.method private final zzbv(Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzg;->zzdt:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzg;->zzdt:I

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzg;->zzcat:Ljava/lang/String;

    return-void
.end method

.method public static zznx()Lcom/google/android/gms/internal/ads/zzue$zzg;
    .locals 1

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/ads/zzue$zzg;->zzcbb:Lcom/google/android/gms/internal/ads/zzue$zzg;

    return-object v0
.end method

.method static synthetic zzny()Lcom/google/android/gms/internal/ads/zzue$zzg;
    .locals 1

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/ads/zzue$zzg;->zzcbb:Lcom/google/android/gms/internal/ads/zzue$zzg;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/ads/zzud;->zzds:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 36
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 34
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzg;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 27
    const-class p2, Lcom/google/android/gms/internal/ads/zzue$zzg;

    monitor-enter p2

    .line 28
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzg;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_0

    .line 30
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzue$zzg;->zzcbb:Lcom/google/android/gms/internal/ads/zzue$zzg;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 31
    sput-object p1, Lcom/google/android/gms/internal/ads/zzue$zzg;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    .line 32
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

    .line 24
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzg;->zzcbb:Lcom/google/android/gms/internal/ads/zzue$zzg;

    return-object p1

    :pswitch_4
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdt"

    aput-object v0, p1, p2

    const-string p2, "zzcat"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzcau"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzcav"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzcaw"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzcax"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzcay"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuo;->zzw()Lcom/google/android/gms/internal/ads/zzekl;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzcaz"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuo;->zzw()Lcom/google/android/gms/internal/ads/zzekl;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzcba"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuo;->zzw()Lcom/google/android/gms/internal/ads/zzekl;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1009\u0001\u0003\u1004\u0002\u0004\u1009\u0003\u0005\u1004\u0004\u0006\u100c\u0005\u0007\u100c\u0006\u0008\u100c\u0007"

    .line 23
    sget-object p3, Lcom/google/android/gms/internal/ads/zzue$zzg;->zzcbb:Lcom/google/android/gms/internal/ads/zzue$zzg;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzue$zzg;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzue$zzg$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzue$zzg$zza;-><init>(Lcom/google/android/gms/internal/ads/zzud;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzue$zzg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzue$zzg;-><init>()V

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
