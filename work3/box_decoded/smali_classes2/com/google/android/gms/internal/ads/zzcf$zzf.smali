.class public final Lcom/google/android/gms/internal/ads/zzcf$zzf;
.super Lcom/google/android/gms/internal/ads/zzekh;
.source "com.google.android.gms:play-services-gass@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzcf$zzf;",
        "Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzcf$zzf;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzme:Lcom/google/android/gms/internal/ads/zzcf$zzf;


# instance fields
.field private zzdt:I

.field private zzhs:I

.field private zzht:I

.field private zzle:Lcom/google/android/gms/internal/ads/zzeiu;

.field private zzmd:Lcom/google/android/gms/internal/ads/zzekp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzekp<",
            "Lcom/google/android/gms/internal/ads/zzeiu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcf$zzf;-><init>()V

    .line 49
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzme:Lcom/google/android/gms/internal/ads/zzcf$zzf;

    .line 50
    const-class v1, Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzbic()Lcom/google/android/gms/internal/ads/zzekp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmd:Lcom/google/android/gms/internal/ads/zzekp;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeiu;->zziiy:Lcom/google/android/gms/internal/ads/zzeiu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzle:Lcom/google/android/gms/internal/ads/zzeiu;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzht:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzhs:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcf$zzf;Lcom/google/android/gms/internal/ads/zzcm;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zza(Lcom/google/android/gms/internal/ads/zzcm;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcf$zzf;Lcom/google/android/gms/internal/ads/zzeiu;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzi(Lcom/google/android/gms/internal/ads/zzeiu;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzcm;)V
    .locals 0

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcm;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzhs:I

    .line 20
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzdt:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzdt:I

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcf$zzf;Lcom/google/android/gms/internal/ads/zzeiu;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzf(Lcom/google/android/gms/internal/ads/zzeiu;)V

    return-void
.end method

.method public static zzbl()Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzme:Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhx()Lcom/google/android/gms/internal/ads/zzekh$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;

    return-object v0
.end method

.method static synthetic zzbm()Lcom/google/android/gms/internal/ads/zzcf$zzf;
    .locals 1

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzme:Lcom/google/android/gms/internal/ads/zzcf$zzf;

    return-object v0
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzeiu;)V
    .locals 1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzdt:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzdt:I

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzle:Lcom/google/android/gms/internal/ads/zzeiu;

    return-void
.end method

.method private final zzi(Lcom/google/android/gms/internal/ads/zzeiu;)V
    .locals 2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmd:Lcom/google/android/gms/internal/ads/zzekp;

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzekp;->zzbfk()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Lcom/google/android/gms/internal/ads/zzekp;)Lcom/google/android/gms/internal/ads/zzekp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmd:Lcom/google/android/gms/internal/ads/zzekp;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmd:Lcom/google/android/gms/internal/ads/zzekp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzekp;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 23
    sget-object p2, Lcom/google/android/gms/internal/ads/zzce;->zzds:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 41
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 34
    const-class p2, Lcom/google/android/gms/internal/ads/zzcf$zzf;

    monitor-enter p2

    .line 35
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzme:Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 38
    sput-object p1, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    .line 39
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

    .line 31
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzme:Lcom/google/android/gms/internal/ads/zzcf$zzf;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdt"

    aput-object v0, p1, p2

    const-string p2, "zzmd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzle"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzht"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcs;->zzw()Lcom/google/android/gms/internal/ads/zzekl;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzhs"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcm;->zzw()Lcom/google/android/gms/internal/ads/zzekl;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\u100a\u0000\u0003\u100c\u0001\u0004\u100c\u0002"

    .line 30
    sget-object p3, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzme:Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;-><init>(Lcom/google/android/gms/internal/ads/zzce;)V

    return-object p1

    .line 24
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcf$zzf;-><init>()V

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
