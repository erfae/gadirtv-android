.class final Lcom/google/vr/sdk/widgets/video/deps/hu$a;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/is;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/is;

.field final synthetic b:Lcom/google/vr/sdk/widgets/video/deps/hu;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/hu;Lcom/google/vr/sdk/widgets/video/deps/is;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hu$a;->b:Lcom/google/vr/sdk/widgets/video/deps/hu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/hu$a;->a:Lcom/google/vr/sdk/widgets/video/deps/is;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;Z)I
    .locals 10

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu$a;->b:Lcom/google/vr/sdk/widgets/video/deps/hu;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/hu;->f()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu$a;->c:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p2, v2}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a_(I)V

    return v3

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu$a;->a:Lcom/google/vr/sdk/widgets/video/deps/is;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/is;->a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;Z)I

    move-result p3

    const/4 v0, -0x5

    const-wide/high16 v4, -0x8000000000000000L

    if-ne p3, v0, :cond_6

    .line 16
    iget-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->a:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 17
    iget p3, p2, Lcom/google/vr/sdk/widgets/video/deps/l;->w:I

    if-nez p3, :cond_2

    iget p3, p2, Lcom/google/vr/sdk/widgets/video/deps/l;->x:I

    if-eqz p3, :cond_5

    .line 18
    :cond_2
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/hu$a;->b:Lcom/google/vr/sdk/widgets/video/deps/hu;

    iget-wide v1, p3, Lcom/google/vr/sdk/widgets/video/deps/hu;->b:J

    const-wide/16 v6, 0x0

    const/4 p3, 0x0

    cmp-long v3, v1, v6

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget v1, p2, Lcom/google/vr/sdk/widgets/video/deps/l;->w:I

    .line 19
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/hu$a;->b:Lcom/google/vr/sdk/widgets/video/deps/hu;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/hu;->c:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    iget p3, p2, Lcom/google/vr/sdk/widgets/video/deps/l;->x:I

    .line 20
    :goto_1
    invoke-virtual {p2, v1, p3}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(II)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p2

    iput-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->a:Lcom/google/vr/sdk/widgets/video/deps/l;

    :cond_5
    return v0

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hu$a;->b:Lcom/google/vr/sdk/widgets/video/deps/hu;

    iget-wide v6, p1, Lcom/google/vr/sdk/widgets/video/deps/hu;->c:J

    cmp-long p1, v6, v4

    if-eqz p1, :cond_9

    if-ne p3, v3, :cond_7

    iget-wide v6, p2, Lcom/google/vr/sdk/widgets/video/deps/bo;->c:J

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hu$a;->b:Lcom/google/vr/sdk/widgets/video/deps/hu;

    iget-wide v8, p1, Lcom/google/vr/sdk/widgets/video/deps/hu;->c:J

    cmp-long p1, v6, v8

    if-gez p1, :cond_8

    :cond_7
    if-ne p3, v1, :cond_9

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hu$a;->b:Lcom/google/vr/sdk/widgets/video/deps/hu;

    .line 23
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/hu;->d()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-nez p1, :cond_9

    .line 24
    :cond_8
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a()V

    .line 25
    invoke-virtual {p2, v2}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a_(I)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hu$a;->c:Z

    return v3

    :cond_9
    return p3
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu$a;->c:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu$a;->b:Lcom/google/vr/sdk/widgets/video/deps/hu;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/hu;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu$a;->a:Lcom/google/vr/sdk/widgets/video/deps/is;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/is;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b_(J)I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu$a;->b:Lcom/google/vr/sdk/widgets/video/deps/hu;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/hu;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu$a;->a:Lcom/google/vr/sdk/widgets/video/deps/is;

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/is;->b_(J)I

    move-result p1

    return p1
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu$a;->a:Lcom/google/vr/sdk/widgets/video/deps/is;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/is;->c()V

    return-void
.end method
