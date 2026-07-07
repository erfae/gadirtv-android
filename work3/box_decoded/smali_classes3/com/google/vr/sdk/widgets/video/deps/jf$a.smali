.class public final Lcom/google/vr/sdk/widgets/video/deps/jf$a;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/is;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/jf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/jf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/jf<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/vr/sdk/widgets/video/deps/jf;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/ir;

.field private final d:I

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/jf;Lcom/google/vr/sdk/widgets/video/deps/jf;Lcom/google/vr/sdk/widgets/video/deps/ir;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/jf<",
            "TT;>;",
            "Lcom/google/vr/sdk/widgets/video/deps/ir;",
            "I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->b:Lcom/google/vr/sdk/widgets/video/deps/jf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->a:Lcom/google/vr/sdk/widgets/video/deps/jf;

    .line 3
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->c:Lcom/google/vr/sdk/widgets/video/deps/ir;

    .line 4
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->d:I

    return-void
.end method

.method private d()V
    .locals 8

    .line 26
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->e:Z

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->b:Lcom/google/vr/sdk/widgets/video/deps/jf;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->e(Lcom/google/vr/sdk/widgets/video/deps/jf;)Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    move-result-object v1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->b:Lcom/google/vr/sdk/widgets/video/deps/jf;

    .line 28
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->b(Lcom/google/vr/sdk/widgets/video/deps/jf;)[I

    move-result-object v0

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->d:I

    aget v2, v0, v2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->b:Lcom/google/vr/sdk/widgets/video/deps/jf;

    .line 29
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->c(Lcom/google/vr/sdk/widgets/video/deps/jf;)[Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v0

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->d:I

    aget-object v3, v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->b:Lcom/google/vr/sdk/widgets/video/deps/jf;

    .line 30
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->d(Lcom/google/vr/sdk/widgets/video/deps/jf;)J

    move-result-wide v6

    .line 31
    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(ILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->e:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;Z)I
    .locals 7

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->b:Lcom/google/vr/sdk/widgets/video/deps/jf;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->c:Lcom/google/vr/sdk/widgets/video/deps/ir;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->b:Lcom/google/vr/sdk/widgets/video/deps/jf;

    iget-boolean v4, v1, Lcom/google/vr/sdk/widgets/video/deps/jf;->c:Z

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->b:Lcom/google/vr/sdk/widgets/video/deps/jf;

    iget-wide v5, v1, Lcom/google/vr/sdk/widgets/video/deps/jf;->b:J

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 19
    invoke-virtual/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;ZZJ)I

    move-result p1

    const/4 p2, -0x4

    if-ne p1, p2, :cond_1

    .line 21
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->d()V

    :cond_1
    return p1
.end method

.method public a()V
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->b:Lcom/google/vr/sdk/widgets/video/deps/jf;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->a(Lcom/google/vr/sdk/widgets/video/deps/jf;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->d:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->b:Lcom/google/vr/sdk/widgets/video/deps/jf;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->a(Lcom/google/vr/sdk/widgets/video/deps/jf;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->d:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public b()Z
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->b:Lcom/google/vr/sdk/widgets/video/deps/jf;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->b:Lcom/google/vr/sdk/widgets/video/deps/jf;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->c:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b_(J)I
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->b:Lcom/google/vr/sdk/widgets/video/deps/jf;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->c:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->i()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 8
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->c:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->n()I

    move-result p1

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->c:Lcom/google/vr/sdk/widgets/video/deps/ir;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->b(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    if-lez p1, :cond_2

    .line 13
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/jf$a;->d()V

    :cond_2
    return p1
.end method

.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
