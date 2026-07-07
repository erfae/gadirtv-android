.class public final Lcom/google/android/gms/internal/ads/zzby$zzc;
.super Lcom/google/android/gms/internal/ads/zzekh;
.source "com.google.android.gms:play-services-gass@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzby$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzby$zzc;",
        "Lcom/google/android/gms/internal/ads/zzby$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzby$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfj:Lcom/google/android/gms/internal/ads/zzby$zzc;


# instance fields
.field private zzdt:I

.field private zzfd:Ljava/lang/String;

.field private zzfe:Ljava/lang/String;

.field private zzff:Ljava/lang/String;

.field private zzfg:Ljava/lang/String;

.field private zzfh:Ljava/lang/String;

.field private zzfi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzby$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzby$zzc;-><init>()V

    .line 32
    sput-object v0, Lcom/google/android/gms/internal/ads/zzby$zzc;->zzfj:Lcom/google/android/gms/internal/ads/zzby$zzc;

    .line 33
    const-class v1, Lcom/google/android/gms/internal/ads/zzby$zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzby$zzc;->zzfd:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzby$zzc;->zzfe:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzby$zzc;->zzff:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzby$zzc;->zzfg:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzby$zzc;->zzfh:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzby$zzc;->zzfi:Ljava/lang/String;

    return-void
.end method

.method public static zzag()Lcom/google/android/gms/internal/ads/zzby$zzc;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/zzby$zzc;->zzfj:Lcom/google/android/gms/internal/ads/zzby$zzc;

    return-object v0
.end method

.method static synthetic zzah()Lcom/google/android/gms/internal/ads/zzby$zzc;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/zzby$zzc;->zzfj:Lcom/google/android/gms/internal/ads/zzby$zzc;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 10
    sget-object p2, Lcom/google/android/gms/internal/ads/zzca;->zzds:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 28
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 26
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzby$zzc;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 19
    const-class p2, Lcom/google/android/gms/internal/ads/zzby$zzc;

    monitor-enter p2

    .line 20
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzby$zzc;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_0

    .line 22
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzby$zzc;->zzfj:Lcom/google/android/gms/internal/ads/zzby$zzc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 23
    sput-object p1, Lcom/google/android/gms/internal/ads/zzby$zzc;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    .line 24
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

    .line 16
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzby$zzc;->zzfj:Lcom/google/android/gms/internal/ads/zzby$zzc;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdt"

    aput-object v0, p1, p2

    const-string p2, "zzfd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzfe"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzff"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzfg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzfh"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzfi"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1008\u0005"

    .line 15
    sget-object p3, Lcom/google/android/gms/internal/ads/zzby$zzc;->zzfj:Lcom/google/android/gms/internal/ads/zzby$zzc;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzby$zzc;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzby$zzc$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzby$zzc$zza;-><init>(Lcom/google/android/gms/internal/ads/zzca;)V

    return-object p1

    .line 11
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzby$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzby$zzc;-><init>()V

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

.method public final zzaf()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzby$zzc;->zzfd:Ljava/lang/String;

    return-object v0
.end method
