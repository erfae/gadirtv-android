.class public final Lcom/google/android/gms/internal/cast/zzjm$zzw;
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
    name = "zzw"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cast/zzjm$zzw$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzlc<",
        "Lcom/google/android/gms/internal/cast/zzjm$zzw;",
        "Lcom/google/android/gms/internal/cast/zzjm$zzw$zza;",
        ">;",
        "Lcom/google/android/gms/internal/cast/zzmn;"
    }
.end annotation


# static fields
.field private static volatile zzagb:Lcom/google/android/gms/internal/cast/zzmv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzmv<",
            "Lcom/google/android/gms/internal/cast/zzjm$zzw;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbgr:Lcom/google/android/gms/internal/cast/zzjm$zzw;


# instance fields
.field private zzafn:I

.field private zzbem:B

.field private zzbgo:I

.field private zzbgp:I

.field private zzbgq:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/cast/zzjm$zzw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzjm$zzw;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzw;->zzbgr:Lcom/google/android/gms/internal/cast/zzjm$zzw;

    .line 29
    const-class v1, Lcom/google/android/gms/internal/cast/zzjm$zzw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zzlc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzlc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzlc;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzw;->zzbem:B

    return-void
.end method

.method static synthetic zzhd()Lcom/google/android/gms/internal/cast/zzjm$zzw;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzw;->zzbgr:Lcom/google/android/gms/internal/cast/zzjm$zzw;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 4
    sget-object p3, Lcom/google/android/gms/internal/cast/zzjo;->zzagc:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    int-to-byte p1, v0

    .line 23
    iput-byte p1, p0, Lcom/google/android/gms/internal/cast/zzjm$zzw;->zzbem:B

    return-object v1

    .line 22
    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/cast/zzjm$zzw;->zzbem:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzw;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    if-nez p1, :cond_2

    .line 15
    const-class p2, Lcom/google/android/gms/internal/cast/zzjm$zzw;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzw;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    if-nez p1, :cond_1

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/cast/zzlc$zzc;

    sget-object p3, Lcom/google/android/gms/internal/cast/zzjm$zzw;->zzbgr:Lcom/google/android/gms/internal/cast/zzjm$zzw;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/cast/zzlc$zzc;-><init>(Lcom/google/android/gms/internal/cast/zzlc;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzw;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    .line 20
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

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzw;->zzbgr:Lcom/google/android/gms/internal/cast/zzjm$zzw;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzafn"

    aput-object p2, p1, p3

    const-string p2, "zzbgo"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzhd;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbgp"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzbgq"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzjl;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0001\u0001\u050c\u0000\u0002\u0004\u0001\u0003\u000c\u0002"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/cast/zzjm$zzw;->zzbgr:Lcom/google/android/gms/internal/cast/zzjm$zzw;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/cast/zzjm$zzw;->zza(Lcom/google/android/gms/internal/cast/zzml;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/cast/zzjm$zzw$zza;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/cast/zzjm$zzw$zza;-><init>(Lcom/google/android/gms/internal/cast/zzjo;)V

    return-object p1

    .line 5
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/cast/zzjm$zzw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzjm$zzw;-><init>()V

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
