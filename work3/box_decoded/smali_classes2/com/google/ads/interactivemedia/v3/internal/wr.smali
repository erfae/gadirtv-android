.class final Lcom/google/ads/interactivemedia/v3/internal/wr;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ix;


# static fields
.field private static final a:Lcom/google/ads/interactivemedia/v3/internal/cz;


# instance fields
.field private final b:Lcom/google/ads/interactivemedia/v3/internal/ox;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private e:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private f:[B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 1
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    const-string v1, "application/id3"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/wr;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 3
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    const-string v1, "application/x-emsg"

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ix;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ox;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/ox;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->b:Lcom/google/ads/interactivemedia/v3/internal/ox;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->c:Lcom/google/ads/interactivemedia/v3/internal/ix;

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 5
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/wr;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->d:Lcom/google/ads/interactivemedia/v3/internal/cz;

    const/4 p1, 0x0

    new-array p2, p1, [B

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->f:[B

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->g:I

    return-void

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x21

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown metadataType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->f:[B

    .line 6
    array-length v1, v0

    if-ge v1, p1, :cond_0

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr p1, v1

    .line 7
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->f:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/la;->a(Lcom/google/ads/interactivemedia/v3/internal/ix;Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I

    move-result p1

    return p1
.end method

.method public final a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V
    .locals 9

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->e:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 14
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->g:I

    sub-int/2addr v0, p5

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->f:[B

    sub-int p4, v0, p4

    .line 15
    invoke-static {v1, p4, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p4

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 16
    invoke-direct {v1, p4}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([B)V

    iget-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->f:[B

    const/4 v2, 0x0

    .line 17
    invoke-static {p4, v0, p4, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p5, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->g:I

    iget-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->e:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 18
    iget-object p4, p4, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->d:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    invoke-static {p4, v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    iget-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->e:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 19
    iget-object p4, p4, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    const-string v0, "application/x-emsg"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const-string v0, "EmsgUnwrappingTrackOutput"

    if-eqz p4, :cond_3

    .line 20
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/ox;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;)Lcom/google/ads/interactivemedia/v3/internal/ow;

    move-result-object p4

    .line 21
    invoke-virtual {p4}, Lcom/google/ads/interactivemedia/v3/internal/ow;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->d:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 22
    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    .line 23
    invoke-static {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 28
    invoke-virtual {p4}, Lcom/google/ads/interactivemedia/v3/internal/ow;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p4, p4, Lcom/google/ads/interactivemedia/v3/internal/ow;->e:[B

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    .line 29
    :goto_0
    invoke-static {p4}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [B

    invoke-direct {v1, p4}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([B)V

    .line 18
    :goto_1
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v6

    iget-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->c:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 30
    invoke-interface {p4, v1, v6}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->c:Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-wide v3, p1

    move v5, p3

    move v7, p5

    move-object v8, p6

    .line 31
    invoke-interface/range {v2 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    return-void

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 29
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->d:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 24
    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    aput-object p2, p1, v2

    const/4 p2, 0x1

    .line 25
    invoke-virtual {p4}, Lcom/google/ads/interactivemedia/v3/internal/ow;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "Ignoring EMSG. Expected it to contain wrapped %s but actual wrapped format: %s"

    .line 26
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->e:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 32
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Ignoring sample for unsupported format: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 33
    :cond_4
    new-instance p1, Ljava/lang/String;

    .line 32
    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 33
    :goto_2
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/la;->a(Lcom/google/ads/interactivemedia/v3/internal/ix;Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V
    .locals 1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->e:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->c:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->d:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 8
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->g:I

    add-int/2addr v0, p2

    .line 9
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/wr;->a(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->f:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->g:I

    .line 10
    invoke-interface {p1, v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zl;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 11
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->g:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->g:I

    return p1
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->g:I

    add-int/2addr v0, p2

    .line 12
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/wr;->a(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->f:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->g:I

    .line 13
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->g:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wr;->g:I

    return-void
.end method
