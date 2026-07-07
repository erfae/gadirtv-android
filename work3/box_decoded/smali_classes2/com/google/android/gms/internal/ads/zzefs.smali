.class public final Lcom/google/android/gms/internal/ads/zzefs;
.super Lcom/google/android/gms/internal/ads/zzekh;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzefs$zza;,
        Lcom/google/android/gms/internal/ads/zzefs$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzefs;",
        "Lcom/google/android/gms/internal/ads/zzefs$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzefs;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziey:Lcom/google/android/gms/internal/ads/zzefs;


# instance fields
.field private zzieq:I

.field private zziex:Lcom/google/android/gms/internal/ads/zzekp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzekp<",
            "Lcom/google/android/gms/internal/ads/zzefs$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzefs;-><init>()V

    .line 38
    sput-object v0, Lcom/google/android/gms/internal/ads/zzefs;->zziey:Lcom/google/android/gms/internal/ads/zzefs;

    .line 39
    const-class v1, Lcom/google/android/gms/internal/ads/zzefs;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefs;->zzbic()Lcom/google/android/gms/internal/ads/zzekp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzefs;->zziex:Lcom/google/android/gms/internal/ads/zzekp;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzefs$zzb;)V
    .locals 2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefs;->zziex:Lcom/google/android/gms/internal/ads/zzekp;

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzekp;->zzbfk()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Lcom/google/android/gms/internal/ads/zzekp;)Lcom/google/android/gms/internal/ads/zzekp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzefs;->zziex:Lcom/google/android/gms/internal/ads/zzekp;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefs;->zziex:Lcom/google/android/gms/internal/ads/zzekp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzekp;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzefs;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzefs;->zzfk(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzefs;Lcom/google/android/gms/internal/ads/zzefs$zzb;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzefs;->zza(Lcom/google/android/gms/internal/ads/zzefs$zzb;)V

    return-void
.end method

.method public static zzbea()Lcom/google/android/gms/internal/ads/zzefs$zza;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefs;->zziey:Lcom/google/android/gms/internal/ads/zzefs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhx()Lcom/google/android/gms/internal/ads/zzekh$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzefs$zza;

    return-object v0
.end method

.method static synthetic zzbeb()Lcom/google/android/gms/internal/ads/zzefs;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefs;->zziey:Lcom/google/android/gms/internal/ads/zzefs;

    return-object v0
.end method

.method private final zzfk(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzefs;->zzieq:I

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeft;->zzds:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefs;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 24
    const-class p2, Lcom/google/android/gms/internal/ads/zzefs;

    monitor-enter p2

    .line 25
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefs;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzefs;->zziey:Lcom/google/android/gms/internal/ads/zzefs;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 28
    sput-object p1, Lcom/google/android/gms/internal/ads/zzefs;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefs;->zziey:Lcom/google/android/gms/internal/ads/zzefs;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzieq"

    aput-object v0, p1, p2

    const-string p2, "zziex"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 18
    const-class p3, Lcom/google/android/gms/internal/ads/zzefs$zzb;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    .line 20
    sget-object p3, Lcom/google/android/gms/internal/ads/zzefs;->zziey:Lcom/google/android/gms/internal/ads/zzefs;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzefs;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefs$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzefs$zza;-><init>(Lcom/google/android/gms/internal/ads/zzeft;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzefs;-><init>()V

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
