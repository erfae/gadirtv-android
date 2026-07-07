.class public final Lcom/google/android/gms/internal/cast/zzjm$zzb;
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
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cast/zzjm$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzlc<",
        "Lcom/google/android/gms/internal/cast/zzjm$zzb;",
        "Lcom/google/android/gms/internal/cast/zzjm$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/cast/zzmn;"
    }
.end annotation


# static fields
.field private static volatile zzagb:Lcom/google/android/gms/internal/cast/zzmv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzmv<",
            "Lcom/google/android/gms/internal/cast/zzjm$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbbb:Lcom/google/android/gms/internal/cast/zzlk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzlk<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/cast/zzjg;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbbc:Lcom/google/android/gms/internal/cast/zzjm$zzb;


# instance fields
.field private zzafn:I

.field private zzbax:Lcom/google/android/gms/internal/cast/zzjm$zze;

.field private zzbay:Lcom/google/android/gms/internal/cast/zzjm$zzx;

.field private zzbaz:Lcom/google/android/gms/internal/cast/zzlm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzlm<",
            "Lcom/google/android/gms/internal/cast/zzjm$zzv;",
            ">;"
        }
    .end annotation
.end field

.field private zzbba:Lcom/google/android/gms/internal/cast/zzlh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/google/android/gms/internal/cast/zzjq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzjq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzbbb:Lcom/google/android/gms/internal/cast/zzlk;

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/cast/zzjm$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzjm$zzb;-><init>()V

    .line 48
    sput-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzbbc:Lcom/google/android/gms/internal/cast/zzjm$zzb;

    .line 49
    const-class v1, Lcom/google/android/gms/internal/cast/zzjm$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zzlc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzlc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzlc;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzjj()Lcom/google/android/gms/internal/cast/zzlm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzbaz:Lcom/google/android/gms/internal/cast/zzlm;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzjh()Lcom/google/android/gms/internal/cast/zzlh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzbba:Lcom/google/android/gms/internal/cast/zzlh;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzjm$zzb;Lcom/google/android/gms/internal/cast/zzjm$zze;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zza(Lcom/google/android/gms/internal/cast/zzjm$zze;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzjm$zzb;Ljava/lang/Iterable;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zza(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/cast/zzjm$zze;)V
    .locals 0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzbax:Lcom/google/android/gms/internal/cast/zzjm$zze;

    .line 7
    iget p1, p0, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzafn:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzafn:I

    return-void
.end method

.method private final zza(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/cast/zzjg;",
            ">;)V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzbba:Lcom/google/android/gms/internal/cast/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzlh;->zzia()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzbba:Lcom/google/android/gms/internal/cast/zzlh;

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzlh;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 16
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cast/zzlh;->zzbb(I)Lcom/google/android/gms/internal/cast/zzlh;

    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzbba:Lcom/google/android/gms/internal/cast/zzlh;

    .line 18
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzjg;

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzbba:Lcom/google/android/gms/internal/cast/zzlh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzjg;->zzfw()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/cast/zzlh;->zzbc(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static zzga()Lcom/google/android/gms/internal/cast/zzjm$zzb$zza;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzbbc:Lcom/google/android/gms/internal/cast/zzjm$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzlc;->zzjf()Lcom/google/android/gms/internal/cast/zzlc$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzjm$zzb$zza;

    return-object v0
.end method

.method static synthetic zzgb()Lcom/google/android/gms/internal/cast/zzjm$zzb;
    .locals 1

    .line 43
    sget-object v0, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzbbc:Lcom/google/android/gms/internal/cast/zzjm$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 23
    sget-object p2, Lcom/google/android/gms/internal/cast/zzjo;->zzagc:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 42
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 40
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    if-nez p1, :cond_1

    .line 33
    const-class p2, Lcom/google/android/gms/internal/cast/zzjm$zzb;

    monitor-enter p2

    .line 34
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    if-nez p1, :cond_0

    .line 36
    new-instance p1, Lcom/google/android/gms/internal/cast/zzlc$zzc;

    sget-object p3, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzbbc:Lcom/google/android/gms/internal/cast/zzjm$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/cast/zzlc$zzc;-><init>(Lcom/google/android/gms/internal/cast/zzlc;)V

    .line 37
    sput-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzagb:Lcom/google/android/gms/internal/cast/zzmv;

    .line 38
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

    .line 30
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzbbc:Lcom/google/android/gms/internal/cast/zzjm$zzb;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzafn"

    aput-object v0, p1, p2

    const-string p2, "zzbax"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzbay"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbaz"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 26
    const-class p3, Lcom/google/android/gms/internal/cast/zzjm$zzv;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzbba"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzjg;->zzfx()Lcom/google/android/gms/internal/cast/zzli;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001\t\u0000\u0002\t\u0001\u0003\u001b\u0004\u001e"

    .line 29
    sget-object p3, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzbbc:Lcom/google/android/gms/internal/cast/zzjm$zzb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zza(Lcom/google/android/gms/internal/cast/zzml;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/cast/zzjm$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzjm$zzb$zza;-><init>(Lcom/google/android/gms/internal/cast/zzjo;)V

    return-object p1

    .line 24
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/cast/zzjm$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzjm$zzb;-><init>()V

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
