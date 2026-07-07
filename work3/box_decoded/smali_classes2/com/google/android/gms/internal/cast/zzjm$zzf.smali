.class public final Lcom/google/android/gms/internal/cast/zzjm$zzf;
.super Lcom/google/android/gms/internal/cast/zzlc;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzmn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cast/zzjm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzlc<",
        "Lcom/google/android/gms/internal/cast/zzjm$zzf;",
        "Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;",
        ">;",
        "Lcom/google/android/gms/internal/cast/zzmn;"
    }
.end annotation


# static fields
.field private static volatile zzagb:Lcom/google/android/gms/internal/cast/zzmv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzmv<",
            "Lcom/google/android/gms/internal/cast/zzjm$zzf;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbca:Lcom/google/android/gms/internal/cast/zzjm$zzf;


# instance fields
.field private zzafn:I

.field private zzbbu:Lcom/google/android/gms/internal/cast/zzjm$zzm;

.field private zzbbv:Z

.field private zzbbw:J

.field private zzbbx:I

.field private zzbby:I

.field private zzbbz:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lcom/google/android/gms/internal/cast/zzjm$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzjm$zzf;-><init>()V

    .line 50
    sput-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzbca:Lcom/google/android/gms/internal/cast/zzjm$zzf;

    .line 51
    const-class v1, Lcom/google/android/gms/internal/cast/zzjm$zzf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zzlc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzlc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzlc;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/cast/zzjm$zzf;)Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;
    .locals 1

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzbca:Lcom/google/android/gms/internal/cast/zzjm$zzf;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/cast/zzlc;->zzb(Lcom/google/android/gms/internal/cast/zzlc;)Lcom/google/android/gms/internal/cast/zzlc$zza;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/cast/zzff;)V
    .locals 0

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzff;->zzfw()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzbbz:I

    .line 17
    iget p1, p0, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzafn:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzafn:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/cast/zzfg;)V
    .locals 0

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzfg;->zzfw()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzbby:I

    .line 14
    iget p1, p0, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzafn:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzafn:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzjm$zzf;J)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzh(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzjm$zzf;Lcom/google/android/gms/internal/cast/zzff;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zza(Lcom/google/android/gms/internal/cast/zzff;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzjm$zzf;Lcom/google/android/gms/internal/cast/zzfg;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zza(Lcom/google/android/gms/internal/cast/zzfg;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzjm$zzf;Lcom/google/android/gms/internal/cast/zzjm$zzm;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzm;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzjm$zzf;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzm(Z)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/cast/zzjm$zzm;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzbbu:Lcom/google/android/gms/internal/cast/zzjm$zzm;

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzafn:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzafn:I

    return-void
.end method

.method public static zzgg()Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzbca:Lcom/google/android/gms/internal/cast/zzjm$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzlc;->zzjf()Lcom/google/android/gms/internal/cast/zzlc$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;

    return-object v0
.end method

.method public static zzgh()Lcom/google/android/gms/internal/cast/zzjm$zzf;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzbca:Lcom/google/android/gms/internal/cast/zzjm$zzf;

    return-object v0
.end method

.method static synthetic zzgi()Lcom/google/android/gms/internal/cast/zzjm$zzf;
    .locals 1

    .line 43
    sget-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzbca:Lcom/google/android/gms/internal/cast/zzjm$zzf;

    return-object v0
.end method

.method private final zzh(J)V
    .locals 1

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzafn:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzafn:I

    .line 11
    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzbbw:J

    return-void
.end method

.method private final zzm(Z)V
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzafn:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzafn:I

    .line 8
    iput-boolean p1, p0, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzbbv:Z

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 21
    sget-object p2, Lcom/google/android/gms/internal/cast/zzjo;->zzagc:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 41
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 39
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 30
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    if-nez p1, :cond_1

    .line 32
    const-class p2, Lcom/google/android/gms/internal/cast/zzjm$zzf;

    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    if-nez p1, :cond_0

    .line 35
    new-instance p1, Lcom/google/android/gms/internal/cast/zzlc$zzc;

    sget-object p3, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzbca:Lcom/google/android/gms/internal/cast/zzjm$zzf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/cast/zzlc$zzc;-><init>(Lcom/google/android/gms/internal/cast/zzlc;)V

    .line 36
    sput-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    .line 37
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

    .line 29
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzbca:Lcom/google/android/gms/internal/cast/zzjm$zzf;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzafn"

    aput-object v0, p1, p2

    const-string p2, "zzbbu"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzbbv"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbbw"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzbbx"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzbby"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzfg;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzbbz"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzff;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\t\u0000\u0002\u0007\u0001\u0003\u0005\u0002\u0004\u0006\u0003\u0005\u000c\u0004\u0006\u000c\u0005"

    .line 28
    sget-object p3, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzbca:Lcom/google/android/gms/internal/cast/zzjm$zzf;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zza(Lcom/google/android/gms/internal/cast/zzml;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;-><init>(Lcom/google/android/gms/internal/cast/zzjo;)V

    return-object p1

    .line 22
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/cast/zzjm$zzf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzjm$zzf;-><init>()V

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
