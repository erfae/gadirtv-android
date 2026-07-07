.class final Lcom/google/vr/sdk/widgets/video/deps/d;
.super Ljava/lang/Object;
.source "DefaultMediaClock.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/pa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/pl;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/d$a;

.field private c:Lcom/google/vr/sdk/widgets/video/deps/y;

.field private d:Lcom/google/vr/sdk/widgets/video/deps/pa;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/d$a;Lcom/google/vr/sdk/widgets/video/deps/oq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->b:Lcom/google/vr/sdk/widgets/video/deps/d$a;

    .line 3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pl;

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pl;-><init>(Lcom/google/vr/sdk/widgets/video/deps/oq;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->a:Lcom/google/vr/sdk/widgets/video/deps/pl;

    return-void
.end method

.method private f()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->d:Lcom/google/vr/sdk/widgets/video/deps/pa;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/pa;->d()J

    move-result-wide v0

    .line 40
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->a:Lcom/google/vr/sdk/widgets/video/deps/pl;

    invoke-virtual {v2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pl;->a(J)V

    .line 41
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->d:Lcom/google/vr/sdk/widgets/video/deps/pa;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/pa;->e()Lcom/google/vr/sdk/widgets/video/deps/u;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->a:Lcom/google/vr/sdk/widgets/video/deps/pl;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pl;->e()Lcom/google/vr/sdk/widgets/video/deps/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/u;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->a:Lcom/google/vr/sdk/widgets/video/deps/pl;

    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pl;->a(Lcom/google/vr/sdk/widgets/video/deps/u;)Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 44
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->b:Lcom/google/vr/sdk/widgets/video/deps/d$a;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/d$a;->a(Lcom/google/vr/sdk/widgets/video/deps/u;)V

    :cond_0
    return-void
.end method

.method private g()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->c:Lcom/google/vr/sdk/widgets/video/deps/y;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->isEnded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->c:Lcom/google/vr/sdk/widgets/video/deps/y;

    .line 47
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->c:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->hasReadStreamToEnd()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/u;)Lcom/google/vr/sdk/widgets/video/deps/u;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->d:Lcom/google/vr/sdk/widgets/video/deps/pa;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pa;->a(Lcom/google/vr/sdk/widgets/video/deps/u;)Lcom/google/vr/sdk/widgets/video/deps/u;

    move-result-object p1

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->a:Lcom/google/vr/sdk/widgets/video/deps/pl;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pl;->a(Lcom/google/vr/sdk/widgets/video/deps/u;)Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->b:Lcom/google/vr/sdk/widgets/video/deps/d$a;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/d$a;->a(Lcom/google/vr/sdk/widgets/video/deps/u;)V

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->a:Lcom/google/vr/sdk/widgets/video/deps/pl;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pl;->a()V

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->a:Lcom/google/vr/sdk/widgets/video/deps/pl;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pl;->a(J)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 11
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->getMediaClock()Lcom/google/vr/sdk/widgets/video/deps/pa;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->d:Lcom/google/vr/sdk/widgets/video/deps/pa;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    .line 15
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->d:Lcom/google/vr/sdk/widgets/video/deps/pa;

    .line 16
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->c:Lcom/google/vr/sdk/widgets/video/deps/y;

    .line 17
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->a:Lcom/google/vr/sdk/widgets/video/deps/pl;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pl;->e()Lcom/google/vr/sdk/widgets/video/deps/u;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pa;->a(Lcom/google/vr/sdk/widgets/video/deps/u;)Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 18
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/d;->f()V

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/f;->a(Ljava/lang/RuntimeException;)Lcom/google/vr/sdk/widgets/video/deps/f;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->a:Lcom/google/vr/sdk/widgets/video/deps/pl;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pl;->b()V

    return-void
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/y;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->c:Lcom/google/vr/sdk/widgets/video/deps/y;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->d:Lcom/google/vr/sdk/widgets/video/deps/pa;

    .line 22
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->c:Lcom/google/vr/sdk/widgets/video/deps/y;

    :cond_0
    return-void
.end method

.method public c()J
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/d;->f()V

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->d:Lcom/google/vr/sdk/widgets/video/deps/pa;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/pa;->d()J

    move-result-wide v0

    return-wide v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->a:Lcom/google/vr/sdk/widgets/video/deps/pl;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pl;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->d:Lcom/google/vr/sdk/widgets/video/deps/pa;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/pa;->d()J

    move-result-wide v0

    return-wide v0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->a:Lcom/google/vr/sdk/widgets/video/deps/pl;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pl;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Lcom/google/vr/sdk/widgets/video/deps/u;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->d:Lcom/google/vr/sdk/widgets/video/deps/pa;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/pa;->e()Lcom/google/vr/sdk/widgets/video/deps/u;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/d;->a:Lcom/google/vr/sdk/widgets/video/deps/pl;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pl;->e()Lcom/google/vr/sdk/widgets/video/deps/u;

    move-result-object v0

    :goto_0
    return-object v0
.end method
