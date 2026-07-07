.class public final Lcom/google/vr/sdk/widgets/video/deps/cx;
.super Ljava/lang/Object;
.source "Id3Peeker.java"


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/pe;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cx;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/he$a;)Lcom/google/vr/sdk/widgets/video/deps/gp;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cx;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/16 v4, 0xa

    invoke-interface {p1, v3, v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cx;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 11
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cx;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->l()I

    move-result v3

    sget v5, Lcom/google/vr/sdk/widgets/video/deps/he;->b:I

    if-eq v3, v5, :cond_0

    goto :goto_2

    .line 13
    :cond_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cx;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 14
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cx;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->u()I

    move-result v3

    add-int/lit8 v5, v3, 0xa

    if-nez v1, :cond_1

    .line 17
    new-array v1, v5, [B

    .line 18
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/cx;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-static {v6, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    invoke-interface {p1, v1, v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 20
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/he;

    invoke-direct {v3, p2}, Lcom/google/vr/sdk/widgets/video/deps/he;-><init>(Lcom/google/vr/sdk/widgets/video/deps/he$a;)V

    invoke-virtual {v3, v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/he;->a([BI)Lcom/google/vr/sdk/widgets/video/deps/gp;

    move-result-object v1

    goto :goto_1

    .line 22
    :cond_1
    invoke-interface {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c(I)V

    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    .line 25
    :catch_0
    :goto_2
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    .line 26
    invoke-interface {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c(I)V

    return-object v1
.end method
