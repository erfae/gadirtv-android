.class public final Lcom/google/android/gms/internal/ads/zzeeq;
.super Lcom/google/android/gms/internal/ads/zzekh;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzeeq$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzeeq;",
        "Lcom/google/android/gms/internal/ads/zzeeq$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzeeq;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzicp:Lcom/google/android/gms/internal/ads/zzeeq;


# instance fields
.field private zzicm:Lcom/google/android/gms/internal/ads/zzeev;

.field private zzicn:Lcom/google/android/gms/internal/ads/zzeem;

.field private zzico:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeeq;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/zzeeq;->zzicp:Lcom/google/android/gms/internal/ads/zzeeq;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    return-void
.end method

.method public static zzbch()Lcom/google/android/gms/internal/ads/zzeeq;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeeq;->zzicp:Lcom/google/android/gms/internal/ads/zzeeq;

    return-object v0
.end method

.method static synthetic zzbci()Lcom/google/android/gms/internal/ads/zzeeq;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeeq;->zzicp:Lcom/google/android/gms/internal/ads/zzeeq;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeep;->zzds:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 23
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeeq;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 16
    const-class p2, Lcom/google/android/gms/internal/ads/zzeeq;

    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeeq;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzeeq;->zzicp:Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/ads/zzeeq;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    .line 21
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

    .line 13
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeeq;->zzicp:Lcom/google/android/gms/internal/ads/zzeeq;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzicm"

    aput-object v0, p1, p2

    const-string p2, "zzicn"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzico"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u000c"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/ads/zzeeq;->zzicp:Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzeeq;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeeq$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeeq$zza;-><init>(Lcom/google/android/gms/internal/ads/zzeep;)V

    return-object p1

    .line 8
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeeq;-><init>()V

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

.method public final zzbce()Lcom/google/android/gms/internal/ads/zzeev;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzicm:Lcom/google/android/gms/internal/ads/zzeev;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeev;->zzbcu()Lcom/google/android/gms/internal/ads/zzeev;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzbcf()Lcom/google/android/gms/internal/ads/zzeem;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzicn:Lcom/google/android/gms/internal/ads/zzeem;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeem;->zzbca()Lcom/google/android/gms/internal/ads/zzeem;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzbcg()Lcom/google/android/gms/internal/ads/zzeek;
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzico:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeek;->zzfc(I)Lcom/google/android/gms/internal/ads/zzeek;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeek;->zzicg:Lcom/google/android/gms/internal/ads/zzeek;

    :cond_0
    return-object v0
.end method
