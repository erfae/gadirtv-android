.class public final Lcom/google/vr/sdk/widgets/video/deps/fm;
.super Ljava/lang/Object;
.source "Id3Reader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fi;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private b:Lcom/google/vr/sdk/widgets/video/deps/dc;

.field private c:Z

.field private d:J

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->c:Z

    return-void
.end method

.method public a(JZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 12
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->c:Z

    .line 13
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->d:J

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->e:I

    .line 15
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->f:I

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V
    .locals 3

    .line 6
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->a()V

    .line 7
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->b()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->b:Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 8
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "application/id3"

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p2, v0, v1, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 7

    .line 17
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    .line 20
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->f:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 22
    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v4

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->f:I

    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->f:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    .line 24
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    const/16 v1, 0x49

    .line 25
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x44

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x33

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 26
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v4

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 31
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->u()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->e:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    .line 27
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->c:Z

    return-void

    .line 32
    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->e:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 33
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->b:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {v1, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 34
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->f:I

    return-void
.end method

.method public b()V
    .locals 8

    .line 36
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->c:Z

    if-eqz v0, :cond_1

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->e:I

    if-eqz v5, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->f:I

    if-eq v0, v5, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->b:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->d:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fm;->c:Z

    :cond_1
    :goto_0
    return-void
.end method
