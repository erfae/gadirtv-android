.class public final Lcom/google/android/gms/internal/cast/zzjm$zzah;
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
    name = "zzah"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cast/zzjm$zzah$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzlc<",
        "Lcom/google/android/gms/internal/cast/zzjm$zzah;",
        "Lcom/google/android/gms/internal/cast/zzjm$zzah$zza;",
        ">;",
        "Lcom/google/android/gms/internal/cast/zzmn;"
    }
.end annotation


# static fields
.field private static volatile zzagb:Lcom/google/android/gms/internal/cast/zzmv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzmv<",
            "Lcom/google/android/gms/internal/cast/zzjm$zzah;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbih:Lcom/google/android/gms/internal/cast/zzjm$zzah;


# instance fields
.field private zzafn:I

.field private zzbdd:Ljava/lang/String;

.field private zzbie:Lcom/google/android/gms/internal/cast/zzlm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzlm<",
            "Lcom/google/android/gms/internal/cast/zzjm$zzs;",
            ">;"
        }
    .end annotation
.end field

.field private zzbif:Lcom/google/android/gms/internal/cast/zzlm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzlm<",
            "Lcom/google/android/gms/internal/cast/zzjm$zzm;",
            ">;"
        }
    .end annotation
.end field

.field private zzbig:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/cast/zzjm$zzah;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzjm$zzah;-><init>()V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzah;->zzbih:Lcom/google/android/gms/internal/cast/zzjm$zzah;

    .line 28
    const-class v1, Lcom/google/android/gms/internal/cast/zzjm$zzah;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zzlc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzlc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzlc;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzah;->zzbdd:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzjm$zzah;->zzjj()Lcom/google/android/gms/internal/cast/zzlm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzah;->zzbie:Lcom/google/android/gms/internal/cast/zzlm;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzjm$zzah;->zzjj()Lcom/google/android/gms/internal/cast/zzlm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzah;->zzbif:Lcom/google/android/gms/internal/cast/zzlm;

    return-void
.end method

.method static synthetic zzho()Lcom/google/android/gms/internal/cast/zzjm$zzah;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzah;->zzbih:Lcom/google/android/gms/internal/cast/zzjm$zzah;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/cast/zzjo;->zzagc:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 22
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzah;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/gms/internal/cast/zzjm$zzah;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzah;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/cast/zzlc$zzc;

    sget-object p3, Lcom/google/android/gms/internal/cast/zzjm$zzah;->zzbih:Lcom/google/android/gms/internal/cast/zzjm$zzah;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/cast/zzlc$zzc;-><init>(Lcom/google/android/gms/internal/cast/zzlc;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzah;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    .line 20
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

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzah;->zzbih:Lcom/google/android/gms/internal/cast/zzjm$zzah;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzafn"

    aput-object v0, p1, p2

    const-string p2, "zzbdd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzbie"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 9
    const-class p3, Lcom/google/android/gms/internal/cast/zzjm$zzs;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzbif"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/google/android/gms/internal/cast/zzjm$zzm;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzbig"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u0008\u0000\u0002\u001b\u0003\u001b\u0004\u0007\u0001"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/cast/zzjm$zzah;->zzbih:Lcom/google/android/gms/internal/cast/zzjm$zzah;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/cast/zzjm$zzah;->zza(Lcom/google/android/gms/internal/cast/zzml;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/cast/zzjm$zzah$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzjm$zzah$zza;-><init>(Lcom/google/android/gms/internal/cast/zzjo;)V

    return-object p1

    .line 7
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/cast/zzjm$zzah;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzjm$zzah;-><init>()V

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
