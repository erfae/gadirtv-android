.class public final Lcom/google/android/gms/internal/cast/zzjm$zzq;
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
    name = "zzq"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cast/zzjm$zzq$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzlc<",
        "Lcom/google/android/gms/internal/cast/zzjm$zzq;",
        "Lcom/google/android/gms/internal/cast/zzjm$zzq$zza;",
        ">;",
        "Lcom/google/android/gms/internal/cast/zzmn;"
    }
.end annotation


# static fields
.field private static volatile zzagb:Lcom/google/android/gms/internal/cast/zzmv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzmv<",
            "Lcom/google/android/gms/internal/cast/zzjm$zzq;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbfz:Lcom/google/android/gms/internal/cast/zzjm$zzq;


# instance fields
.field private zzafn:I

.field private zzbbl:I

.field private zzbft:I

.field private zzbfu:I

.field private zzbfv:Lcom/google/android/gms/internal/cast/zzlh;

.field private zzbfw:Lcom/google/android/gms/internal/cast/zzlh;

.field private zzbfx:Lcom/google/android/gms/internal/cast/zzlm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzlm<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzbfy:Lcom/google/android/gms/internal/cast/zzlm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzlm<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/cast/zzjm$zzq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzjm$zzq;-><init>()V

    .line 30
    sput-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzq;->zzbfz:Lcom/google/android/gms/internal/cast/zzjm$zzq;

    .line 31
    const-class v1, Lcom/google/android/gms/internal/cast/zzjm$zzq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zzlc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzlc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzlc;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzjm$zzq;->zzjh()Lcom/google/android/gms/internal/cast/zzlh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzq;->zzbfv:Lcom/google/android/gms/internal/cast/zzlh;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzjm$zzq;->zzjh()Lcom/google/android/gms/internal/cast/zzlh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzq;->zzbfw:Lcom/google/android/gms/internal/cast/zzlh;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzlc;->zzjj()Lcom/google/android/gms/internal/cast/zzlm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzq;->zzbfx:Lcom/google/android/gms/internal/cast/zzlm;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzlc;->zzjj()Lcom/google/android/gms/internal/cast/zzlm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzq;->zzbfy:Lcom/google/android/gms/internal/cast/zzlm;

    return-void
.end method

.method static synthetic zzgx()Lcom/google/android/gms/internal/cast/zzjm$zzq;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzq;->zzbfz:Lcom/google/android/gms/internal/cast/zzjm$zzq;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/cast/zzjo;->zzagc:[I

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
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzq;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    if-nez p1, :cond_1

    .line 18
    const-class p2, Lcom/google/android/gms/internal/cast/zzjm$zzq;

    monitor-enter p2

    .line 19
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzq;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Lcom/google/android/gms/internal/cast/zzlc$zzc;

    sget-object p3, Lcom/google/android/gms/internal/cast/zzjm$zzq;->zzbfz:Lcom/google/android/gms/internal/cast/zzjm$zzq;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/cast/zzlc$zzc;-><init>(Lcom/google/android/gms/internal/cast/zzlc;)V

    .line 22
    sput-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzq;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

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
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzq;->zzbfz:Lcom/google/android/gms/internal/cast/zzjm$zzq;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzafn"

    aput-object v0, p1, p2

    const-string p2, "zzbft"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzbfu"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzgp;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzbfv"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzbfw"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzbfx"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzbfy"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzbbl"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzgd;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0004\u0000\u0001\u0004\u0000\u0002\u000c\u0001\u0003\u0016\u0004\u0016\u0005\u001a\u0006\u001a\u0007\u000c\u0002"

    .line 14
    sget-object p3, Lcom/google/android/gms/internal/cast/zzjm$zzq;->zzbfz:Lcom/google/android/gms/internal/cast/zzjm$zzq;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/cast/zzjm$zzq;->zza(Lcom/google/android/gms/internal/cast/zzml;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/cast/zzjm$zzq$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzjm$zzq$zza;-><init>(Lcom/google/android/gms/internal/cast/zzjo;)V

    return-object p1

    .line 8
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/cast/zzjm$zzq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzjm$zzq;-><init>()V

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
