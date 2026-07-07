.class public final Lcom/google/android/gms/internal/ads/zzue$zze;
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
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzue$zze$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzue$zze;",
        "Lcom/google/android/gms/internal/ads/zzue$zze$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static final zzcal:Lcom/google/android/gms/internal/ads/zzue$zze;

.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzue$zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcag:Ljava/lang/String;

.field private zzcah:Lcom/google/android/gms/internal/ads/zzekp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzekp<",
            "Lcom/google/android/gms/internal/ads/zzue$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzcai:I

.field private zzcaj:I

.field private zzcak:I

.field private zzdt:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzue$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzue$zze;-><init>()V

    .line 38
    sput-object v0, Lcom/google/android/gms/internal/ads/zzue$zze;->zzcal:Lcom/google/android/gms/internal/ads/zzue$zze;

    .line 39
    const-class v1, Lcom/google/android/gms/internal/ads/zzue$zze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzue$zze;->zzcag:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzue$zze;->zzbic()Lcom/google/android/gms/internal/ads/zzekp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzue$zze;->zzcah:Lcom/google/android/gms/internal/ads/zzekp;

    const/16 v0, 0x3e8

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzue$zze;->zzcai:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzue$zze;->zzcaj:I

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzue$zze;->zzcak:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzue$zze;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzue$zze;->zzbt(Ljava/lang/String;)V

    return-void
.end method

.method private final zzbt(Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzue$zze;->zzdt:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzue$zze;->zzdt:I

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzue$zze;->zzcag:Ljava/lang/String;

    return-void
.end method

.method public static zznu()Lcom/google/android/gms/internal/ads/zzue$zze;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/zzue$zze;->zzcal:Lcom/google/android/gms/internal/ads/zzue$zze;

    return-object v0
.end method

.method static synthetic zznv()Lcom/google/android/gms/internal/ads/zzue$zze;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/zzue$zze;->zzcal:Lcom/google/android/gms/internal/ads/zzue$zze;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/zzud;->zzds:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 31
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zze;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 24
    const-class p2, Lcom/google/android/gms/internal/ads/zzue$zze;

    monitor-enter p2

    .line 25
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zze;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzue$zze;->zzcal:Lcom/google/android/gms/internal/ads/zzue$zze;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 28
    sput-object p1, Lcom/google/android/gms/internal/ads/zzue$zze;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    .line 29
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

    .line 21
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zze;->zzcal:Lcom/google/android/gms/internal/ads/zzue$zze;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdt"

    aput-object v0, p1, p2

    const-string p2, "zzcag"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzcah"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 15
    const-class p3, Lcom/google/android/gms/internal/ads/zzue$zzc;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzcai"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuo;->zzw()Lcom/google/android/gms/internal/ads/zzekl;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzcaj"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuo;->zzw()Lcom/google/android/gms/internal/ads/zzekl;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzcak"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuo;->zzw()Lcom/google/android/gms/internal/ads/zzekl;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u100c\u0001\u0004\u100c\u0002\u0005\u100c\u0003"

    .line 20
    sget-object p3, Lcom/google/android/gms/internal/ads/zzue$zze;->zzcal:Lcom/google/android/gms/internal/ads/zzue$zze;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzue$zze;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzue$zze$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzue$zze$zza;-><init>(Lcom/google/android/gms/internal/ads/zzud;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzue$zze;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzue$zze;-><init>()V

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
