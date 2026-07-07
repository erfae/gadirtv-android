.class public final Lcom/google/android/gms/internal/ads/zzefr$zza;
.super Lcom/google/android/gms/internal/ads/zzekh;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzefr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzefr$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "Lcom/google/android/gms/internal/ads/zzefr$zza;",
        "Lcom/google/android/gms/internal/ads/zzefr$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# static fields
.field private static volatile zzei:Lcom/google/android/gms/internal/ads/zzemb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemb<",
            "Lcom/google/android/gms/internal/ads/zzefr$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziew:Lcom/google/android/gms/internal/ads/zzefr$zza;


# instance fields
.field private zziej:I

.field private zziet:Lcom/google/android/gms/internal/ads/zzefh;

.field private zzieu:I

.field private zziev:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefr$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzefr$zza;-><init>()V

    .line 31
    sput-object v0, Lcom/google/android/gms/internal/ads/zzefr$zza;->zziew:Lcom/google/android/gms/internal/ads/zzefr$zza;

    .line 32
    const-class v1, Lcom/google/android/gms/internal/ads/zzefr$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    return-void
.end method

.method static synthetic zzbdz()Lcom/google/android/gms/internal/ads/zzefr$zza;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefr$zza;->zziew:Lcom/google/android/gms/internal/ads/zzefr$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 10
    sget-object p2, Lcom/google/android/gms/internal/ads/zzefq;->zzds:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefr$zza;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_1

    .line 19
    const-class p2, Lcom/google/android/gms/internal/ads/zzefr$zza;

    monitor-enter p2

    .line 20
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefr$zza;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

    if-nez p1, :cond_0

    .line 22
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzefr$zza;->zziew:Lcom/google/android/gms/internal/ads/zzefr$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzekh$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    .line 23
    sput-object p1, Lcom/google/android/gms/internal/ads/zzefr$zza;->zzei:Lcom/google/android/gms/internal/ads/zzemb;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefr$zza;->zziew:Lcom/google/android/gms/internal/ads/zzefr$zza;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zziet"

    aput-object v0, p1, p2

    const-string p2, "zzieu"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zziev"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zziej"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\u000c\u0003\u000b\u0004\u000c"

    .line 15
    sget-object p3, Lcom/google/android/gms/internal/ads/zzefr$zza;->zziew:Lcom/google/android/gms/internal/ads/zzefr$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzefr$zza;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefr$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzefr$zza$zza;-><init>(Lcom/google/android/gms/internal/ads/zzefq;)V

    return-object p1

    .line 11
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefr$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzefr$zza;-><init>()V

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

.method public final zzbab()Lcom/google/android/gms/internal/ads/zzefl;
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefr$zza;->zzieu:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzefl;->zzfj(I)Lcom/google/android/gms/internal/ads/zzefl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefl;->zzieh:Lcom/google/android/gms/internal/ads/zzefl;

    :cond_0
    return-object v0
.end method

.method public final zzbac()Lcom/google/android/gms/internal/ads/zzegd;
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefr$zza;->zziej:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegd;->zzfq(I)Lcom/google/android/gms/internal/ads/zzegd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzegd;->zzifo:Lcom/google/android/gms/internal/ads/zzegd;

    :cond_0
    return-object v0
.end method

.method public final zzbdw()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefr$zza;->zziet:Lcom/google/android/gms/internal/ads/zzefh;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzbdx()Lcom/google/android/gms/internal/ads/zzefh;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefr$zza;->zziet:Lcom/google/android/gms/internal/ads/zzefh;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefh;->zzbdj()Lcom/google/android/gms/internal/ads/zzefh;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzbdy()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefr$zza;->zziev:I

    return v0
.end method
