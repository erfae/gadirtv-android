.class public final Lcom/google/android/gms/internal/cast/zzjm$zzam;
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
    name = "zzam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cast/zzjm$zzam$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzlc<",
        "Lcom/google/android/gms/internal/cast/zzjm$zzam;",
        "Lcom/google/android/gms/internal/cast/zzjm$zzam$zza;",
        ">;",
        "Lcom/google/android/gms/internal/cast/zzmn;"
    }
.end annotation


# static fields
.field private static volatile zzagb:Lcom/google/android/gms/internal/cast/zzmv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzmv<",
            "Lcom/google/android/gms/internal/cast/zzjm$zzam;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbit:Lcom/google/android/gms/internal/cast/zzlk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzlk<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/cast/zzja;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbiu:Lcom/google/android/gms/internal/cast/zzjm$zzam;


# instance fields
.field private zzafn:I

.field private zzbes:I

.field private zzbiq:I

.field private zzbis:Lcom/google/android/gms/internal/cast/zzlh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/cast/zzjr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzjr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzam;->zzbit:Lcom/google/android/gms/internal/cast/zzlk;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/cast/zzjm$zzam;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzjm$zzam;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzam;->zzbiu:Lcom/google/android/gms/internal/cast/zzjm$zzam;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/cast/zzjm$zzam;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zzlc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzlc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzlc;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzjm$zzam;->zzjh()Lcom/google/android/gms/internal/cast/zzlh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzam;->zzbis:Lcom/google/android/gms/internal/cast/zzlh;

    return-void
.end method

.method static synthetic zzht()Lcom/google/android/gms/internal/cast/zzjm$zzam;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzam;->zzbiu:Lcom/google/android/gms/internal/cast/zzjm$zzam;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/cast/zzjo;->zzagc:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 23
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzam;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    if-nez p1, :cond_1

    .line 16
    const-class p2, Lcom/google/android/gms/internal/cast/zzjm$zzam;

    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzam;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/cast/zzlc$zzc;

    sget-object p3, Lcom/google/android/gms/internal/cast/zzjm$zzam;->zzbiu:Lcom/google/android/gms/internal/cast/zzjm$zzam;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/cast/zzlc$zzc;-><init>(Lcom/google/android/gms/internal/cast/zzlc;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzam;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    .line 21
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

    .line 13
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzam;->zzbiu:Lcom/google/android/gms/internal/cast/zzjm$zzam;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzafn"

    aput-object v0, p1, p2

    const-string p2, "zzbes"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzjf;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbiq"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzgd;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzbis"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzja;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u000c\u0000\u0002\u000c\u0001\u0003\u001e"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/cast/zzjm$zzam;->zzbiu:Lcom/google/android/gms/internal/cast/zzjm$zzam;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/cast/zzjm$zzam;->zza(Lcom/google/android/gms/internal/cast/zzml;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/cast/zzjm$zzam$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzjm$zzam$zza;-><init>(Lcom/google/android/gms/internal/cast/zzjo;)V

    return-object p1

    .line 5
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/cast/zzjm$zzam;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzjm$zzam;-><init>()V

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
