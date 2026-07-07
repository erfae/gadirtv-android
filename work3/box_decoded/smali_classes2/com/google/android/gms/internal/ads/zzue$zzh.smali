.class public final Lcom/google/android/gms/internal/ads/zzue$zzh;
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
    name = "zzh"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzue$zzh$zzb;,
        Lcom/google/android/gms/internal/ads/zzue$zzh$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzue$zzh;",
        "Lcom/google/android/gms/internal/ads/zzue$zzh$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static final zzcbg:Lcom/google/android/gms/internal/ads/zzue$zzh;

.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzue$zzh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcbc:I

.field private zzcbd:Lcom/google/android/gms/internal/ads/zzue$zzu;

.field private zzcbe:Ljava/lang/String;

.field private zzcbf:Ljava/lang/String;

.field private zzdt:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzue$zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzue$zzh;-><init>()V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/zzue$zzh;->zzcbg:Lcom/google/android/gms/internal/ads/zzue$zzh;

    .line 28
    const-class v1, Lcom/google/android/gms/internal/ads/zzue$zzh;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzh;->zzcbe:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzh;->zzcbf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zznz()Lcom/google/android/gms/internal/ads/zzue$zzh;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzue$zzh;->zzcbg:Lcom/google/android/gms/internal/ads/zzue$zzh;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/zzud;->zzds:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 22
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzh;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/gms/internal/ads/zzue$zzh;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzh;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzue$zzh;->zzcbg:Lcom/google/android/gms/internal/ads/zzue$zzh;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/ads/zzue$zzh;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    .line 20
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

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzh;->zzcbg:Lcom/google/android/gms/internal/ads/zzue$zzh;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdt"

    aput-object v0, p1, p2

    const-string p2, "zzcbc"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzue$zzh$zza;->zzw()Lcom/google/android/gms/internal/ads/zzekl;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzcbd"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzcbe"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzcbf"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0005\u0008\u0004\u0000\u0000\u0000\u0005\u100c\u0000\u0006\u1009\u0001\u0007\u1008\u0002\u0008\u1008\u0003"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/ads/zzue$zzh;->zzcbg:Lcom/google/android/gms/internal/ads/zzue$zzh;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzue$zzh;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzue$zzh$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzue$zzh$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzud;)V

    return-object p1

    .line 6
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzue$zzh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzue$zzh;-><init>()V

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
