.class public final Lcom/google/vr/sdk/widgets/video/deps/eg;
.super Ljava/lang/Object;
.source "PsshAtomUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/eg$a;
    }
.end annotation


# direct methods
.method public static a([B)Ljava/util/UUID;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/eg;->b([B)Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 25
    :cond_0
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/eg$a;->a(Lcom/google/vr/sdk/widgets/video/deps/eg$a;)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/UUID;[B)[B
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eg;->a(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/UUID;[Ljava/util/UUID;[B)[B
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    array-length v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v1, v1, 0x20

    if-eqz p1, :cond_1

    .line 5
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 6
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 8
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/dx;->U:I

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_2

    const/high16 v1, 0x1000000

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 9
    :goto_1
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_3

    .line 13
    array-length p0, p1

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 14
    array-length p0, p1

    :goto_2
    if-ge v0, p0, :cond_3

    aget-object v1, p1, v0

    .line 15
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 18
    array-length p0, p2

    if-eqz p0, :cond_4

    .line 19
    array-length p0, p2

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 21
    :cond_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private static b([B)Lcom/google/vr/sdk/widgets/video/deps/eg$a;
    .locals 9

    .line 26
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>([B)V

    .line 27
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result p0

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-ge p0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 p0, 0x0

    .line 29
    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 30
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v2

    .line 31
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    if-eq v2, v3, :cond_1

    return-object v1

    .line 33
    :cond_1
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v2

    .line 34
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->U:I

    if-eq v2, v3, :cond_2

    return-object v1

    .line 36
    :cond_2
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v2

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/dx;->a(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    const/16 p0, 0x25

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unsupported pssh version: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PsshAtomUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 40
    :cond_3
    new-instance v4, Ljava/util/UUID;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->r()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->r()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v2, v3, :cond_4

    .line 42
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    .line 43
    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 44
    :cond_4
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v3

    .line 45
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v5

    if-eq v3, v5, :cond_5

    return-object v1

    .line 47
    :cond_5
    new-array v1, v3, [B

    .line 48
    invoke-virtual {v0, v1, p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    .line 49
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    invoke-direct {p0, v4, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/eg$a;-><init>(Ljava/util/UUID;I[B)V

    return-object p0
.end method
