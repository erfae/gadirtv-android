.class public abstract Lcom/google/android/gms/internal/cast/zzlc;
.super Lcom/google/android/gms/internal/cast/zzjt;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cast/zzlc$zzc;,
        Lcom/google/android/gms/internal/cast/zzlc$zze;,
        Lcom/google/android/gms/internal/cast/zzlc$zzb;,
        Lcom/google/android/gms/internal/cast/zzlc$zza;,
        Lcom/google/android/gms/internal/cast/zzlc$zzd;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/cast/zzlc<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/cast/zzlc$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/cast/zzjt<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzbna:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/cast/zzlc<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzbmy:Lcom/google/android/gms/internal/cast/zznt;

.field private zzbmz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzlc;->zzbna:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzjt;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zznt;->zzkz()Lcom/google/android/gms/internal/cast/zznt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzlc;->zzbmy:Lcom/google/android/gms/internal/cast/zznt;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/cast/zzlc;->zzbmz:I

    return-void
.end method

.method protected static zza(Lcom/google/android/gms/internal/cast/zzml;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 50
    new-instance v0, Lcom/google/android/gms/internal/cast/zzmz;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzmz;-><init>(Lcom/google/android/gms/internal/cast/zzml;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs zza(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 55
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 57
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 58
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 56
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 53
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzlc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/cast/zzlc<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/google/android/gms/internal/cast/zzlc;->zzbna:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final zza(Lcom/google/android/gms/internal/cast/zzlc;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/cast/zzlc<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 60
    sget v0, Lcom/google/android/gms/internal/cast/zzlc$zzd;->zzbnc:I

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/cast/zzlc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 68
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzmx;->zzki()Lcom/google/android/gms/internal/cast/zzmx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/cast/zzmx;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zznc;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/cast/zznc;->zzm(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    .line 70
    sget p1, Lcom/google/android/gms/internal/cast/zzlc$zzd;->zzbnd:I

    if-eqz v0, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 73
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/cast/zzlc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method static zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzlc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/cast/zzlc<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/cast/zzlc;->zzbna:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzlc;

    if-nez v0, :cond_0

    .line 33
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/cast/zzlc;->zzbna:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzlc;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 39
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/zzoa;->zzg(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzlc;

    .line 40
    sget v1, Lcom/google/android/gms/internal/cast/zzlc$zzd;->zzbnh:I

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/cast/zzlc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    check-cast v0, Lcom/google/android/gms/internal/cast/zzlc;

    if-eqz v0, :cond_1

    .line 46
    sget-object v1, Lcom/google/android/gms/internal/cast/zzlc;->zzbna:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected static zzjh()Lcom/google/android/gms/internal/cast/zzlh;
    .locals 1

    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzle;->zzjm()Lcom/google/android/gms/internal/cast/zzle;

    move-result-object v0

    return-object v0
.end method

.method protected static zzji()Lcom/google/android/gms/internal/cast/zzlj;
    .locals 1

    .line 76
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzlz;->zzjv()Lcom/google/android/gms/internal/cast/zzlz;

    move-result-object v0

    return-object v0
.end method

.method protected static zzjj()Lcom/google/android/gms/internal/cast/zzlm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/cast/zzlm<",
            "TE;>;"
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzna;->zzkl()Lcom/google/android/gms/internal/cast/zzna;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 13
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 15
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzmx;->zzki()Lcom/google/android/gms/internal/cast/zzmx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/cast/zzmx;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zznc;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/cast/zzlc;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/cast/zznc;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzlc;->zzbiv:I

    if-eqz v0, :cond_0

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzlc;->zzbiv:I

    return v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzmx;->zzki()Lcom/google/android/gms/internal/cast/zzmx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/cast/zzmx;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zznc;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/cast/zznc;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzlc;->zzbiv:I

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzlc;->zzbiv:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/cast/zzlc;->zza(Lcom/google/android/gms/internal/cast/zzlc;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/cast/zzmq;->zza(Lcom/google/android/gms/internal/cast/zzml;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final zzah(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/google/android/gms/internal/cast/zzlc;->zzbmz:I

    return-void
.end method

.method protected final zzb(Lcom/google/android/gms/internal/cast/zzlc;)Lcom/google/android/gms/internal/cast/zzlc$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/cast/zzlc<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/cast/zzlc$zza<",
            "TMessageType;TBuilderType;>;>(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzlc;->zzjf()Lcom/google/android/gms/internal/cast/zzlc$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zza(Lcom/google/android/gms/internal/cast/zzlc;)Lcom/google/android/gms/internal/cast/zzlc$zza;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/cast/zzkp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzmx;->zzki()Lcom/google/android/gms/internal/cast/zzmx;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/cast/zzmx;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zznc;

    move-result-object v0

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzkr;->zza(Lcom/google/android/gms/internal/cast/zzkp;)Lcom/google/android/gms/internal/cast/zzkr;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/cast/zznc;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/cast/zzon;)V

    return-void
.end method

.method final zzhw()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzlc;->zzbmz:I

    return v0
.end method

.method public final synthetic zzje()Lcom/google/android/gms/internal/cast/zzml;
    .locals 2

    .line 86
    sget v0, Lcom/google/android/gms/internal/cast/zzlc$zzd;->zzbnh:I

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/cast/zzlc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    check-cast v0, Lcom/google/android/gms/internal/cast/zzlc;

    return-object v0
.end method

.method protected final zzjf()Lcom/google/android/gms/internal/cast/zzlc$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/cast/zzlc<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/cast/zzlc$zza<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 16
    sget v0, Lcom/google/android/gms/internal/cast/zzlc$zzd;->zzbng:I

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/cast/zzlc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/gms/internal/cast/zzlc$zza;

    return-object v0
.end method

.method public final zzjg()I
    .locals 2

    .line 28
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzlc;->zzbmz:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzmx;->zzki()Lcom/google/android/gms/internal/cast/zzmx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/cast/zzmx;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zznc;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/cast/zznc;->zzl(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzlc;->zzbmz:I

    .line 30
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzlc;->zzbmz:I

    return v0
.end method

.method public final synthetic zzjk()Lcom/google/android/gms/internal/cast/zzmo;
    .locals 2

    .line 79
    sget v0, Lcom/google/android/gms/internal/cast/zzlc$zzd;->zzbng:I

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/cast/zzlc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    check-cast v0, Lcom/google/android/gms/internal/cast/zzlc$zza;

    .line 82
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zza(Lcom/google/android/gms/internal/cast/zzlc;)Lcom/google/android/gms/internal/cast/zzlc$zza;

    return-object v0
.end method
