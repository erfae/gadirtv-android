.class public final Lcom/google/android/gms/internal/ads/zzue$zzf;
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
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzue$zzf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzue$zzf;",
        "Lcom/google/android/gms/internal/ads/zzue$zzf$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static final zzcas:Lcom/google/android/gms/internal/ads/zzue$zzf;

.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzue$zzf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcam:I

.field private zzcan:Lcom/google/android/gms/internal/ads/zzue$zzt;

.field private zzcao:Lcom/google/android/gms/internal/ads/zzue$zzt;

.field private zzcap:Lcom/google/android/gms/internal/ads/zzue$zzt;

.field private zzcaq:Lcom/google/android/gms/internal/ads/zzekp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzekp<",
            "Lcom/google/android/gms/internal/ads/zzue$zzt;",
            ">;"
        }
    .end annotation
.end field

.field private zzcar:I

.field private zzdt:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzue$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzue$zzf;-><init>()V

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/ads/zzue$zzf;->zzcas:Lcom/google/android/gms/internal/ads/zzue$zzf;

    .line 26
    const-class v1, Lcom/google/android/gms/internal/ads/zzue$zzf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzue$zzf;->zzbic()Lcom/google/android/gms/internal/ads/zzekp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzf;->zzcaq:Lcom/google/android/gms/internal/ads/zzekp;

    return-void
.end method

.method static synthetic zznw()Lcom/google/android/gms/internal/ads/zzue$zzf;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/zzue$zzf;->zzcas:Lcom/google/android/gms/internal/ads/zzue$zzf;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzud;->zzds:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 20
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzf;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 13
    const-class p2, Lcom/google/android/gms/internal/ads/zzue$zzf;

    monitor-enter p2

    .line 14
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzf;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_0

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzue$zzf;->zzcas:Lcom/google/android/gms/internal/ads/zzue$zzf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 17
    sput-object p1, Lcom/google/android/gms/internal/ads/zzue$zzf;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    .line 18
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

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzf;->zzcas:Lcom/google/android/gms/internal/ads/zzue$zzf;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdt"

    aput-object v0, p1, p2

    const-string p2, "zzcam"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzcan"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzcao"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzcap"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzcaq"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 7
    const-class p3, Lcom/google/android/gms/internal/ads/zzue$zzt;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzcar"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u001b\u0006\u1004\u0004"

    .line 9
    sget-object p3, Lcom/google/android/gms/internal/ads/zzue$zzf;->zzcas:Lcom/google/android/gms/internal/ads/zzue$zzf;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzue$zzf;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzue$zzf$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzue$zzf$zza;-><init>(Lcom/google/android/gms/internal/ads/zzud;)V

    return-object p1

    .line 5
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzue$zzf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzue$zzf;-><init>()V

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
