.class public final Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;
.super Lcom/google/android/gms/internal/ads/zzekh;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzue$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzue$zzb$zzd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;",
        "Lcom/google/android/gms/internal/ads/zzue$zzb$zzd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static final zzbzj:Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;

.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbzh:Z

.field private zzbzi:I

.field private zzdt:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;-><init>()V

    .line 33
    sput-object v0, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;->zzbzj:Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;

    .line 34
    const-class v1, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;->zzbz(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;->zzr(Z)V

    return-void
.end method

.method private final zzbz(I)V
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;->zzdt:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;->zzdt:I

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;->zzbzi:I

    return-void
.end method

.method public static zzno()Lcom/google/android/gms/internal/ads/zzue$zzb$zzd$zza;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;->zzbzj:Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhx()Lcom/google/android/gms/internal/ads/zzekh$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd$zza;

    return-object v0
.end method

.method static synthetic zznp()Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;->zzbzj:Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;

    return-object v0
.end method

.method private final zzr(Z)V
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;->zzdt:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;->zzdt:I

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;->zzbzh:Z

    return-void
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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 19
    const-class p2, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;

    monitor-enter p2

    .line 20
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_0

    .line 22
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;->zzbzj:Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 23
    sput-object p1, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;->zzbzj:Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdt"

    aput-object v0, p1, p2

    const-string p2, "zzbzh"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzbzi"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u100b\u0001"

    .line 15
    sget-object p3, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;->zzbzj:Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd$zza;-><init>(Lcom/google/android/gms/internal/ads/zzud;)V

    return-object p1

    .line 11
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;-><init>()V

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
