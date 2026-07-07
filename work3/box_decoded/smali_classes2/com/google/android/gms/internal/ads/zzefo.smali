.class public final Lcom/google/android/gms/internal/ads/zzefo;
.super Lcom/google/android/gms/internal/ads/zzekh;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzefo$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzefo;",
        "Lcom/google/android/gms/internal/ads/zzefo$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzefo;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziep:Lcom/google/android/gms/internal/ads/zzefo;


# instance fields
.field private zzids:Ljava/lang/String;

.field private zziel:Ljava/lang/String;

.field private zziem:I

.field private zzien:Z

.field private zzieo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzefo;-><init>()V

    .line 32
    sput-object v0, Lcom/google/android/gms/internal/ads/zzefo;->zziep:Lcom/google/android/gms/internal/ads/zzefo;

    .line 33
    const-class v1, Lcom/google/android/gms/internal/ads/zzefo;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzefo;->zziel:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzefo;->zzids:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzefo;->zzieo:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzbdr()Lcom/google/android/gms/internal/ads/zzefo;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefo;->zziep:Lcom/google/android/gms/internal/ads/zzefo;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/ads/zzefp;->zzds:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 29
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 27
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefo;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 20
    const-class p2, Lcom/google/android/gms/internal/ads/zzefo;

    monitor-enter p2

    .line 21
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefo;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_0

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzefo;->zziep:Lcom/google/android/gms/internal/ads/zzefo;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 24
    sput-object p1, Lcom/google/android/gms/internal/ads/zzefo;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    .line 25
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

    .line 17
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefo;->zziep:Lcom/google/android/gms/internal/ads/zzefo;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zziel"

    aput-object v0, p1, p2

    const-string p2, "zzids"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zziem"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzien"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzieo"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u000b\u0004\u0007\u0005\u0208"

    .line 16
    sget-object p3, Lcom/google/android/gms/internal/ads/zzefo;->zziep:Lcom/google/android/gms/internal/ads/zzefo;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzefo;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefo$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzefo$zza;-><init>(Lcom/google/android/gms/internal/ads/zzefp;)V

    return-object p1

    .line 12
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzefo;-><init>()V

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

.method public final zzbdf()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefo;->zzids:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbdn()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefo;->zziel:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbdo()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefo;->zziem:I

    return v0
.end method

.method public final zzbdp()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzefo;->zzien:Z

    return v0
.end method

.method public final zzbdq()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefo;->zzieo:Ljava/lang/String;

    return-object v0
.end method
