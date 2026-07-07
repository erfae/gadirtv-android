.class abstract Lcom/google/vr/sdk/widgets/video/deps/lx;
.super Ljava/lang/Object;
.source "CeaDecoder.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/lm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/lx$b;,
        Lcom/google/vr/sdk/widgets/video/deps/lx$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/vr/sdk/widgets/video/deps/lx$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/vr/sdk/widgets/video/deps/lq;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/google/vr/sdk/widgets/video/deps/lx$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/vr/sdk/widgets/video/deps/lx$a;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->a:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->a:Ljava/util/ArrayDeque;

    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/lx$a;

    invoke-direct {v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/lx$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/lx$1;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->b:Ljava/util/ArrayDeque;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->b:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/lx$b;

    invoke-direct {v2, p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/lx$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/lx;Lcom/google/vr/sdk/widgets/video/deps/lx$1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->c:Ljava/util/PriorityQueue;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/lx$a;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/lx$a;->a()V

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/lx;->h()Lcom/google/vr/sdk/widgets/video/deps/lp;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->e:J

    return-void
.end method

.method protected abstract a(Lcom/google/vr/sdk/widgets/video/deps/lp;)V
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/lq;)V
    .locals 1

    .line 50
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/lq;->a()V

    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/lp;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/lx;->b(Lcom/google/vr/sdk/widgets/video/deps/lp;)V

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/lx;->g()Lcom/google/vr/sdk/widgets/video/deps/lq;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/lp;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->d:Lcom/google/vr/sdk/widgets/video/deps/lx$a;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    .line 20
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/lp;->b_()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 21
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->d:Lcom/google/vr/sdk/widgets/video/deps/lx$a;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/lx;->a(Lcom/google/vr/sdk/widgets/video/deps/lx$a;)V

    goto :goto_1

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->d:Lcom/google/vr/sdk/widgets/video/deps/lx$a;

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->f:J

    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/lx$a;->a(Lcom/google/vr/sdk/widgets/video/deps/lx$a;J)J

    .line 23
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->c:Ljava/util/PriorityQueue;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->d:Lcom/google/vr/sdk/widgets/video/deps/lx$a;

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->d:Lcom/google/vr/sdk/widgets/video/deps/lx$a;

    return-void
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->f:J

    .line 54
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->e:J

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/lx$a;

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/lx;->a(Lcom/google/vr/sdk/widgets/video/deps/lx$a;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->d:Lcom/google/vr/sdk/widgets/video/deps/lx$a;

    if-eqz v0, :cond_1

    .line 58
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/lx;->a(Lcom/google/vr/sdk/widgets/video/deps/lx$a;)V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->d:Lcom/google/vr/sdk/widgets/video/deps/lx$a;

    :cond_1
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method protected abstract e()Z
.end method

.method protected abstract f()Lcom/google/vr/sdk/widgets/video/deps/ll;
.end method

.method public g()Lcom/google/vr/sdk/widgets/video/deps/lq;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 28
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->c:Ljava/util/PriorityQueue;

    .line 29
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/lx$a;

    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/lx$a;->c:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->e:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/lx$a;

    .line 31
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/lx$a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/lq;

    const/4 v2, 0x4

    .line 33
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/lq;->b(I)V

    .line 34
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/lx;->a(Lcom/google/vr/sdk/widgets/video/deps/lx$a;)V

    return-object v1

    .line 36
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/lx;->a(Lcom/google/vr/sdk/widgets/video/deps/lp;)V

    .line 37
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/lx;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/lx;->f()Lcom/google/vr/sdk/widgets/video/deps/ll;

    move-result-object v6

    .line 39
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/lx$a;->b_()Z

    move-result v2

    if-nez v2, :cond_2

    .line 40
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/lq;

    .line 41
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/lx$a;->c:J

    const-wide v7, 0x7fffffffffffffffL

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/lq;->a(JLcom/google/vr/sdk/widgets/video/deps/ll;J)V

    .line 42
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/lx;->a(Lcom/google/vr/sdk/widgets/video/deps/lx$a;)V

    return-object v1

    .line 44
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/lx;->a(Lcom/google/vr/sdk/widgets/video/deps/lx$a;)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public h()Lcom/google/vr/sdk/widgets/video/deps/lp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->d:Lcom/google/vr/sdk/widgets/video/deps/lx$a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/lx$a;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lx;->d:Lcom/google/vr/sdk/widgets/video/deps/lx$a;

    return-object v0
.end method
