.class public final Lcom/google/android/gms/internal/cast/zzjm$zzo;
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
    name = "zzo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cast/zzjm$zzo$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzlc<",
        "Lcom/google/android/gms/internal/cast/zzjm$zzo;",
        "Lcom/google/android/gms/internal/cast/zzjm$zzo$zza;",
        ">;",
        "Lcom/google/android/gms/internal/cast/zzmn;"
    }
.end annotation


# static fields
.field private static volatile zzagb:Lcom/google/android/gms/internal/cast/zzmv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzmv<",
            "Lcom/google/android/gms/internal/cast/zzjm$zzo;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbfp:Lcom/google/android/gms/internal/cast/zzjm$zzo;


# instance fields
.field private zzafn:I

.field private zzbfj:Z

.field private zzbfk:I

.field private zzbfl:I

.field private zzbfm:I

.field private zzbfn:Lcom/google/android/gms/internal/cast/zzjm$zzz;

.field private zzbfo:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/cast/zzjm$zzo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzjm$zzo;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzo;->zzbfp:Lcom/google/android/gms/internal/cast/zzjm$zzo;

    .line 29
    const-class v1, Lcom/google/android/gms/internal/cast/zzjm$zzo;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zzlc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzlc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzlc;-><init>()V

    return-void
.end method

.method static synthetic zzgv()Lcom/google/android/gms/internal/cast/zzjm$zzo;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzo;->zzbfp:Lcom/google/android/gms/internal/cast/zzjm$zzo;

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
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzo;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    if-nez p1, :cond_1

    .line 16
    const-class p2, Lcom/google/android/gms/internal/cast/zzjm$zzo;

    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzo;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/cast/zzlc$zzc;

    sget-object p3, Lcom/google/android/gms/internal/cast/zzjm$zzo;->zzbfp:Lcom/google/android/gms/internal/cast/zzjm$zzo;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/cast/zzlc$zzc;-><init>(Lcom/google/android/gms/internal/cast/zzlc;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzo;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

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
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzo;->zzbfp:Lcom/google/android/gms/internal/cast/zzjm$zzo;

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzafn"

    aput-object v0, p1, p2

    const-string p2, "zzbfj"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzbfk"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzgd;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzbfl"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzgj;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzbfm"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzfl;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzbfn"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzbfo"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzge;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0007\u0000\u0002\u000c\u0001\u0003\u000c\u0002\u0004\u000c\u0003\u0005\t\u0004\u0006\u000c\u0005"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/cast/zzjm$zzo;->zzbfp:Lcom/google/android/gms/internal/cast/zzjm$zzo;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/cast/zzjm$zzo;->zza(Lcom/google/android/gms/internal/cast/zzml;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/cast/zzjm$zzo$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzjm$zzo$zza;-><init>(Lcom/google/android/gms/internal/cast/zzjo;)V

    return-object p1

    .line 4
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/cast/zzjm$zzo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzjm$zzo;-><init>()V

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
