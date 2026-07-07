.class public final Lcom/google/android/gms/internal/ads/zzue$zzm;
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
    name = "zzm"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzue$zzm$zzb;,
        Lcom/google/android/gms/internal/ads/zzue$zzm$zza;,
        Lcom/google/android/gms/internal/ads/zzue$zzm$zzc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzue$zzm;",
        "Lcom/google/android/gms/internal/ads/zzue$zzm$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static final zzcco:Lcom/google/android/gms/internal/ads/zzue$zzm;

.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzue$zzm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbzz:I

.field private zzccn:I

.field private zzdt:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzue$zzm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzue$zzm;-><init>()V

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/ads/zzue$zzm;->zzcco:Lcom/google/android/gms/internal/ads/zzue$zzm;

    .line 36
    const-class v1, Lcom/google/android/gms/internal/ads/zzue$zzm;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzue$zzm$zza;)V
    .locals 0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzue$zzm$zza;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzm;->zzccn:I

    .line 7
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzm;->zzdt:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzm;->zzdt:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzue$zzm$zzc;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzue$zzm$zzc;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzm;->zzbzz:I

    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzm;->zzdt:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzm;->zzdt:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzue$zzm;Lcom/google/android/gms/internal/ads/zzue$zzm$zza;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzue$zzm;->zza(Lcom/google/android/gms/internal/ads/zzue$zzm$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzue$zzm;Lcom/google/android/gms/internal/ads/zzue$zzm$zzc;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzue$zzm;->zza(Lcom/google/android/gms/internal/ads/zzue$zzm$zzc;)V

    return-void
.end method

.method public static zzok()Lcom/google/android/gms/internal/ads/zzue$zzm$zzb;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzue$zzm;->zzcco:Lcom/google/android/gms/internal/ads/zzue$zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhx()Lcom/google/android/gms/internal/ads/zzekh$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzue$zzm$zzb;

    return-object v0
.end method

.method static synthetic zzol()Lcom/google/android/gms/internal/ads/zzue$zzm;
    .locals 1

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/ads/zzue$zzm;->zzcco:Lcom/google/android/gms/internal/ads/zzue$zzm;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 10
    sget-object p2, Lcom/google/android/gms/internal/ads/zzud;->zzds:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 30
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 28
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzm;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 21
    const-class p2, Lcom/google/android/gms/internal/ads/zzue$zzm;

    monitor-enter p2

    .line 22
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzm;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_0

    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzue$zzm;->zzcco:Lcom/google/android/gms/internal/ads/zzue$zzm;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 25
    sput-object p1, Lcom/google/android/gms/internal/ads/zzue$zzm;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    .line 26
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

    .line 18
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzm;->zzcco:Lcom/google/android/gms/internal/ads/zzue$zzm;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdt"

    aput-object v0, p1, p2

    const-string p2, "zzbzz"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzue$zzm$zzc;->zzw()Lcom/google/android/gms/internal/ads/zzekl;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzccn"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzue$zzm$zza;->zzw()Lcom/google/android/gms/internal/ads/zzekl;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u100c\u0001"

    .line 17
    sget-object p3, Lcom/google/android/gms/internal/ads/zzue$zzm;->zzcco:Lcom/google/android/gms/internal/ads/zzue$zzm;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzue$zzm;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzue$zzm$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzue$zzm$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzud;)V

    return-object p1

    .line 11
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzue$zzm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzue$zzm;-><init>()V

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
