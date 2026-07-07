.class public final Lcom/google/android/gms/internal/cast/zzjm$zzg;
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
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cast/zzjm$zzg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzlc<",
        "Lcom/google/android/gms/internal/cast/zzjm$zzg;",
        "Lcom/google/android/gms/internal/cast/zzjm$zzg$zza;",
        ">;",
        "Lcom/google/android/gms/internal/cast/zzmn;"
    }
.end annotation


# static fields
.field private static volatile zzagb:Lcom/google/android/gms/internal/cast/zzmv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzmv<",
            "Lcom/google/android/gms/internal/cast/zzjm$zzg;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbce:Lcom/google/android/gms/internal/cast/zzjm$zzg;


# instance fields
.field private zzafn:I

.field private zzbbd:I

.field private zzbcb:I

.field private zzbcc:I

.field private zzbcd:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/cast/zzjm$zzg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzjm$zzg;-><init>()V

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzg;->zzbce:Lcom/google/android/gms/internal/cast/zzjm$zzg;

    .line 26
    const-class v1, Lcom/google/android/gms/internal/cast/zzjm$zzg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zzlc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzlc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzlc;-><init>()V

    return-void
.end method

.method static synthetic zzgj()Lcom/google/android/gms/internal/cast/zzjm$zzg;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzg;->zzbce:Lcom/google/android/gms/internal/cast/zzjm$zzg;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/cast/zzjo;->zzagc:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 20
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzg;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    if-nez p1, :cond_1

    .line 13
    const-class p2, Lcom/google/android/gms/internal/cast/zzjm$zzg;

    monitor-enter p2

    .line 14
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzg;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    if-nez p1, :cond_0

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/cast/zzlc$zzc;

    sget-object p3, Lcom/google/android/gms/internal/cast/zzjm$zzg;->zzbce:Lcom/google/android/gms/internal/cast/zzjm$zzg;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/cast/zzlc$zzc;-><init>(Lcom/google/android/gms/internal/cast/zzlc;)V

    .line 17
    sput-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzg;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    .line 18
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

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzg;->zzbce:Lcom/google/android/gms/internal/cast/zzjm$zzg;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzafn"

    aput-object v0, p1, p2

    const-string p2, "zzbcb"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzbbd"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbcc"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzgw;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzbcd"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0000\u0002\u000b\u0001\u0003\u000c\u0002\u0004\u0004\u0003"

    .line 9
    sget-object p3, Lcom/google/android/gms/internal/cast/zzjm$zzg;->zzbce:Lcom/google/android/gms/internal/cast/zzjm$zzg;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/cast/zzjm$zzg;->zza(Lcom/google/android/gms/internal/cast/zzml;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/cast/zzjm$zzg$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzjm$zzg$zza;-><init>(Lcom/google/android/gms/internal/cast/zzjo;)V

    return-object p1

    .line 4
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/cast/zzjm$zzg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzjm$zzg;-><init>()V

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
