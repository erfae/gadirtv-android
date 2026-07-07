.class final Lcom/google/vr/sdk/widgets/video/deps/dl;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/dm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/dl$a;
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/vr/sdk/widgets/video/deps/dl$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/dr;

.field private d:Lcom/google/vr/sdk/widgets/video/deps/dn;

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->a:[B

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->b:Ljava/util/ArrayDeque;

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dr;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/dr;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->c:Lcom/google/vr/sdk/widgets/video/deps/dr;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cs;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->a:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    .line 72
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->a:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/cs;I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dl;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;I)J

    move-result-wide v0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    long-to-int p1, v0

    .line 77
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double p1, p1

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/cs;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 61
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->a:[B

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/dr;->a(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->a:[B

    invoke-static {v2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dr;->a([BIZ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 64
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->d:Lcom/google/vr/sdk/widgets/video/deps/dn;

    invoke-interface {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dn;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    int-to-long v0, v2

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    .line 67
    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    goto :goto_0
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/cs;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 82
    :cond_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 83
    invoke-interface {p1, v0, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    :goto_0
    if-lez p2, :cond_1

    add-int/lit8 p1, p2, -0x1

    .line 85
    aget-byte p1, v0, p1

    if-nez p1, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 87
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->e:I

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->c:Lcom/google/vr/sdk/widgets/video/deps/dr;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/dr;->a()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dn;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->d:Lcom/google/vr/sdk/widgets/video/deps/dn;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->d:Lcom/google/vr/sdk/widgets/video/deps/dn;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dl$a;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/dl$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dl$a;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    .line 15
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->d:Lcom/google/vr/sdk/widgets/video/deps/dn;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dl$a;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/dl$a;->b(Lcom/google/vr/sdk/widgets/video/deps/dl$a;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dn;->c(I)V

    return v2

    .line 17
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->e:I

    const/4 v3, 0x4

    if-nez v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->c:Lcom/google/vr/sdk/widgets/video/deps/dr;

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/dr;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;ZZI)J

    move-result-wide v4

    const-wide/16 v6, -0x2

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 20
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dl;->b(Lcom/google/vr/sdk/widgets/video/deps/cs;)J

    move-result-wide v4

    :cond_2
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    return v1

    :cond_3
    long-to-int v0, v4

    .line 23
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->f:I

    .line 24
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->e:I

    .line 25
    :cond_4
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->e:I

    const/4 v4, 0x2

    if-ne v0, v2, :cond_5

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->c:Lcom/google/vr/sdk/widgets/video/deps/dr;

    const/16 v5, 0x8

    invoke-virtual {v0, p1, v1, v2, v5}, Lcom/google/vr/sdk/widgets/video/deps/dr;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->g:J

    .line 27
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->e:I

    .line 28
    :cond_5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->d:Lcom/google/vr/sdk/widgets/video/deps/dn;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->f:I

    invoke-interface {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/dn;->a(I)I

    move-result v0

    if-eqz v0, :cond_f

    if-eq v0, v2, :cond_e

    const-wide/16 v5, 0x8

    if-eq v0, v4, :cond_c

    const/4 v4, 0x3

    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_9

    const/4 v3, 0x5

    if-ne v0, v3, :cond_8

    .line 41
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->g:J

    const-wide/16 v7, 0x4

    cmp-long v0, v3, v7

    if-eqz v0, :cond_7

    cmp-long v0, v3, v5

    if-nez v0, :cond_6

    goto :goto_2

    .line 42
    :cond_6
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->g:J

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid float size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->d:Lcom/google/vr/sdk/widgets/video/deps/dn;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->f:I

    long-to-int v4, v3

    invoke-direct {p0, p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/dl;->b(Lcom/google/vr/sdk/widgets/video/deps/cs;I)D

    move-result-wide v3

    invoke-interface {v0, v5, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/dn;->a(ID)V

    .line 44
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->e:I

    return v2

    .line 57
    :cond_8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid element type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->d:Lcom/google/vr/sdk/widgets/video/deps/dn;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->f:I

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->g:J

    long-to-int v5, v4

    invoke-interface {v0, v3, v5, p1}, Lcom/google/vr/sdk/widgets/video/deps/dn;->a(IILcom/google/vr/sdk/widgets/video/deps/cs;)V

    .line 52
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->e:I

    return v2

    .line 46
    :cond_a
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->g:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-gtz v0, :cond_b

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->d:Lcom/google/vr/sdk/widgets/video/deps/dn;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->f:I

    long-to-int v4, v3

    invoke-direct {p0, p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/dl;->c(Lcom/google/vr/sdk/widgets/video/deps/cs;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Lcom/google/vr/sdk/widgets/video/deps/dn;->a(ILjava/lang/String;)V

    .line 49
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->e:I

    return v2

    .line 47
    :cond_b
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->g:J

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "String element size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_c
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->g:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_d

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->d:Lcom/google/vr/sdk/widgets/video/deps/dn;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->f:I

    long-to-int v4, v3

    invoke-direct {p0, p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/dl;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;I)J

    move-result-wide v3

    invoke-interface {v0, v5, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/dn;->a(IJ)V

    .line 39
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->e:I

    return v2

    .line 37
    :cond_d
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->g:J

    const/16 v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid integer size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_e
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v5

    .line 31
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->g:J

    add-long/2addr v3, v5

    .line 32
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->b:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dl$a;

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->f:I

    const/4 v8, 0x0

    invoke-direct {v0, v7, v3, v4, v8}, Lcom/google/vr/sdk/widgets/video/deps/dl$a;-><init>(IJLcom/google/vr/sdk/widgets/video/deps/dl$1;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 33
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->d:Lcom/google/vr/sdk/widgets/video/deps/dn;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->f:I

    iget-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->g:J

    invoke-interface/range {v3 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/dn;->a(IJJ)V

    .line 34
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->e:I

    return v2

    .line 54
    :cond_f
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->g:J

    long-to-int v0, v3

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    .line 55
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->e:I

    goto/16 :goto_1
.end method
