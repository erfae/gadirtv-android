.class public final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "SegmentedByteString.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentedByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n+ 2 SegmentedByteString.kt\nokio/internal/SegmentedByteStringKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,132:1\n59#2,12:133\n59#2,12:145\n100#2:157\n101#2,26:159\n130#2,5:185\n137#2:190\n140#2,3:191\n59#2,8:194\n143#2,6:202\n67#2,4:208\n149#2:212\n59#2,12:213\n153#2:225\n81#2,10:226\n154#2,9:236\n91#2,4:245\n163#2,2:249\n172#2,4:251\n81#2,10:255\n176#2,3:265\n91#2,4:268\n179#2:272\n188#2,8:273\n81#2,10:281\n196#2,3:291\n91#2,4:294\n199#2:298\n203#2,4:299\n211#2,6:303\n59#2,8:309\n217#2,7:317\n67#2,4:324\n224#2,2:328\n1#3:158\n*E\n*S KotlinDebug\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n*L\n53#1,12:133\n65#1,12:145\n77#1:157\n77#1,26:159\n79#1,5:185\n81#1:190\n83#1,3:191\n83#1,8:194\n83#1,6:202\n83#1,4:208\n83#1:212\n89#1,12:213\n95#1:225\n95#1,10:226\n95#1,9:236\n95#1,4:245\n95#1,2:249\n102#1,4:251\n102#1,10:255\n102#1,3:265\n102#1,4:268\n102#1:272\n109#1,8:273\n109#1,10:281\n109#1,3:291\n109#1,4:294\n109#1:298\n123#1,4:299\n125#1,6:303\n125#1,8:309\n125#1,7:317\n125#1,4:324\n125#1,2:328\n77#1:158\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u0005\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0008\u0000\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J\u0015\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u0010H\u0010\u00a2\u0006\u0002\u0008\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\r\u0010\u0019\u001a\u00020\u001aH\u0010\u00a2\u0006\u0002\u0008\u001bJ\u0008\u0010\u001c\u001a\u00020\u001aH\u0016J\u0008\u0010\u001d\u001a\u00020\u0010H\u0016J\u001d\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u0001H\u0010\u00a2\u0006\u0002\u0008 J\u0018\u0010!\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u001aH\u0016J\r\u0010#\u001a\u00020\u0004H\u0010\u00a2\u0006\u0002\u0008$J\u0015\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u001aH\u0010\u00a2\u0006\u0002\u0008(J\u0018\u0010)\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u001aH\u0016J(\u0010*\u001a\u00020\u00162\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001aH\u0016J(\u0010*\u001a\u00020\u00162\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001aH\u0016J\u0010\u0010.\u001a\u00020\u00102\u0006\u0010/\u001a\u000200H\u0016J\u0018\u00101\u001a\u00020\u00012\u0006\u00102\u001a\u00020\u001a2\u0006\u00103\u001a\u00020\u001aH\u0016J\u0008\u00104\u001a\u00020\u0001H\u0016J\u0008\u00105\u001a\u00020\u0001H\u0016J\u0008\u00106\u001a\u00020\u0004H\u0016J\u0008\u00107\u001a\u00020\u0001H\u0002J\u0008\u00108\u001a\u00020\u0010H\u0016J\u0010\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H\u0016J%\u00109\u001a\u00020:2\u0006\u0010=\u001a\u00020>2\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001aH\u0010\u00a2\u0006\u0002\u0008?J\u0008\u0010@\u001a\u00020AH\u0002R\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006B"
    }
    d2 = {
        "Lokio/SegmentedByteString;",
        "Lokio/ByteString;",
        "segments",
        "",
        "",
        "directory",
        "",
        "([[B[I)V",
        "getDirectory$okio",
        "()[I",
        "getSegments$okio",
        "()[[B",
        "[[B",
        "asByteBuffer",
        "Ljava/nio/ByteBuffer;",
        "base64",
        "",
        "base64Url",
        "digest",
        "algorithm",
        "digest$okio",
        "equals",
        "",
        "other",
        "",
        "getSize",
        "",
        "getSize$okio",
        "hashCode",
        "hex",
        "hmac",
        "key",
        "hmac$okio",
        "indexOf",
        "fromIndex",
        "internalArray",
        "internalArray$okio",
        "internalGet",
        "",
        "pos",
        "internalGet$okio",
        "lastIndexOf",
        "rangeEquals",
        "offset",
        "otherOffset",
        "byteCount",
        "string",
        "charset",
        "Ljava/nio/charset/Charset;",
        "substring",
        "beginIndex",
        "endIndex",
        "toAsciiLowercase",
        "toAsciiUppercase",
        "toByteArray",
        "toByteString",
        "toString",
        "write",
        "",
        "out",
        "Ljava/io/OutputStream;",
        "buffer",
        "Lokio/Buffer;",
        "write$okio",
        "writeReplace",
        "Ljava/lang/Object;",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final transient directory:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transient segments:[[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([[B[I)V
    .registers 4
    .param p1    # [[B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "segments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    iput-object p1, p0, Lokio/SegmentedByteString;->segments:[[B

    iput-object p2, p0, Lokio/SegmentedByteString;->directory:[I

    return-void
.end method

.method private final toByteString()Lokio/ByteString;
    .registers 3

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64Url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public digest$okio(Ljava/lang/String;)Lokio/ByteString;
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    if-ge v1, v0, :cond_2f

    .line 3
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v3

    add-int v4, v0, v1

    aget v3, v3, v4

    .line 4
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v4

    aget v4, v4, v1

    .line 5
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v5

    aget-object v5, v5, v1

    sub-int v2, v4, v2

    .line 6
    invoke-virtual {p1, v5, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_10

    .line 7
    :cond_2f
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 8
    new-instance v0, Lokio/ByteString;

    const-string v1, "digestBytes"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    goto :goto_21

    :cond_5
    instance-of v2, p1, Lokio/ByteString;

    if-eqz v2, :cond_20

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v3

    if-ne v2, v3, :cond_20

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p0, v1, p1, v1, v2}, Lokio/SegmentedByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method public final getDirectory$okio()[I
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    return-object v0
.end method

.method public final getSegments$okio()[[B
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    return-object v0
.end method

.method public getSize$okio()I
    .registers 3

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .registers 9

    .line 1
    invoke-virtual {p0}, Lokio/ByteString;->getHashCode$okio()I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3a

    .line 2
    :cond_7
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_f
    if-ge v1, v0, :cond_36

    .line 3
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v4

    add-int v5, v0, v1

    aget v4, v4, v5

    .line 4
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v5

    aget v5, v5, v1

    .line 5
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v6

    aget-object v6, v6, v1

    sub-int v3, v5, v3

    add-int/2addr v3, v4

    :goto_28
    if-ge v4, v3, :cond_32

    mul-int/lit8 v2, v2, 0x1f

    .line 6
    aget-byte v7, v6, v4

    add-int/2addr v2, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_32
    add-int/lit8 v1, v1, 0x1

    move v3, v5

    goto :goto_f

    .line 7
    :cond_36
    invoke-virtual {p0, v2}, Lokio/ByteString;->setHashCode$okio(I)V

    move v0, v2

    :goto_3a
    return v0
.end method

.method public hex()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hmac$okio(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_a
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 3
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object p1

    array-length p1, p1

    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_21
    if-ge p2, p1, :cond_40

    .line 4
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v2

    add-int v3, p1, p2

    aget v2, v2, v3

    .line 5
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v3

    aget v3, v3, p2

    .line 6
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v4

    aget-object v4, v4, p2

    sub-int v1, v3, v1

    .line 7
    invoke-virtual {v0, v4, v2, v1}, Ljavax/crypto/Mac;->update([BII)V

    add-int/lit8 p2, p2, 0x1

    move v1, v3

    goto :goto_21

    .line 8
    :cond_40
    new-instance p1, Lokio/ByteString;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p2

    const-string v0, "mac.doFinal()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lokio/ByteString;-><init>([B)V
    :try_end_4e
    .catch Ljava/security/InvalidKeyException; {:try_start_a .. :try_end_4e} :catch_4f

    return-object p1

    :catch_4f
    move-exception p1

    .line 9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public indexOf([BI)I
    .registers 4
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->indexOf([BI)I

    move-result p1

    return p1
.end method

.method public internalArray$okio()[B
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public internalGet$okio(I)B
    .registers 9

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 2
    invoke-static {p0, p1}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v0

    if-nez v0, :cond_1c

    const/4 v1, 0x0

    goto :goto_24

    .line 3
    :cond_1c
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    .line 4
    :goto_24
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v2

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v3, v0

    aget v2, v2, v3

    .line 5
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v3

    aget-object v0, v3, v0

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-byte p1, v0, p1

    return p1
.end method

.method public lastIndexOf([BI)I
    .registers 4
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result p1

    return p1
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .registers 11
    .param p2    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_52

    .line 1
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p1, v1, :cond_10

    goto :goto_52

    :cond_10
    add-int/2addr p4, p1

    .line 2
    invoke-static {p0, p1}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v1

    :goto_15
    if-ge p1, p4, :cond_51

    if-nez v1, :cond_1b

    const/4 v2, 0x0

    goto :goto_23

    .line 3
    :cond_1b
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 4
    :goto_23
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v3

    aget v3, v3, v1

    sub-int/2addr v3, v2

    .line 5
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v4

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v1

    aget v4, v4, v5

    add-int/2addr v3, v2

    .line 6
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, p1

    sub-int v2, p1, v2

    add-int/2addr v2, v4

    .line 7
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v4

    aget-object v4, v4, v1

    .line 8
    invoke-virtual {p2, p3, v4, v2, v3}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v2

    if-nez v2, :cond_4c

    goto :goto_52

    :cond_4c
    add-int/2addr p3, v3

    add-int/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_51
    const/4 v0, 0x1

    :cond_52
    :goto_52
    return v0
.end method

.method public rangeEquals(I[BII)Z
    .registers 11
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_58

    .line 9
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_58

    if-ltz p3, :cond_58

    .line 10
    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_16

    goto :goto_58

    :cond_16
    add-int/2addr p4, p1

    .line 11
    invoke-static {p0, p1}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v1

    :goto_1b
    if-ge p1, p4, :cond_57

    if-nez v1, :cond_21

    const/4 v2, 0x0

    goto :goto_29

    .line 12
    :cond_21
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 13
    :goto_29
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v3

    aget v3, v3, v1

    sub-int/2addr v3, v2

    .line 14
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v4

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v1

    aget v4, v4, v5

    add-int/2addr v3, v2

    .line 15
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, p1

    sub-int v2, p1, v2

    add-int/2addr v2, v4

    .line 16
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v4

    aget-object v4, v4, v1

    .line 17
    invoke-static {v4, v2, p2, p3, v3}, Lokio/-Util;->arrayRangeEquals([BI[BII)Z

    move-result v2

    if-nez v2, :cond_52

    goto :goto_58

    :cond_52
    add-int/2addr p3, v3

    add-int/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_57
    const/4 v0, 0x1

    :cond_58
    :goto_58
    return v0
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3
    .param p1    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokio/ByteString;->string(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public substring(II)Lokio/ByteString;
    .registers 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_b9

    .line 1
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v1

    if-gt p2, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    const-string v2, "endIndex="

    if-eqz v1, :cond_99

    sub-int v1, p2, p1

    if-ltz v1, :cond_1b

    const/4 v3, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    if-eqz v3, :cond_89

    if-nez p1, :cond_28

    .line 2
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v2

    if-ne p2, v2, :cond_28

    move-object p1, p0

    goto :goto_88

    :cond_28
    if-ne p1, p2, :cond_2d

    .line 3
    sget-object p1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_88

    .line 4
    :cond_2d
    invoke-static {p0, p1}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v2

    add-int/lit8 p2, p2, -0x1

    .line 5
    invoke-static {p0, p2}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result p2

    .line 6
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-static {v3, v2, v4}, Lkotlin/collections/ArraysKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    .line 7
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    if-gt v2, p2, :cond_71

    const/4 v5, 0x0

    move v6, v2

    .line 8
    :goto_4c
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v7

    aget v7, v7, v6

    sub-int/2addr v7, p1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v4, v5

    add-int/lit8 v7, v5, 0x1

    .line 9
    array-length v8, v3

    add-int/2addr v5, v8

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v8

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v9, v6

    aget v8, v8, v9

    aput v8, v4, v5

    if-eq v6, p2, :cond_71

    add-int/lit8 v6, v6, 0x1

    move v5, v7

    goto :goto_4c

    :cond_71
    if-nez v2, :cond_74

    goto :goto_7c

    .line 10
    :cond_74
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object p2

    add-int/lit8 v2, v2, -0x1

    aget v0, p2, v2

    .line 11
    :goto_7c
    array-length p2, v3

    aget v1, v4, p2

    sub-int/2addr p1, v0

    add-int/2addr p1, v1

    aput p1, v4, p2

    .line 12
    new-instance p1, Lokio/SegmentedByteString;

    invoke-direct {p1, v3, v4}, Lokio/SegmentedByteString;-><init>([[B[I)V

    :goto_88
    return-object p1

    :cond_89
    const-string v0, " < beginIndex="

    .line 13
    invoke-static {v2, p2, v0, p1}, Landroidx/emoji2/text/flatbuffer/Utf8Safe$UnpairedSurrogateException$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_99
    const-string p1, " > length("

    .line 15
    invoke-static {v2, p2, p1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 16
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b9
    const-string p2, "beginIndex="

    const-string v0, " < 0"

    .line 17
    invoke-static {p2, p1, v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiUppercase()Lokio/ByteString;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiUppercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .registers 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    if-ge v2, v1, :cond_30

    .line 3
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v5

    add-int v6, v1, v2

    aget v5, v5, v6

    .line 4
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v6

    aget v6, v6, v2

    .line 5
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v7

    aget-object v7, v7, v2

    sub-int v3, v6, v3

    add-int v8, v5, v3

    .line 6
    invoke-static {v7, v0, v4, v5, v8}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    add-int/2addr v4, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_e

    :cond_30
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 8
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    if-ge v1, v0, :cond_2b

    .line 2
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v3

    add-int v4, v0, v1

    aget v3, v3, v4

    .line 3
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v4

    aget v4, v4, v1

    .line 4
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v5

    aget-object v5, v5, v1

    sub-int v2, v4, v2

    .line 5
    invoke-virtual {p1, v5, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_c

    :cond_2b
    return-void
.end method

.method public write$okio(Lokio/Buffer;II)V
    .registers 15
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int v0, p2, p3

    .line 1
    invoke-static {p0, p2}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v1

    :goto_b
    if-ge p2, v0, :cond_60

    if-nez v1, :cond_11

    const/4 v2, 0x0

    goto :goto_19

    .line 2
    :cond_11
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 3
    :goto_19
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v3

    aget v3, v3, v1

    sub-int/2addr v3, v2

    .line 4
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v4

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v1

    aget v4, v4, v5

    add-int/2addr v3, v2

    .line 5
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, p2

    sub-int v2, p2, v2

    add-int v7, v2, v4

    .line 6
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v2

    aget-object v6, v2, v1

    .line 7
    new-instance v2, Lokio/Segment;

    add-int v8, v7, v3

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lokio/Segment;-><init>([BIIZZ)V

    .line 8
    iget-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v4, :cond_51

    .line 9
    iput-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 10
    iput-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 11
    iput-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_5c

    .line 12
    :cond_51
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    :goto_5c
    add-int/2addr p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 13
    :cond_60
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    int-to-long p2, p3

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lokio/Buffer;->setSize$okio(J)V

    return-void
.end method
