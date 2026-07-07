.class public final Lcom/google/vr/sdk/widgets/video/deps/pe;
.super Ljava/lang/Object;
.source "ParsableByteArray.java"


# instance fields
.field public a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    .line 4
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->c:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    .line 8
    array-length p1, p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->c:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    .line 12
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->c:I

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 4

    .line 90
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    .line 93
    :goto_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    sub-int v3, v0, v2

    invoke-static {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a([BII)Ljava/lang/String;

    move-result-object v1

    .line 96
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    .line 97
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->c:I

    if-ge v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 98
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    :cond_2
    return-object v1
.end method

.method public B()Ljava/lang/String;
    .locals 6

    .line 100
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    .line 103
    :goto_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    aget-byte v1, v1, v0

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    sub-int v2, v0, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    aget-byte v4, v2, v1

    const/16 v5, -0x11

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v2, v4

    const/16 v5, -0x45

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v1, 0x2

    aget-byte v2, v2, v4

    const/16 v4, -0x41

    if-ne v2, v4, :cond_2

    add-int/2addr v1, v3

    .line 106
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    sub-int v3, v0, v2

    invoke-static {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a([BII)Ljava/lang/String;

    move-result-object v1

    .line 108
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    .line 109
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->c:I

    if-ne v0, v2, :cond_3

    return-object v1

    .line 111
    :cond_3
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    aget-byte v4, v3, v0

    const/16 v5, 0xd

    if-ne v4, v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 112
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    if-ne v0, v2, :cond_4

    return-object v1

    .line 115
    :cond_4
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v2, v3, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 116
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    :cond_5
    return-object v1
.end method

.method public C()J
    .locals 12

    .line 119
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const/4 v2, 0x7

    const/4 v3, 0x7

    :goto_0
    const/4 v4, 0x6

    const/4 v5, 0x1

    if-ltz v3, :cond_2

    shl-int v6, v5, v3

    int-to-long v7, v6

    and-long/2addr v7, v0

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_1

    if-ge v3, v4, :cond_0

    sub-int/2addr v6, v5

    int-to-long v6, v6

    and-long/2addr v0, v6

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_0
    if-ne v3, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    :goto_2
    if-ge v5, v2, :cond_4

    .line 131
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    add-int/2addr v6, v5

    aget-byte v3, v3, v6

    and-int/lit16 v6, v3, 0xc0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_3

    shl-long/2addr v0, v4

    and-int/lit8 v3, v3, 0x3f

    int-to-long v6, v3

    or-long/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 133
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    const/16 v3, 0x3e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid UTF-8 sequence continuation byte: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_4
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    return-wide v0

    .line 129
    :cond_5
    new-instance v2, Ljava/lang/NumberFormatException;

    const/16 v3, 0x37

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid UTF-8 sequence first byte: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public a(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 79
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    return-object v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    .line 21
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->c:I

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->e()I

    move-result v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BI)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/pd;I)V
    .locals 2

    .line 35
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/pd;->a:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    .line 36
    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->a(I)V

    return-void
.end method

.method public a([BI)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    .line 17
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->c:I

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    return-void
.end method

.method public a([BII)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    return-void
.end method

.method public b()I
    .locals 2

    .line 23
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->c:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public b(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    .line 26
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->c:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->c:I

    return v0
.end method

.method public c(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 30
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->c:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    .line 31
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    return-void
.end method

.method public d()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    return v0
.end method

.method public d(I)V
    .locals 1

    .line 33
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    return-void
.end method

.method public e()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public e(I)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    .line 77
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f()I
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public f(I)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 84
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    add-int v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    .line 85
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    aget-byte v1, v2, v1

    if-nez v1, :cond_1

    add-int/lit8 v1, p1, -0x1

    goto :goto_0

    :cond_1
    move v1, p1

    .line 87
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-static {v2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a([BII)Ljava/lang/String;

    move-result-object v0

    .line 88
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    return-object v0
.end method

.method public g()C
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-char v0, v0

    return v0
.end method

.method public h()I
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public i()I
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public j()I
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public k()S
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public l()I
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public m()I
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    shr-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public n()J
    .locals 9

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x18

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x8

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method public o()J
    .locals 9

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x8

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    const/16 v0, 0x18

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    return-wide v0
.end method

.method public p()I
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public q()I
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public r()J
    .locals 9

    .line 53
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x38

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x30

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x28

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x18

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x8

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method public s()J
    .locals 9

    .line 54
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x8

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x20

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x30

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    const/16 v0, 0x38

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    return-wide v0
.end method

.method public t()I
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x2

    .line 56
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->b:I

    return v0
.end method

.method public u()I
    .locals 4

    .line 58
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v0

    .line 59
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v1

    .line 60
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v2

    .line 61
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v3

    shl-int/lit8 v0, v0, 0x15

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x7

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public v()I
    .locals 4

    .line 63
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Top bit not zero: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public w()I
    .locals 4

    .line 67
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->q()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Top bit not zero: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public x()J
    .locals 5

    .line 71
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->r()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    .line 73
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const/16 v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public y()F
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public z()D
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method
