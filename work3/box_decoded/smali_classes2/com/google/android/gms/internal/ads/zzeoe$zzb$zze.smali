.class public final Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;
.super Lcom/google/android/gms/internal/ads/zzekh;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzeoe$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze$zzb;,
        Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;",
        "Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziwi:Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;


# instance fields
.field private zzdt:I

.field private zziup:B

.field private zzivx:Lcom/google/android/gms/internal/ads/zzekp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzekp<",
            "Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzivy:Lcom/google/android/gms/internal/ads/zzeiu;

.field private zzivz:Lcom/google/android/gms/internal/ads/zzeiu;

.field private zziwa:I

.field private zziwg:Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze$zza;

.field private zziwh:Lcom/google/android/gms/internal/ads/zzeiu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;-><init>()V

    .line 30
    sput-object v0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;->zziwi:Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;

    .line 31
    const-class v1, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;->zziup:B

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;->zzbic()Lcom/google/android/gms/internal/ads/zzekp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;->zzivx:Lcom/google/android/gms/internal/ads/zzekp;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeiu;->zziiy:Lcom/google/android/gms/internal/ads/zzeiu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;->zzivy:Lcom/google/android/gms/internal/ads/zzeiu;

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeiu;->zziiy:Lcom/google/android/gms/internal/ads/zzeiu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;->zzivz:Lcom/google/android/gms/internal/ads/zzeiu;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeiu;->zziiy:Lcom/google/android/gms/internal/ads/zzeiu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;->zziwh:Lcom/google/android/gms/internal/ads/zzeiu;

    return-void
.end method

.method static synthetic zzblg()Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;->zziwi:Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 8
    sget-object p3, Lcom/google/android/gms/internal/ads/zzeod;->zzds:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    int-to-byte p1, v0

    .line 25
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;->zziup:B

    return-object v1

    .line 24
    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;->zziup:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_2

    .line 17
    const-class p2, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;

    monitor-enter p2

    .line 18
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;->zziwi:Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 21
    sput-object p1, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    .line 22
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

    .line 14
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;->zziwi:Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzdt"

    aput-object p2, p1, p3

    const-string p2, "zziwg"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzivx"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 11
    const-class p3, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzc;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzivy"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzivz"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zziwa"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zziwh"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003\u0006\u100a\u0004"

    .line 13
    sget-object p3, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;->zziwi:Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze$zzb;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzeod;)V

    return-object p1

    .line 9
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;-><init>()V

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
