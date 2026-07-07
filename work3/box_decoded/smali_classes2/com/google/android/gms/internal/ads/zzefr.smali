.class public final Lcom/google/android/gms/internal/ads/zzefr;
.super Lcom/google/android/gms/internal/ads/zzekh;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzefr$zzb;,
        Lcom/google/android/gms/internal/ads/zzefr$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzefr;",
        "Lcom/google/android/gms/internal/ads/zzefr$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzefr;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzies:Lcom/google/android/gms/internal/ads/zzefr;


# instance fields
.field private zzieq:I

.field private zzier:Lcom/google/android/gms/internal/ads/zzekp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzekp<",
            "Lcom/google/android/gms/internal/ads/zzefr$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzefr;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/zzefr;->zzies:Lcom/google/android/gms/internal/ads/zzefr;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/zzefr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefr;->zzbic()Lcom/google/android/gms/internal/ads/zzekp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzefr;->zzier:Lcom/google/android/gms/internal/ads/zzekp;

    return-void
.end method

.method static synthetic zzbdv()Lcom/google/android/gms/internal/ads/zzefr;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefr;->zzies:Lcom/google/android/gms/internal/ads/zzefr;

    return-object v0
.end method

.method public static zzc([BLcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzefr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeks;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefr;->zzies:Lcom/google/android/gms/internal/ads/zzefr;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Lcom/google/android/gms/internal/ads/zzekh;[BLcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzekh;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzefr;

    return-object p0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/ads/zzefq;->zzds:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 24
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefr;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 17
    const-class p2, Lcom/google/android/gms/internal/ads/zzefr;

    monitor-enter p2

    .line 18
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefr;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_0

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzefr;->zzies:Lcom/google/android/gms/internal/ads/zzefr;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 21
    sput-object p1, Lcom/google/android/gms/internal/ads/zzefr;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    .line 22
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

    .line 14
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefr;->zzies:Lcom/google/android/gms/internal/ads/zzefr;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzieq"

    aput-object v0, p1, p2

    const-string p2, "zzier"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 11
    const-class p3, Lcom/google/android/gms/internal/ads/zzefr$zza;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    .line 13
    sget-object p3, Lcom/google/android/gms/internal/ads/zzefr;->zzies:Lcom/google/android/gms/internal/ads/zzefr;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzefr;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefr$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzefr$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzefq;)V

    return-object p1

    .line 9
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzefr;-><init>()V

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

.method public final zzbds()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefr;->zzieq:I

    return v0
.end method

.method public final zzbdt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzefr$zza;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefr;->zzier:Lcom/google/android/gms/internal/ads/zzekp;

    return-object v0
.end method

.method public final zzbdu()I
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefr;->zzier:Lcom/google/android/gms/internal/ads/zzekp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzekp;->size()I

    move-result v0

    return v0
.end method
