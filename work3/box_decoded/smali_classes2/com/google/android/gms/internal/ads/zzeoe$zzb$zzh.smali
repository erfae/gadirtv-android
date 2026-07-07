.class public final Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;
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
    name = "zzh"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh$zzb;,
        Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;",
        "Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzixl:Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;


# instance fields
.field private zzdt:I

.field private zziup:B

.field private zzius:Ljava/lang/String;

.field private zzixd:I

.field private zzixe:Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzd;

.field private zzixf:Lcom/google/android/gms/internal/ads/zzeoe$zzb$zze;

.field private zzixg:I

.field private zzixh:Lcom/google/android/gms/internal/ads/zzeko;

.field private zzixi:Ljava/lang/String;

.field private zzixj:I

.field private zzixk:Lcom/google/android/gms/internal/ads/zzekp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzekp<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;-><init>()V

    .line 61
    sput-object v0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzixl:Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;

    .line 62
    const-class v1, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zziup:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzius:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzbia()Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzixh:Lcom/google/android/gms/internal/ads/zzeko;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzixi:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekh;->zzbic()Lcom/google/android/gms/internal/ads/zzekp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzixk:Lcom/google/android/gms/internal/ads/zzekp;

    return-void
.end method

.method private final setId(I)V
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzdt:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzdt:I

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzixd:I

    return-void
.end method

.method private final setUrl(Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzdt:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzdt:I

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzius:Ljava/lang/String;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzd;)V
    .locals 0

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzixe:Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzd;

    .line 18
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzdt:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzdt:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh$zza;)V
    .locals 0

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh$zza;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzixj:I

    .line 21
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzdt:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzdt:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->setId(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzd;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zza(Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzd;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh$zza;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zza(Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzid(Ljava/lang/String;)V

    return-void
.end method

.method public static zzbll()Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh$zzb;
    .locals 1

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzixl:Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhx()Lcom/google/android/gms/internal/ads/zzekh$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh$zzb;

    return-object v0
.end method

.method static synthetic zzblm()Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;
    .locals 1

    .line 54
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzixl:Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;

    return-object v0
.end method

.method private final zzid(Ljava/lang/String;)V
    .locals 2

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzixk:Lcom/google/android/gms/internal/ads/zzekp;

    .line 27
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzekp;->zzbfk()Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Lcom/google/android/gms/internal/ads/zzekp;)Lcom/google/android/gms/internal/ads/zzekp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzixk:Lcom/google/android/gms/internal/ads/zzekp;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzixk:Lcom/google/android/gms/internal/ads/zzekp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzekp;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzius:Ljava/lang/String;

    return-object v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 33
    sget-object p3, Lcom/google/android/gms/internal/ads/zzeod;->zzds:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 53
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    int-to-byte p1, v0

    .line 51
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zziup:B

    return-object v1

    .line 50
    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zziup:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 41
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_2

    .line 43
    const-class p2, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;

    monitor-enter p2

    .line 44
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 46
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzixl:Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 47
    sput-object p1, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    .line 48
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

    .line 40
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzixl:Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzdt"

    aput-object p2, p1, p3

    const-string p2, "zzixd"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzius"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzixe"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzixf"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzixg"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzixh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzixi"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzixj"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh$zza;->zzw()Lcom/google/android/gms/internal/ads/zzekl;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzixk"

    aput-object p3, p1, p2

    const-string p2, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001\u1504\u0000\u0002\u1008\u0001\u0003\u1409\u0002\u0004\u1409\u0003\u0005\u1004\u0004\u0006\u0016\u0007\u1008\u0005\u0008\u100c\u0006\t\u001a"

    .line 39
    sget-object p3, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzixl:Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh$zzb;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzeod;)V

    return-object p1

    .line 34
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;-><init>()V

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

.method public final zzblk()I
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzh;->zzixk:Lcom/google/android/gms/internal/ads/zzekp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzekp;->size()I

    move-result v0

    return v0
.end method
