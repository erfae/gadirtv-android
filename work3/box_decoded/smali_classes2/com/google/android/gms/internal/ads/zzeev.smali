.class public final Lcom/google/android/gms/internal/ads/zzeev;
.super Lcom/google/android/gms/internal/ads/zzekh;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzeev$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzeev;",
        "Lcom/google/android/gms/internal/ads/zzeev$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzeev;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzicy:Lcom/google/android/gms/internal/ads/zzeev;


# instance fields
.field private zzicv:I

.field private zzicw:I

.field private zzicx:Lcom/google/android/gms/internal/ads/zzeiu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeev;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeev;-><init>()V

    .line 31
    sput-object v0, Lcom/google/android/gms/internal/ads/zzeev;->zzicy:Lcom/google/android/gms/internal/ads/zzeev;

    .line 32
    const-class v1, Lcom/google/android/gms/internal/ads/zzeev;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeiu;->zziiy:Lcom/google/android/gms/internal/ads/zzeiu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeev;->zzicx:Lcom/google/android/gms/internal/ads/zzeiu;

    return-void
.end method

.method public static zzbcu()Lcom/google/android/gms/internal/ads/zzeev;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeev;->zzicy:Lcom/google/android/gms/internal/ads/zzeev;

    return-object v0
.end method

.method static synthetic zzbcv()Lcom/google/android/gms/internal/ads/zzeev;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeev;->zzicy:Lcom/google/android/gms/internal/ads/zzeev;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeew;->zzds:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 25
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeev;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 18
    const-class p2, Lcom/google/android/gms/internal/ads/zzeev;

    monitor-enter p2

    .line 19
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeev;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzeev;->zzicy:Lcom/google/android/gms/internal/ads/zzeev;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 22
    sput-object p1, Lcom/google/android/gms/internal/ads/zzeev;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    .line 23
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

    .line 15
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeev;->zzicy:Lcom/google/android/gms/internal/ads/zzeev;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzicv"

    aput-object v0, p1, p2

    const-string p2, "zzicw"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzicx"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\u000c\u0002\u000c\u000b\n"

    .line 14
    sget-object p3, Lcom/google/android/gms/internal/ads/zzeev;->zzicy:Lcom/google/android/gms/internal/ads/zzeev;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzeev;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeev$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeev$zza;-><init>(Lcom/google/android/gms/internal/ads/zzeew;)V

    return-object p1

    .line 10
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeev;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeev;-><init>()V

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

.method public final zzbcr()Lcom/google/android/gms/internal/ads/zzeey;
    .locals 1

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeev;->zzicv:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeey;->zzff(I)Lcom/google/android/gms/internal/ads/zzeey;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeey;->zzide:Lcom/google/android/gms/internal/ads/zzeey;

    :cond_0
    return-object v0
.end method

.method public final zzbcs()Lcom/google/android/gms/internal/ads/zzefa;
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeev;->zzicw:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzefa;->zzfg(I)Lcom/google/android/gms/internal/ads/zzefa;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefa;->zzidl:Lcom/google/android/gms/internal/ads/zzefa;

    :cond_0
    return-object v0
.end method

.method public final zzbct()Lcom/google/android/gms/internal/ads/zzeiu;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeev;->zzicx:Lcom/google/android/gms/internal/ads/zzeiu;

    return-object v0
.end method
