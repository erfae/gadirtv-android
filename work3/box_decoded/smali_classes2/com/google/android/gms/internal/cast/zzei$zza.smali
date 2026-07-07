.class public final Lcom/google/android/gms/internal/cast/zzei$zza;
.super Lcom/google/android/gms/internal/cast/zzlc;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzmn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cast/zzei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cast/zzei$zza$zzd;,
        Lcom/google/android/gms/internal/cast/zzei$zza$zza;,
        Lcom/google/android/gms/internal/cast/zzei$zza$zzg;,
        Lcom/google/android/gms/internal/cast/zzei$zza$zzf;,
        Lcom/google/android/gms/internal/cast/zzei$zza$zzb;,
        Lcom/google/android/gms/internal/cast/zzei$zza$zze;,
        Lcom/google/android/gms/internal/cast/zzei$zza$zzc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzlc<",
        "Lcom/google/android/gms/internal/cast/zzei$zza;",
        "Lcom/google/android/gms/internal/cast/zzei$zza$zzd;",
        ">;",
        "Lcom/google/android/gms/internal/cast/zzmn;"
    }
.end annotation


# static fields
.field private static final zzaga:Lcom/google/android/gms/internal/cast/zzei$zza;

.field private static volatile zzagb:Lcom/google/android/gms/internal/cast/zzmv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzmv<",
            "Lcom/google/android/gms/internal/cast/zzei$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzafn:I

.field private zzafo:I

.field private zzafp:I

.field private zzafq:I

.field private zzafr:I

.field private zzafs:I

.field private zzaft:I

.field private zzafu:I

.field private zzafv:I

.field private zzafw:I

.field private zzafx:I

.field private zzafy:I

.field private zzafz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/cast/zzei$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzei$zza;-><init>()V

    .line 30
    sput-object v0, Lcom/google/android/gms/internal/cast/zzei$zza;->zzaga:Lcom/google/android/gms/internal/cast/zzei$zza;

    .line 31
    const-class v1, Lcom/google/android/gms/internal/cast/zzei$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zzlc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzlc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzlc;-><init>()V

    return-void
.end method

.method static synthetic zzfv()Lcom/google/android/gms/internal/cast/zzei$zza;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/cast/zzei$zza;->zzaga:Lcom/google/android/gms/internal/cast/zzei$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/cast/zzek;->zzagc:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 25
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/cast/zzei$zza;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    if-nez p1, :cond_1

    .line 18
    const-class p2, Lcom/google/android/gms/internal/cast/zzei$zza;

    monitor-enter p2

    .line 19
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzei$zza;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Lcom/google/android/gms/internal/cast/zzlc$zzc;

    sget-object p3, Lcom/google/android/gms/internal/cast/zzei$zza;->zzaga:Lcom/google/android/gms/internal/cast/zzei$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/cast/zzlc$zzc;-><init>(Lcom/google/android/gms/internal/cast/zzlc;)V

    .line 22
    sput-object p1, Lcom/google/android/gms/internal/cast/zzei$zza;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    .line 23
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

    .line 15
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/cast/zzei$zza;->zzaga:Lcom/google/android/gms/internal/cast/zzei$zza;

    return-object p1

    :pswitch_4
    const/16 p1, 0x13

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzafn"

    aput-object v0, p1, p2

    const-string p2, "zzafo"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzafp"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzafq"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzei$zza$zzc;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzafr"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzei$zza$zze;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzafs"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzei$zza$zzb;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzaft"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzei$zza$zzf;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzafu"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzei$zza$zzg;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzafv"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzei$zza$zza;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzafw"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzafx"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzafy"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzafz"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0004\u0001\u0003\u000c\u0002\u0004\u000c\u0003\u0005\u000c\u0004\u0006\u000c\u0005\u0007\u000c\u0006\u0008\u000c\u0007\t\u0004\u0008\n\u0004\t\u000b\u0004\n\u000c\u0007\u000b"

    .line 14
    sget-object p3, Lcom/google/android/gms/internal/cast/zzei$zza;->zzaga:Lcom/google/android/gms/internal/cast/zzei$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/cast/zzei$zza;->zza(Lcom/google/android/gms/internal/cast/zzml;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/cast/zzei$zza$zzd;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzei$zza$zzd;-><init>(Lcom/google/android/gms/internal/cast/zzek;)V

    return-object p1

    .line 4
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/cast/zzei$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzei$zza;-><init>()V

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
