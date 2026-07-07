.class public final Lcom/google/android/gms/internal/cast/zzei$zzb;
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
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cast/zzei$zzb$zzb;,
        Lcom/google/android/gms/internal/cast/zzei$zzb$zza;,
        Lcom/google/android/gms/internal/cast/zzei$zzb$zzc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzlc<",
        "Lcom/google/android/gms/internal/cast/zzei$zzb;",
        "Lcom/google/android/gms/internal/cast/zzei$zzb$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/cast/zzmn;"
    }
.end annotation


# static fields
.field private static volatile zzagb:Lcom/google/android/gms/internal/cast/zzmv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzmv<",
            "Lcom/google/android/gms/internal/cast/zzei$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzahs:Lcom/google/android/gms/internal/cast/zzei$zzb;


# instance fields
.field private zzafn:I

.field private zzahm:I

.field private zzahn:I

.field private zzaho:I

.field private zzahp:I

.field private zzahq:Lcom/google/android/gms/internal/cast/zzei$zza;

.field private zzahr:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/cast/zzei$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzei$zzb;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/cast/zzei$zzb;->zzahs:Lcom/google/android/gms/internal/cast/zzei$zzb;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/cast/zzei$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zzlc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzlc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzlc;-><init>()V

    return-void
.end method

.method static synthetic zzfy()Lcom/google/android/gms/internal/cast/zzei$zzb;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/cast/zzei$zzb;->zzahs:Lcom/google/android/gms/internal/cast/zzei$zzb;

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

    .line 23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 21
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/cast/zzei$zzb;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    if-nez p1, :cond_1

    .line 14
    const-class p2, Lcom/google/android/gms/internal/cast/zzei$zzb;

    monitor-enter p2

    .line 15
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzei$zzb;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    if-nez p1, :cond_0

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/cast/zzlc$zzc;

    sget-object p3, Lcom/google/android/gms/internal/cast/zzei$zzb;->zzahs:Lcom/google/android/gms/internal/cast/zzei$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/cast/zzlc$zzc;-><init>(Lcom/google/android/gms/internal/cast/zzlc;)V

    .line 18
    sput-object p1, Lcom/google/android/gms/internal/cast/zzei$zzb;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    .line 19
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

    .line 11
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/cast/zzei$zzb;->zzahs:Lcom/google/android/gms/internal/cast/zzei$zzb;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzafn"

    aput-object v0, p1, p2

    const-string p2, "zzahm"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzahn"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzei$zzb$zzc;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzaho"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzahp"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzahq"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzahr"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzei$zzb$zza;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u000c\u0001\u0003\u0004\u0002\u0004\u0004\u0003\u0005\t\u0004\u0006\u000c\u0005"

    .line 10
    sget-object p3, Lcom/google/android/gms/internal/cast/zzei$zzb;->zzahs:Lcom/google/android/gms/internal/cast/zzei$zzb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/cast/zzei$zzb;->zza(Lcom/google/android/gms/internal/cast/zzml;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/cast/zzei$zzb$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzei$zzb$zzb;-><init>(Lcom/google/android/gms/internal/cast/zzek;)V

    return-object p1

    .line 4
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/cast/zzei$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzei$zzb;-><init>()V

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
