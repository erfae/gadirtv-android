.class final Lcom/google/android/gms/internal/ads/zzelf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# static fields
.field private static final zzipf:Lcom/google/android/gms/internal/ads/zzelp;


# instance fields
.field private final zzipe:Lcom/google/android/gms/internal/ads/zzelp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeli;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeli;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzelf;->zzipf:Lcom/google/android/gms/internal/ads/zzelp;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzelh;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzelp;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekf;->zzbhp()Lcom/google/android/gms/internal/ads/zzekf;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelf;->zzbiy()Lcom/google/android/gms/internal/ads/zzelp;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzelh;-><init>([Lcom/google/android/gms/internal/ads/zzelp;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzelf;-><init>(Lcom/google/android/gms/internal/ads/zzelp;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzelp;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzekk;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzelp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelf;->zzipe:Lcom/google/android/gms/internal/ads/zzelp;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzelq;)Z
    .locals 1

    .line 53
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzelq;->zzbjg()I

    move-result p0

    sget v0, Lcom/google/android/gms/internal/ads/zzemd;->zziqj:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzbiy()Lcom/google/android/gms/internal/ads/zzelp;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 54
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 55
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzelp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 57
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzelf;->zzipf:Lcom/google/android/gms/internal/ads/zzelp;

    return-object v0
.end method


# virtual methods
.method public final zzg(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzemn;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/zzemn<",
            "TT;>;"
        }
    .end annotation

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzemp;->zzi(Ljava/lang/Class;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelf;->zzipe:Lcom/google/android/gms/internal/ads/zzelp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzelp;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzelq;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzelq;->zzbjh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    const-class v0, Lcom/google/android/gms/internal/ads/zzekh;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemp;->zzbju()Lcom/google/android/gms/internal/ads/zzenf;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejy;->zzbhj()Lcom/google/android/gms/internal/ads/zzejw;

    move-result-object v0

    .line 15
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzelq;->zzbji()Lcom/google/android/gms/internal/ads/zzels;

    move-result-object v1

    .line 16
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzely;->zza(Lcom/google/android/gms/internal/ads/zzenf;Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/android/gms/internal/ads/zzels;)Lcom/google/android/gms/internal/ads/zzely;

    move-result-object p1

    return-object p1

    .line 17
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemp;->zzbjs()Lcom/google/android/gms/internal/ads/zzenf;

    move-result-object p1

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejy;->zzbhk()Lcom/google/android/gms/internal/ads/zzejw;

    move-result-object v0

    .line 19
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzelq;->zzbji()Lcom/google/android/gms/internal/ads/zzels;

    move-result-object v1

    .line 20
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzely;->zza(Lcom/google/android/gms/internal/ads/zzenf;Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/android/gms/internal/ads/zzels;)Lcom/google/android/gms/internal/ads/zzely;

    move-result-object p1

    return-object p1

    .line 22
    :cond_1
    const-class v0, Lcom/google/android/gms/internal/ads/zzekh;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzelf;->zza(Lcom/google/android/gms/internal/ads/zzelq;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemc;->zzbjk()Lcom/google/android/gms/internal/ads/zzema;

    move-result-object v3

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelc;->zzbix()Lcom/google/android/gms/internal/ads/zzelc;

    move-result-object v4

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemp;->zzbju()Lcom/google/android/gms/internal/ads/zzenf;

    move-result-object v5

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejy;->zzbhj()Lcom/google/android/gms/internal/ads/zzejw;

    move-result-object v6

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeln;->zzbje()Lcom/google/android/gms/internal/ads/zzell;

    move-result-object v7

    move-object v1, p1

    .line 30
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzelw;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelq;Lcom/google/android/gms/internal/ads/zzema;Lcom/google/android/gms/internal/ads/zzelc;Lcom/google/android/gms/internal/ads/zzenf;Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/android/gms/internal/ads/zzell;)Lcom/google/android/gms/internal/ads/zzelw;

    move-result-object p1

    return-object p1

    .line 32
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemc;->zzbjk()Lcom/google/android/gms/internal/ads/zzema;

    move-result-object v3

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelc;->zzbix()Lcom/google/android/gms/internal/ads/zzelc;

    move-result-object v4

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemp;->zzbju()Lcom/google/android/gms/internal/ads/zzenf;

    move-result-object v5

    const/4 v6, 0x0

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeln;->zzbje()Lcom/google/android/gms/internal/ads/zzell;

    move-result-object v7

    move-object v1, p1

    .line 36
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzelw;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelq;Lcom/google/android/gms/internal/ads/zzema;Lcom/google/android/gms/internal/ads/zzelc;Lcom/google/android/gms/internal/ads/zzenf;Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/android/gms/internal/ads/zzell;)Lcom/google/android/gms/internal/ads/zzelw;

    move-result-object p1

    return-object p1

    .line 38
    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzelf;->zza(Lcom/google/android/gms/internal/ads/zzelq;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemc;->zzbjj()Lcom/google/android/gms/internal/ads/zzema;

    move-result-object v3

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelc;->zzbiw()Lcom/google/android/gms/internal/ads/zzelc;

    move-result-object v4

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemp;->zzbjs()Lcom/google/android/gms/internal/ads/zzenf;

    move-result-object v5

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejy;->zzbhk()Lcom/google/android/gms/internal/ads/zzejw;

    move-result-object v6

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeln;->zzbjd()Lcom/google/android/gms/internal/ads/zzell;

    move-result-object v7

    move-object v1, p1

    .line 45
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzelw;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelq;Lcom/google/android/gms/internal/ads/zzema;Lcom/google/android/gms/internal/ads/zzelc;Lcom/google/android/gms/internal/ads/zzenf;Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/android/gms/internal/ads/zzell;)Lcom/google/android/gms/internal/ads/zzelw;

    move-result-object p1

    return-object p1

    .line 47
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemc;->zzbjj()Lcom/google/android/gms/internal/ads/zzema;

    move-result-object v3

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelc;->zzbiw()Lcom/google/android/gms/internal/ads/zzelc;

    move-result-object v4

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemp;->zzbjt()Lcom/google/android/gms/internal/ads/zzenf;

    move-result-object v5

    const/4 v6, 0x0

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeln;->zzbjd()Lcom/google/android/gms/internal/ads/zzell;

    move-result-object v7

    move-object v1, p1

    .line 51
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzelw;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelq;Lcom/google/android/gms/internal/ads/zzema;Lcom/google/android/gms/internal/ads/zzelc;Lcom/google/android/gms/internal/ads/zzenf;Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/android/gms/internal/ads/zzell;)Lcom/google/android/gms/internal/ads/zzelw;

    move-result-object p1

    return-object p1
.end method
