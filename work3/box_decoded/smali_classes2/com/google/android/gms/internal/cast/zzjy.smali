.class public abstract Lcom/google/android/gms/internal/cast/zzjy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzbjb:Lcom/google/android/gms/internal/cast/zzjy;

.field private static final zzbjc:Lcom/google/android/gms/internal/cast/zzke;

.field private static final zzbje:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/gms/internal/cast/zzjy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbjd:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/cast/zzki;

    sget-object v1, Lcom/google/android/gms/internal/cast/zzld;->zzbnq:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzki;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzjy;->zzbjb:Lcom/google/android/gms/internal/cast/zzjy;

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzjw;->zzhy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/cast/zzkl;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzkl;-><init>(Lcom/google/android/gms/internal/cast/zzkb;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/cast/zzkc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzkc;-><init>(Lcom/google/android/gms/internal/cast/zzkb;)V

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/cast/zzjy;->zzbjc:Lcom/google/android/gms/internal/cast/zzke;

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/cast/zzka;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzka;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzjy;->zzbje:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/cast/zzjy;->zzbjd:I

    return-void
.end method

.method private static zza(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method static zzak(I)Lcom/google/android/gms/internal/cast/zzkg;
    .locals 2

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/cast/zzkg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/cast/zzkg;-><init>(ILcom/google/android/gms/internal/cast/zzkb;)V

    return-object v0
.end method

.method public static zzat(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzjy;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/cast/zzki;

    sget-object v1, Lcom/google/android/gms/internal/cast/zzld;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzki;-><init>([B)V

    return-object v0
.end method

.method static synthetic zzb(B)I
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/zzjy;->zza(B)I

    move-result p0

    return p0
.end method

.method static zzd(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    .line 24
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Beginning index larger than ending index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "End index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const/16 p2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Beginning index: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 2

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzjy;->zzbjd:I

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzjy;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/gms/internal/cast/zzjy;->zzc(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 15
    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/cast/zzjy;->zzbjd:I

    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/cast/zzkb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzkb;-><init>(Lcom/google/android/gms/internal/cast/zzjy;)V

    return-object v0
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 27
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzjy;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzjy;->size()I

    move-result v2

    const/16 v4, 0x32

    if-gt v2, v4, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/cast/zznq;->zzc(Lcom/google/android/gms/internal/cast/zzjy;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/cast/zzjy;->zzc(II)Lcom/google/android/gms/internal/cast/zzjy;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zznq;->zzc(Lcom/google/android/gms/internal/cast/zzjy;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    .line 33
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method abstract zza(Lcom/google/android/gms/internal/cast/zzjz;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzai(I)B
.end method

.method abstract zzaj(I)B
.end method

.method protected abstract zzc(III)I
.end method

.method public abstract zzc(II)Lcom/google/android/gms/internal/cast/zzjy;
.end method

.method public final zzid()Ljava/lang/String;
    .locals 2

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/cast/zzld;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzjy;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/zzjy;->zza(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzie()Z
.end method

.method protected final zzif()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzjy;->zzbjd:I

    return v0
.end method
