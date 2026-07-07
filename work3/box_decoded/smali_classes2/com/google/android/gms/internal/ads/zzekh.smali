.class public abstract Lcom/google/android/gms/internal/ads/zzekh;
.super Lcom/google/android/gms/internal/ads/zzeik;
.source "com.google.android.gms:play-services-gass@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzekh$zzc;,
        Lcom/google/android/gms/internal/ads/zzekh$zzd;,
        Lcom/google/android/gms/internal/ads/zzekh$zze;,
        Lcom/google/android/gms/internal/ads/zzekh$zzb;,
        Lcom/google/android/gms/internal/ads/zzekh$zza;,
        Lcom/google/android/gms/internal/ads/zzekh$zzf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzekh$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/zzeik<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzinq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/zzekh<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzino:Lcom/google/android/gms/internal/ads/zzeni;

.field private zzinp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 165
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzekh;->zzinq:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeik;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeni;->zzbkg()Lcom/google/android/gms/internal/ads/zzeni;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzino:Lcom/google/android/gms/internal/ads/zzeni;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzinp:I

    return-void
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzekh;Lcom/google/android/gms/internal/ads/zzeiu;)Lcom/google/android/gms/internal/ads/zzekh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzekh<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzeiu;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeks;
        }
    .end annotation

    .line 131
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeju;->zzbhe()Lcom/google/android/gms/internal/ads/zzeju;

    move-result-object v0

    .line 132
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zzb(Lcom/google/android/gms/internal/ads/zzekh;Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzekh;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzb(Lcom/google/android/gms/internal/ads/zzekh;)Lcom/google/android/gms/internal/ads/zzekh;

    move-result-object p0

    .line 133
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzb(Lcom/google/android/gms/internal/ads/zzekh;)Lcom/google/android/gms/internal/ads/zzekh;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzekh;Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzekh;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzekh<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzeiu;",
            "Lcom/google/android/gms/internal/ads/zzeju;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeks;
        }
    .end annotation

    .line 134
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzekh;->zzb(Lcom/google/android/gms/internal/ads/zzekh;Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzekh;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzb(Lcom/google/android/gms/internal/ads/zzekh;)Lcom/google/android/gms/internal/ads/zzekh;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzekh;Lcom/google/android/gms/internal/ads/zzejj;Lcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzekh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzekh<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzejj;",
            "Lcom/google/android/gms/internal/ads/zzeju;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeks;
        }
    .end annotation

    .line 89
    sget v0, Lcom/google/android/gms/internal/ads/zzekh$zzf;->zzinx:I

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzekh;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 91
    check-cast p0, Lcom/google/android/gms/internal/ads/zzekh;

    .line 92
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemg;->zzbjn()Lcom/google/android/gms/internal/ads/zzemg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzemg;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzemn;

    move-result-object v0

    .line 93
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzejm;->zza(Lcom/google/android/gms/internal/ads/zzejj;)Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzemn;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzemh;Lcom/google/android/gms/internal/ads/zzeju;)V

    .line 94
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzemn;->zzak(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzeks;

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzeks;

    throw p0

    .line 103
    :cond_0
    throw p0

    :catch_1
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzeks;

    if-eqz p2, :cond_1

    .line 98
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzeks;

    throw p0

    .line 99
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzeks;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzeks;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzeks;->zzl(Lcom/google/android/gms/internal/ads/zzels;)Lcom/google/android/gms/internal/ads/zzeks;

    move-result-object p0

    throw p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzekh;[B)Lcom/google/android/gms/internal/ads/zzekh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzekh<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeks;
        }
    .end annotation

    .line 142
    array-length v0, p1

    .line 143
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeju;->zzbhe()Lcom/google/android/gms/internal/ads/zzeju;

    move-result-object v1

    const/4 v2, 0x0

    .line 144
    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Lcom/google/android/gms/internal/ads/zzekh;[BIILcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzekh;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzb(Lcom/google/android/gms/internal/ads/zzekh;)Lcom/google/android/gms/internal/ads/zzekh;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzekh;[BIILcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzekh;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzekh<",
            "TT;*>;>(TT;[BII",
            "Lcom/google/android/gms/internal/ads/zzeju;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeks;
        }
    .end annotation

    .line 105
    sget p2, Lcom/google/android/gms/internal/ads/zzekh$zzf;->zzinx:I

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 107
    check-cast p0, Lcom/google/android/gms/internal/ads/zzekh;

    .line 108
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemg;->zzbjn()Lcom/google/android/gms/internal/ads/zzemg;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzemg;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzemn;

    move-result-object p2

    const/4 v3, 0x0

    .line 109
    new-instance v5, Lcom/google/android/gms/internal/ads/zzeit;

    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/ads/zzeit;-><init>(Lcom/google/android/gms/internal/ads/zzeju;)V

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzemn;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzeit;)V

    .line 110
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/zzemn;->zzak(Ljava/lang/Object;)V

    .line 111
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zziij:I

    if-nez p1, :cond_0

    return-object p0

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeks;->zzbii()Lcom/google/android/gms/internal/ads/zzeks;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzeks;->zzl(Lcom/google/android/gms/internal/ads/zzels;)Lcom/google/android/gms/internal/ads/zzeks;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzeks;

    if-eqz p2, :cond_1

    .line 116
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzeks;

    throw p0

    .line 117
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzeks;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzeks;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzeks;->zzl(Lcom/google/android/gms/internal/ads/zzels;)Lcom/google/android/gms/internal/ads/zzeks;

    move-result-object p0

    throw p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzekh;[BLcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzekh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzekh<",
            "TT;*>;>(TT;[B",
            "Lcom/google/android/gms/internal/ads/zzeju;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeks;
        }
    .end annotation

    .line 145
    array-length v0, p1

    const/4 v1, 0x0

    .line 146
    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Lcom/google/android/gms/internal/ads/zzekh;[BIILcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzekh;

    move-result-object p0

    .line 147
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzb(Lcom/google/android/gms/internal/ads/zzekh;)Lcom/google/android/gms/internal/ads/zzekh;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzeko;
    .locals 1

    .line 79
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzeko;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 82
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzeko;->zzhf(I)Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzekp;)Lcom/google/android/gms/internal/ads/zzekp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzekp<",
            "TE;>;)",
            "Lcom/google/android/gms/internal/ads/zzekp<",
            "TE;>;"
        }
    .end annotation

    .line 85
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzekp;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 88
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzekp;->zzfx(I)Lcom/google/android/gms/internal/ads/zzekp;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 54
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemi;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzemi;-><init>(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs zza(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 59
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 61
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 62
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 60
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzekh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzekh<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/google/android/gms/internal/ads/zzekh;->zzinq:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final zza(Lcom/google/android/gms/internal/ads/zzekh;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzekh<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 64
    sget v0, Lcom/google/android/gms/internal/ads/zzekh$zzf;->zzinu:I

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzekh;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
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

    .line 71
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemg;->zzbjn()Lcom/google/android/gms/internal/ads/zzemg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzemg;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzemn;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzemn;->zzaw(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    .line 73
    sget p1, Lcom/google/android/gms/internal/ads/zzekh$zzf;->zzinv:I

    if-eqz v0, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 76
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzekh;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzekh;)Lcom/google/android/gms/internal/ads/zzekh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzekh<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeks;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzekh;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeng;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeng;-><init>(Lcom/google/android/gms/internal/ads/zzels;)V

    .line 126
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeks;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeng;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzeks;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzeks;->zzl(Lcom/google/android/gms/internal/ads/zzels;)Lcom/google/android/gms/internal/ads/zzeks;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzekh;Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzekh;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzekh<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzeiu;",
            "Lcom/google/android/gms/internal/ads/zzeju;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeks;
        }
    .end annotation

    .line 135
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeiu;->zzbfs()Lcom/google/android/gms/internal/ads/zzejj;

    move-result-object p1

    .line 136
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Lcom/google/android/gms/internal/ads/zzekh;Lcom/google/android/gms/internal/ads/zzejj;Lcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzekh;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeks; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 137
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzejj;->zzgc(I)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzeks; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 139
    :try_start_2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzeks;->zzl(Lcom/google/android/gms/internal/ads/zzels;)Lcom/google/android/gms/internal/ads/zzeks;

    move-result-object p0

    throw p0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzeks; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 141
    throw p0
.end method

.method protected static zzbia()Lcom/google/android/gms/internal/ads/zzeko;
    .locals 1

    .line 78
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeki;->zzbig()Lcom/google/android/gms/internal/ads/zzeki;

    move-result-object v0

    return-object v0
.end method

.method protected static zzbib()Lcom/google/android/gms/internal/ads/zzekq;
    .locals 1

    .line 83
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelg;->zzbiz()Lcom/google/android/gms/internal/ads/zzelg;

    move-result-object v0

    return-object v0
.end method

.method protected static zzbic()Lcom/google/android/gms/internal/ads/zzekp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/ads/zzekp<",
            "TE;>;"
        }
    .end annotation

    .line 84
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemf;->zzbjm()Lcom/google/android/gms/internal/ads/zzemf;

    move-result-object v0

    return-object v0
.end method

.method static zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzekh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzekh<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/zzekh;->zzinq:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzekh;

    if-nez v0, :cond_0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/ads/zzekh;->zzinq:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzekh;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 43
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzenl;->zzj(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzekh;

    .line 44
    sget v1, Lcom/google/android/gms/internal/ads/zzekh$zzf;->zzinz:I

    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzekh;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Lcom/google/android/gms/internal/ads/zzekh;

    if-eqz v0, :cond_1

    .line 50
    sget-object v1, Lcom/google/android/gms/internal/ads/zzekh;->zzinq:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
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
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemg;->zzbjn()Lcom/google/android/gms/internal/ads/zzemg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzemg;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzemn;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzekh;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzemn;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zziij:I

    if-eqz v0, :cond_0

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zziij:I

    return v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemg;->zzbjn()Lcom/google/android/gms/internal/ads/zzemg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzemg;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzemn;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzemn;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zziij:I

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zziij:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zza(Lcom/google/android/gms/internal/ads/zzekh;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzelt;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzejo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemg;->zzbjn()Lcom/google/android/gms/internal/ads/zzemg;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzemg;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzemn;

    move-result-object v0

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzejr;->zza(Lcom/google/android/gms/internal/ads/zzejo;)Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzemn;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeoc;)V

    return-void
.end method

.method final zzbfh()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzinp:I

    return v0
.end method

.method public final synthetic zzbhw()Lcom/google/android/gms/internal/ads/zzels;
    .locals 2

    .line 161
    sget v0, Lcom/google/android/gms/internal/ads/zzekh$zzf;->zzinz:I

    const/4 v1, 0x0

    .line 162
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzekh;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 163
    check-cast v0, Lcom/google/android/gms/internal/ads/zzekh;

    return-object v0
.end method

.method protected final zzbhx()Lcom/google/android/gms/internal/ads/zzekh$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/ads/zzekh<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/ads/zzekh$zza<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 16
    sget v0, Lcom/google/android/gms/internal/ads/zzekh$zzf;->zziny:I

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzekh;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/gms/internal/ads/zzekh$zza;

    return-object v0
.end method

.method public final zzbhy()Lcom/google/android/gms/internal/ads/zzekh$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 20
    sget v0, Lcom/google/android/gms/internal/ads/zzekh$zzf;->zziny:I

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzekh;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/gms/internal/ads/zzekh$zza;

    .line 23
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzekh$zza;->zza(Lcom/google/android/gms/internal/ads/zzekh;)Lcom/google/android/gms/internal/ads/zzekh$zza;

    return-object v0
.end method

.method public final zzbhz()I
    .locals 2

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzinp:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemg;->zzbjn()Lcom/google/android/gms/internal/ads/zzemg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzemg;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzemn;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzemn;->zzau(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzinp:I

    .line 34
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzinp:I

    return v0
.end method

.method public final synthetic zzbid()Lcom/google/android/gms/internal/ads/zzelr;
    .locals 2

    .line 149
    sget v0, Lcom/google/android/gms/internal/ads/zzekh$zzf;->zziny:I

    const/4 v1, 0x0

    .line 150
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzekh;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    check-cast v0, Lcom/google/android/gms/internal/ads/zzekh$zza;

    .line 152
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzekh$zza;->zza(Lcom/google/android/gms/internal/ads/zzekh;)Lcom/google/android/gms/internal/ads/zzekh$zza;

    return-object v0
.end method

.method public final synthetic zzbie()Lcom/google/android/gms/internal/ads/zzelr;
    .locals 2

    .line 156
    sget v0, Lcom/google/android/gms/internal/ads/zzekh$zzf;->zziny:I

    const/4 v1, 0x0

    .line 157
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzekh;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    check-cast v0, Lcom/google/android/gms/internal/ads/zzekh$zza;

    return-object v0
.end method

.method final zzfu(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzinp:I

    return-void
.end method
