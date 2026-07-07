.class public final Lcom/google/android/gms/internal/ads/zzedi;
.super Lcom/google/android/gms/internal/ads/zzekh;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzedi$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzedi;",
        "Lcom/google/android/gms/internal/ads/zzedi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzedi;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzibj:Lcom/google/android/gms/internal/ads/zzedi;


# instance fields
.field private zziaz:I

.field private zzibh:Lcom/google/android/gms/internal/ads/zzedm;

.field private zzibi:Lcom/google/android/gms/internal/ads/zzefc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/zzedi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzedi;-><init>()V

    .line 40
    sput-object v0, Lcom/google/android/gms/internal/ads/zzedi;->zzibj:Lcom/google/android/gms/internal/ads/zzedi;

    .line 41
    const-class v1, Lcom/google/android/gms/internal/ads/zzedi;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    return-void
.end method

.method private final setVersion(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzedi;->zziaz:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzedi;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzedi;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzedi;Lcom/google/android/gms/internal/ads/zzedm;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzedi;->zzb(Lcom/google/android/gms/internal/ads/zzedm;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzedi;Lcom/google/android/gms/internal/ads/zzefc;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzedi;->zzb(Lcom/google/android/gms/internal/ads/zzefc;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzedm;)V
    .locals 0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedi;->zzibh:Lcom/google/android/gms/internal/ads/zzedm;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzefc;)V
    .locals 0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedi;->zzibi:Lcom/google/android/gms/internal/ads/zzefc;

    return-void
.end method

.method public static zzbaw()Lcom/google/android/gms/internal/ads/zzedi$zza;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzedi;->zzibj:Lcom/google/android/gms/internal/ads/zzedi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhx()Lcom/google/android/gms/internal/ads/zzekh$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzedi$zza;

    return-object v0
.end method

.method static synthetic zzbax()Lcom/google/android/gms/internal/ads/zzedi;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/zzedi;->zzibj:Lcom/google/android/gms/internal/ads/zzedi;

    return-object v0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzedi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeks;
        }
    .end annotation

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzedi;->zzibj:Lcom/google/android/gms/internal/ads/zzedi;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Lcom/google/android/gms/internal/ads/zzekh;Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzekh;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzedi;

    return-object p0
.end method


# virtual methods
.method public final getVersion()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzedi;->zziaz:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 16
    sget-object p2, Lcom/google/android/gms/internal/ads/zzedh;->zzds:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 34
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 32
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzedi;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 25
    const-class p2, Lcom/google/android/gms/internal/ads/zzedi;

    monitor-enter p2

    .line 26
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzedi;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_0

    .line 28
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzedi;->zzibj:Lcom/google/android/gms/internal/ads/zzedi;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 29
    sput-object p1, Lcom/google/android/gms/internal/ads/zzedi;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    .line 30
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

    .line 22
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzedi;->zzibj:Lcom/google/android/gms/internal/ads/zzedi;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zziaz"

    aput-object v0, p1, p2

    const-string p2, "zzibh"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzibi"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t"

    .line 21
    sget-object p3, Lcom/google/android/gms/internal/ads/zzedi;->zzibj:Lcom/google/android/gms/internal/ads/zzedi;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzedi;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzedi$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzedi$zza;-><init>(Lcom/google/android/gms/internal/ads/zzedh;)V

    return-object p1

    .line 17
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzedi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzedi;-><init>()V

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

.method public final zzbau()Lcom/google/android/gms/internal/ads/zzedm;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedi;->zzibh:Lcom/google/android/gms/internal/ads/zzedm;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzedm;->zzbbd()Lcom/google/android/gms/internal/ads/zzedm;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzbav()Lcom/google/android/gms/internal/ads/zzefc;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedi;->zzibi:Lcom/google/android/gms/internal/ads/zzefc;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefc;->zzbcy()Lcom/google/android/gms/internal/ads/zzefc;

    move-result-object v0

    :cond_0
    return-object v0
.end method
