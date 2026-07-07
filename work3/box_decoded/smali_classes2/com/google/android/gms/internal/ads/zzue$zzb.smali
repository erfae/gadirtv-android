.class public final Lcom/google/android/gms/internal/ads/zzue$zzb;
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
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzue$zzb$zzc;,
        Lcom/google/android/gms/internal/ads/zzue$zzb$zza;,
        Lcom/google/android/gms/internal/ads/zzue$zzb$zze;,
        Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;,
        Lcom/google/android/gms/internal/ads/zzue$zzb$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzue$zzb;",
        "Lcom/google/android/gms/internal/ads/zzue$zzb$zzc;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static final zzbyz:Lcom/google/android/gms/internal/ads/zzue$zzb;

.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzue$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbyy:Lcom/google/android/gms/internal/ads/zzekp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzekp<",
            "Lcom/google/android/gms/internal/ads/zzue$zzb$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzue$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzue$zzb;-><init>()V

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/ads/zzue$zzb;->zzbyz:Lcom/google/android/gms/internal/ads/zzue$zzb;

    .line 36
    const-class v1, Lcom/google/android/gms/internal/ads/zzue$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzue$zzb;->zzbic()Lcom/google/android/gms/internal/ads/zzekp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzb;->zzbyy:Lcom/google/android/gms/internal/ads/zzekp;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzue$zzb$zza;)V
    .locals 2

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzb;->zzbyy:Lcom/google/android/gms/internal/ads/zzekp;

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzekp;->zzbfk()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Lcom/google/android/gms/internal/ads/zzekp;)Lcom/google/android/gms/internal/ads/zzekp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzb;->zzbyy:Lcom/google/android/gms/internal/ads/zzekp;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzb;->zzbyy:Lcom/google/android/gms/internal/ads/zzekp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzekp;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzue$zzb;Lcom/google/android/gms/internal/ads/zzue$zzb$zza;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzue$zzb;->zza(Lcom/google/android/gms/internal/ads/zzue$zzb$zza;)V

    return-void
.end method

.method public static zznk()Lcom/google/android/gms/internal/ads/zzue$zzb$zzc;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzue$zzb;->zzbyz:Lcom/google/android/gms/internal/ads/zzue$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhx()Lcom/google/android/gms/internal/ads/zzekh$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzue$zzb$zzc;

    return-object v0
.end method

.method static synthetic zznl()Lcom/google/android/gms/internal/ads/zzue$zzb;
    .locals 1

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/ads/zzue$zzb;->zzbyz:Lcom/google/android/gms/internal/ads/zzue$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 13
    sget-object p2, Lcom/google/android/gms/internal/ads/zzud;->zzds:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 29
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzb;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 22
    const-class p2, Lcom/google/android/gms/internal/ads/zzue$zzb;

    monitor-enter p2

    .line 23
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzb;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_0

    .line 25
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzue$zzb;->zzbyz:Lcom/google/android/gms/internal/ads/zzue$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 26
    sput-object p1, Lcom/google/android/gms/internal/ads/zzue$zzb;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    .line 27
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

    .line 19
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzb;->zzbyz:Lcom/google/android/gms/internal/ads/zzue$zzb;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbyy"

    aput-object v0, p1, p2

    .line 16
    const-class p2, Lcom/google/android/gms/internal/ads/zzue$zzb$zza;

    aput-object p2, p1, p3

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 18
    sget-object p3, Lcom/google/android/gms/internal/ads/zzue$zzb;->zzbyz:Lcom/google/android/gms/internal/ads/zzue$zzb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzue$zzb;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzue$zzb$zzc;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzue$zzb$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzud;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzue$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzue$zzb;-><init>()V

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
