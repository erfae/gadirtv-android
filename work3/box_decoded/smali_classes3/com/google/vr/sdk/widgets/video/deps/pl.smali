.class public final Lcom/google/vr/sdk/widgets/video/deps/pl;
.super Ljava/lang/Object;
.source "StandaloneMediaClock.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/pa;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/oq;

.field private b:Z

.field private c:J

.field private d:J

.field private e:Lcom/google/vr/sdk/widgets/video/deps/u;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/oq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->a:Lcom/google/vr/sdk/widgets/video/deps/oq;

    .line 3
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/u;->a:Lcom/google/vr/sdk/widgets/video/deps/u;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->e:Lcom/google/vr/sdk/widgets/video/deps/u;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/u;)Lcom/google/vr/sdk/widgets/video/deps/u;
    .locals 2

    .line 24
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->b:Z

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pl;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pl;->a(J)V

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->e:Lcom/google/vr/sdk/widgets/video/deps/u;

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 5
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->b:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->a:Lcom/google/vr/sdk/widgets/video/deps/oq;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/oq;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->d:J

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->b:Z

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->c:J

    .line 14
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->b:Z

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->a:Lcom/google/vr/sdk/widgets/video/deps/oq;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/oq;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->d:J

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 9
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->b:Z

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pl;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pl;->a(J)V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->b:Z

    :cond_0
    return-void
.end method

.method public d()J
    .locals 6

    .line 17
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->c:J

    .line 18
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->b:Z

    if-eqz v2, :cond_1

    .line 19
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->a:Lcom/google/vr/sdk/widgets/video/deps/oq;

    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/oq;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->d:J

    sub-long/2addr v2, v4

    .line 20
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->e:Lcom/google/vr/sdk/widgets/video/deps/u;

    iget v4, v4, Lcom/google/vr/sdk/widgets/video/deps/u;->b:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 21
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v2

    goto :goto_0

    .line 22
    :cond_0
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->e:Lcom/google/vr/sdk/widgets/video/deps/u;

    invoke-virtual {v4, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/u;->a(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public e()Lcom/google/vr/sdk/widgets/video/deps/u;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pl;->e:Lcom/google/vr/sdk/widgets/video/deps/u;

    return-object v0
.end method
