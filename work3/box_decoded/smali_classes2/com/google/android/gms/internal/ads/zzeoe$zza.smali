.class public final Lcom/google/android/gms/internal/ads/zzeoe$zza;
.super Lcom/google/android/gms/internal/ads/zzekh;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzeoe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzeoe$zza$zza;,
        Lcom/google/android/gms/internal/ads/zzeoe$zza$zzb;,
        Lcom/google/android/gms/internal/ads/zzeoe$zza$zzc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzeoe$zza;",
        "Lcom/google/android/gms/internal/ads/zzeoe$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzeoe$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziuq:Lcom/google/android/gms/internal/ads/zzeoe$zza;


# instance fields
.field private zzdt:I

.field private zziuj:I

.field private zziuk:Lcom/google/android/gms/internal/ads/zzeoe$zza$zzb;

.field private zziul:Lcom/google/android/gms/internal/ads/zzeiu;

.field private zzium:Lcom/google/android/gms/internal/ads/zzeiu;

.field private zziun:Z

.field private zziuo:Z

.field private zziup:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeoe$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeoe$zza;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/zzeoe$zza;->zziuq:Lcom/google/android/gms/internal/ads/zzeoe$zza;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/zzeoe$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zza;->zziup:B

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeiu;->zziiy:Lcom/google/android/gms/internal/ads/zzeiu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zza;->zziul:Lcom/google/android/gms/internal/ads/zzeiu;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeiu;->zziiy:Lcom/google/android/gms/internal/ads/zzeiu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zza;->zzium:Lcom/google/android/gms/internal/ads/zzeiu;

    return-void
.end method

.method static synthetic zzbkr()Lcom/google/android/gms/internal/ads/zzeoe$zza;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeoe$zza;->zziuq:Lcom/google/android/gms/internal/ads/zzeoe$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 6
    sget-object p3, Lcom/google/android/gms/internal/ads/zzeod;->zzds:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    int-to-byte p1, v0

    .line 24
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzeoe$zza;->zziup:B

    return-object v1

    .line 23
    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzeoe$zza;->zziup:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeoe$zza;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_2

    .line 16
    const-class p2, Lcom/google/android/gms/internal/ads/zzeoe$zza;

    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeoe$zza;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzeoe$zza;->zziuq:Lcom/google/android/gms/internal/ads/zzeoe$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/ads/zzeoe$zza;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    .line 21
    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    .line 13
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeoe$zza;->zziuq:Lcom/google/android/gms/internal/ads/zzeoe$zza;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzdt"

    aput-object p2, p1, p3

    const-string p2, "zziuj"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeoe$zza$zzc;->zzw()Lcom/google/android/gms/internal/ads/zzekl;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zziuk"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zziul"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzium"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zziun"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zziuo"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0001\u0001\u150c\u0000\u0002\u1009\u0001\u0003\u100a\u0002\u0004\u100a\u0003\u0005\u1007\u0004\u0006\u1007\u0005"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/ads/zzeoe$zza;->zziuq:Lcom/google/android/gms/internal/ads/zzeoe$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzeoe$zza;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeoe$zza$zza;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzeoe$zza$zza;-><init>(Lcom/google/android/gms/internal/ads/zzeod;)V

    return-object p1

    .line 7
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeoe$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeoe$zza;-><init>()V

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
