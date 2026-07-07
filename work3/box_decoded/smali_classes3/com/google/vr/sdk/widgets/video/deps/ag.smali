.class public Lcom/google/vr/sdk/widgets/video/deps/ag;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/am;
.implements Lcom/google/vr/sdk/widgets/video/deps/ao;
.implements Lcom/google/vr/sdk/widgets/video/deps/by;
.implements Lcom/google/vr/sdk/widgets/video/deps/gt;
.implements Lcom/google/vr/sdk/widgets/video/deps/ig;
.implements Lcom/google/vr/sdk/widgets/video/deps/nn$a;
.implements Lcom/google/vr/sdk/widgets/video/deps/qc;
.implements Lcom/google/vr/sdk/widgets/video/deps/qd;
.implements Lcom/google/vr/sdk/widgets/video/deps/v$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/ag$b;,
        Lcom/google/vr/sdk/widgets/video/deps/ag$c;,
        Lcom/google/vr/sdk/widgets/video/deps/ag$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/vr/sdk/widgets/video/deps/ah;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/oq;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/af$b;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/ag$c;

.field private e:Lcom/google/vr/sdk/widgets/video/deps/v;


# direct methods
.method protected constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/v;Lcom/google/vr/sdk/widgets/video/deps/oq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->e:Lcom/google/vr/sdk/widgets/video/deps/v;

    .line 4
    :cond_0
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/oq;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->b:Lcom/google/vr/sdk/widgets/video/deps/oq;

    .line 5
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ag$c;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->d:Lcom/google/vr/sdk/widgets/video/deps/ag$c;

    .line 7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/af$b;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/af$b;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->c:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    return-void
.end method

.method private a(ILcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->e:Lcom/google/vr/sdk/widgets/video/deps/v;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 278
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->d:Lcom/google/vr/sdk/widgets/video/deps/ag$c;

    invoke-virtual {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(Lcom/google/vr/sdk/widgets/video/deps/ag$b;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object p1

    goto :goto_0

    .line 281
    :cond_0
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/af;->a:Lcom/google/vr/sdk/widgets/video/deps/af;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(Lcom/google/vr/sdk/widgets/video/deps/af;ILcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object p1

    :goto_0
    return-object p1

    .line 283
    :cond_1
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->e:Lcom/google/vr/sdk/widgets/video/deps/v;

    invoke-interface {p2}, Lcom/google/vr/sdk/widgets/video/deps/v;->getCurrentTimeline()Lcom/google/vr/sdk/widgets/video/deps/af;

    move-result-object p2

    .line 284
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/af;->b()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    .line 286
    :cond_3
    sget-object p2, Lcom/google/vr/sdk/widgets/video/deps/af;->a:Lcom/google/vr/sdk/widgets/video/deps/af;

    :goto_2
    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, p2, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(Lcom/google/vr/sdk/widgets/video/deps/af;ILcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/ag$b;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->e:Lcom/google/vr/sdk/widgets/video/deps/v;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_3

    .line 263
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->e:Lcom/google/vr/sdk/widgets/video/deps/v;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/v;->getCurrentWindowIndex()I

    move-result p1

    .line 264
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->d:Lcom/google/vr/sdk/widgets/video/deps/ag$c;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a(I)Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    move-result-object v0

    if-nez v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->e:Lcom/google/vr/sdk/widgets/video/deps/v;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/v;->getCurrentTimeline()Lcom/google/vr/sdk/widgets/video/deps/af;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/af;->b()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 269
    :cond_1
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/af;->a:Lcom/google/vr/sdk/widgets/video/deps/af;

    :goto_1
    const/4 v1, 0x0

    .line 270
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(Lcom/google/vr/sdk/widgets/video/deps/af;ILcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object p1

    return-object p1

    :cond_2
    move-object p1, v0

    .line 271
    :cond_3
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/ag$b;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/ag$b;->c:I

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ag$b;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(Lcom/google/vr/sdk/widgets/video/deps/af;ILcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object p1

    return-object p1
.end method

.method private h()Lcom/google/vr/sdk/widgets/video/deps/ah$a;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->d:Lcom/google/vr/sdk/widgets/video/deps/ag$c;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->b()Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(Lcom/google/vr/sdk/widgets/video/deps/ag$b;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    return-object v0
.end method

.method private i()Lcom/google/vr/sdk/widgets/video/deps/ah$a;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->d:Lcom/google/vr/sdk/widgets/video/deps/ag$c;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a()Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(Lcom/google/vr/sdk/widgets/video/deps/ag$b;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    return-object v0
.end method

.method private j()Lcom/google/vr/sdk/widgets/video/deps/ah$a;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->d:Lcom/google/vr/sdk/widgets/video/deps/ag$c;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->c()Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(Lcom/google/vr/sdk/widgets/video/deps/ag$b;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    return-object v0
.end method

.method private k()Lcom/google/vr/sdk/widgets/video/deps/ah$a;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->d:Lcom/google/vr/sdk/widgets/video/deps/ag$c;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->d()Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(Lcom/google/vr/sdk/widgets/video/deps/ag$b;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/vr/sdk/widgets/video/deps/af;ILcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;
    .locals 12

    .line 244
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v5, p3

    .line 246
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->b:Lcom/google/vr/sdk/widgets/video/deps/oq;

    invoke-interface {p3}, Lcom/google/vr/sdk/widgets/video/deps/oq;->a()J

    move-result-wide v1

    .line 247
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->e:Lcom/google/vr/sdk/widgets/video/deps/v;

    .line 248
    invoke-interface {p3}, Lcom/google/vr/sdk/widgets/video/deps/v;->getCurrentTimeline()Lcom/google/vr/sdk/widgets/video/deps/af;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-ne p1, p3, :cond_1

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->e:Lcom/google/vr/sdk/widgets/video/deps/v;

    invoke-interface {p3}, Lcom/google/vr/sdk/widgets/video/deps/v;->getCurrentWindowIndex()I

    move-result p3

    if-ne p2, p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const-wide/16 v6, 0x0

    if-eqz v5, :cond_3

    .line 249
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p3, :cond_2

    .line 250
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->e:Lcom/google/vr/sdk/widgets/video/deps/v;

    .line 251
    invoke-interface {p3}, Lcom/google/vr/sdk/widgets/video/deps/v;->getCurrentAdGroupIndex()I

    move-result p3

    iget v4, v5, Lcom/google/vr/sdk/widgets/video/deps/if$a;->b:I

    if-ne p3, v4, :cond_2

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->e:Lcom/google/vr/sdk/widgets/video/deps/v;

    .line 252
    invoke-interface {p3}, Lcom/google/vr/sdk/widgets/video/deps/v;->getCurrentAdIndexInAdGroup()I

    move-result p3

    iget v4, v5, Lcom/google/vr/sdk/widgets/video/deps/if$a;->c:I

    if-ne p3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 253
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->e:Lcom/google/vr/sdk/widgets/video/deps/v;

    invoke-interface {p3}, Lcom/google/vr/sdk/widgets/video/deps/v;->getCurrentPosition()J

    move-result-wide v6

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    .line 255
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->e:Lcom/google/vr/sdk/widgets/video/deps/v;

    invoke-interface {p3}, Lcom/google/vr/sdk/widgets/video/deps/v;->getContentPosition()J

    move-result-wide v3

    move-wide v6, v3

    goto :goto_2

    .line 256
    :cond_4
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->c:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    invoke-virtual {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$b;)Lcom/google/vr/sdk/widgets/video/deps/af$b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/af$b;->a()J

    move-result-wide v6

    .line 257
    :cond_6
    :goto_2
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->e:Lcom/google/vr/sdk/widgets/video/deps/v;

    .line 258
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/v;->getCurrentPosition()J

    move-result-wide v8

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->e:Lcom/google/vr/sdk/widgets/video/deps/v;

    .line 259
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/v;->getTotalBufferedDuration()J

    move-result-wide v10

    move-object v0, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/ah$a;-><init>(JLcom/google/vr/sdk/widgets/video/deps/af;ILcom/google/vr/sdk/widgets/video/deps/if$a;JJJ)V

    return-object p3
.end method

.method public final a()V
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->d:Lcom/google/vr/sdk/widgets/video/deps/ag$c;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->i()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->d:Lcom/google/vr/sdk/widgets/video/deps/ag$c;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->f()V

    .line 16
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 17
    invoke-interface {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 3

    .line 66
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->j()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 68
    invoke-interface {v2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 56
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->j()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 58
    invoke-interface {v2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->d(Lcom/google/vr/sdk/widgets/video/deps/ah$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 3

    .line 107
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->j()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 109
    invoke-interface {v2, v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IIIF)V
    .locals 8

    .line 102
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->j()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v6

    .line 103
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ah;

    move-object v1, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 104
    invoke-interface/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;IIIF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IJ)V
    .locals 3

    .line 86
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->h()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 88
    invoke-interface {v2, v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IJJ)V
    .locals 9

    .line 46
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->j()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v7

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ah;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 48
    invoke-interface/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ah;->b(Lcom/google/vr/sdk/widgets/video/deps/ah$a;IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 3

    .line 96
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->j()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 98
    invoke-interface {v2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ah;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/aj;)V
    .locals 3

    .line 61
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->j()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 63
    invoke-interface {v2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;Lcom/google/vr/sdk/widgets/video/deps/aj;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/vr/sdk/widgets/video/deps/bn;)V
    .locals 4

    .line 71
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->i()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    const/4 v3, 0x2

    .line 73
    invoke-interface {v2, v0, v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;ILcom/google/vr/sdk/widgets/video/deps/bn;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/vr/sdk/widgets/video/deps/gp;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->i()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 28
    invoke-interface {v2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/vr/sdk/widgets/video/deps/l;)V
    .locals 4

    .line 81
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->j()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    const/4 v3, 0x2

    .line 83
    invoke-interface {v2, v0, v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;ILcom/google/vr/sdk/widgets/video/deps/l;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 3

    .line 229
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->j()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 231
    invoke-interface {v2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 6

    .line 76
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->j()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object p2

    .line 77
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ah;

    const/4 v2, 0x2

    move-object v1, p2

    move-object v3, p1

    move-wide v4, p4

    .line 78
    invoke-interface/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;ILjava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->d:Lcom/google/vr/sdk/widgets/video/deps/ag$c;

    .line 21
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a(Lcom/google/vr/sdk/widgets/video/deps/ag$c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    .line 23
    iget v2, v1, Lcom/google/vr/sdk/widgets/video/deps/ag$b;->c:I

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ag$b;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    invoke-virtual {p0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/ag;->onMediaPeriodReleased(ILcom/google/vr/sdk/widgets/video/deps/if$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(IJJ)V
    .locals 9

    .line 214
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->k()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v7

    .line 215
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ah;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 216
    invoke-interface/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/ah;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/google/vr/sdk/widgets/video/deps/bn;)V
    .locals 4

    .line 91
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->h()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    const/4 v3, 0x2

    .line 93
    invoke-interface {v2, v0, v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->b(Lcom/google/vr/sdk/widgets/video/deps/ah$a;ILcom/google/vr/sdk/widgets/video/deps/bn;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/vr/sdk/widgets/video/deps/l;)V
    .locals 4

    .line 41
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->j()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    const/4 v3, 0x1

    .line 43
    invoke-interface {v2, v0, v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;ILcom/google/vr/sdk/widgets/video/deps/l;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;JJ)V
    .locals 6

    .line 36
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->j()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object p2

    .line 37
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ah;

    const/4 v2, 0x1

    move-object v1, p2

    move-object v3, p1

    move-wide v4, p4

    .line 38
    invoke-interface/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;ILjava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final c(Lcom/google/vr/sdk/widgets/video/deps/bn;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->i()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    const/4 v3, 0x1

    .line 33
    invoke-interface {v2, v0, v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;ILcom/google/vr/sdk/widgets/video/deps/bn;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    .line 219
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->j()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 221
    invoke-interface {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ah;->f(Lcom/google/vr/sdk/widgets/video/deps/ah$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Lcom/google/vr/sdk/widgets/video/deps/bn;)V
    .locals 4

    .line 51
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->h()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    const/4 v3, 0x1

    .line 53
    invoke-interface {v2, v0, v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->b(Lcom/google/vr/sdk/widgets/video/deps/ah$a;ILcom/google/vr/sdk/widgets/video/deps/bn;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    .line 224
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->j()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 226
    invoke-interface {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ah;->g(Lcom/google/vr/sdk/widgets/video/deps/ah$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    .line 234
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->j()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 236
    invoke-interface {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ah;->h(Lcom/google/vr/sdk/widgets/video/deps/ah$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 3

    .line 239
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->h()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 241
    invoke-interface {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ah;->i(Lcom/google/vr/sdk/widgets/video/deps/ah$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDownstreamFormatChanged(ILcom/google/vr/sdk/widgets/video/deps/if$a;Lcom/google/vr/sdk/widgets/video/deps/ig$c;)V
    .locals 1

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(ILcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object p1

    .line 156
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 157
    invoke-interface {v0, p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;Lcom/google/vr/sdk/widgets/video/deps/ig$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLoadCanceled(ILcom/google/vr/sdk/widgets/video/deps/if$a;Lcom/google/vr/sdk/widgets/video/deps/ig$b;Lcom/google/vr/sdk/widgets/video/deps/ig$c;)V
    .locals 1

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(ILcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object p1

    .line 135
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 136
    invoke-interface {v0, p1, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/ah;->c(Lcom/google/vr/sdk/widgets/video/deps/ah$a;Lcom/google/vr/sdk/widgets/video/deps/ig$b;Lcom/google/vr/sdk/widgets/video/deps/ig$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLoadCompleted(ILcom/google/vr/sdk/widgets/video/deps/if$a;Lcom/google/vr/sdk/widgets/video/deps/ig$b;Lcom/google/vr/sdk/widgets/video/deps/ig$c;)V
    .locals 1

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(ILcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object p1

    .line 130
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 131
    invoke-interface {v0, p1, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/ah;->b(Lcom/google/vr/sdk/widgets/video/deps/ah$a;Lcom/google/vr/sdk/widgets/video/deps/ig$b;Lcom/google/vr/sdk/widgets/video/deps/ig$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLoadError(ILcom/google/vr/sdk/widgets/video/deps/if$a;Lcom/google/vr/sdk/widgets/video/deps/ig$b;Lcom/google/vr/sdk/widgets/video/deps/ig$c;Ljava/io/IOException;Z)V
    .locals 6

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(ILcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object p1

    .line 140
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ah;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 141
    invoke-interface/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;Lcom/google/vr/sdk/widgets/video/deps/ig$b;Lcom/google/vr/sdk/widgets/video/deps/ig$c;Ljava/io/IOException;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLoadStarted(ILcom/google/vr/sdk/widgets/video/deps/if$a;Lcom/google/vr/sdk/widgets/video/deps/ig$b;Lcom/google/vr/sdk/widgets/video/deps/ig$c;)V
    .locals 1

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(ILcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object p1

    .line 125
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 126
    invoke-interface {v0, p1, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;Lcom/google/vr/sdk/widgets/video/deps/ig$b;Lcom/google/vr/sdk/widgets/video/deps/ig$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLoadingChanged(Z)V
    .locals 3

    .line 171
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->i()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 173
    invoke-interface {v2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->b(Lcom/google/vr/sdk/widgets/video/deps/ah$a;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMediaPeriodCreated(ILcom/google/vr/sdk/widgets/video/deps/if$a;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->d:Lcom/google/vr/sdk/widgets/video/deps/ag$c;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a(ILcom/google/vr/sdk/widgets/video/deps/if$a;)V

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(ILcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object p1

    .line 114
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 115
    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->c(Lcom/google/vr/sdk/widgets/video/deps/ah$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMediaPeriodReleased(ILcom/google/vr/sdk/widgets/video/deps/if$a;)V
    .locals 1

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(ILcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object p1

    .line 119
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->d:Lcom/google/vr/sdk/widgets/video/deps/ag$c;

    invoke-virtual {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->b(Lcom/google/vr/sdk/widgets/video/deps/if$a;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 120
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 121
    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->d(Lcom/google/vr/sdk/widgets/video/deps/ah$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPlaybackParametersChanged(Lcom/google/vr/sdk/widgets/video/deps/u;)V
    .locals 3

    .line 202
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->i()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 204
    invoke-interface {v2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;Lcom/google/vr/sdk/widgets/video/deps/u;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPlayerError(Lcom/google/vr/sdk/widgets/video/deps/f;)V
    .locals 3

    .line 191
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->i()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 193
    invoke-interface {v2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;Lcom/google/vr/sdk/widgets/video/deps/f;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 3

    .line 176
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->i()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 178
    invoke-interface {v2, v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPositionDiscontinuity(I)V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->d:Lcom/google/vr/sdk/widgets/video/deps/ag$c;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->b(I)V

    .line 197
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->i()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 199
    invoke-interface {v2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->b(Lcom/google/vr/sdk/widgets/video/deps/ah$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onReadingStarted(ILcom/google/vr/sdk/widgets/video/deps/if$a;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->d:Lcom/google/vr/sdk/widgets/video/deps/ag$c;

    invoke-virtual {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->c(Lcom/google/vr/sdk/widgets/video/deps/if$a;)V

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(ILcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object p1

    .line 146
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 147
    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->e(Lcom/google/vr/sdk/widgets/video/deps/ah$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 3

    .line 181
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->i()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 183
    invoke-interface {v2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->c(Lcom/google/vr/sdk/widgets/video/deps/ah$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onSeekProcessed()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->d:Lcom/google/vr/sdk/widgets/video/deps/ag$c;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->d:Lcom/google/vr/sdk/widgets/video/deps/ag$c;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->g()V

    .line 209
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->i()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 211
    invoke-interface {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ah;->b(Lcom/google/vr/sdk/widgets/video/deps/ah$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 3

    .line 186
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->i()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 188
    invoke-interface {v2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTimelineChanged(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;I)V
    .locals 1

    .line 160
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->d:Lcom/google/vr/sdk/widgets/video/deps/ag$c;

    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a(Lcom/google/vr/sdk/widgets/video/deps/af;)V

    .line 161
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->i()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object p1

    .line 162
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 163
    invoke-interface {v0, p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTracksChanged(Lcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nh;)V
    .locals 3

    .line 166
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->i()Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 168
    invoke-interface {v2, v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ah;->a(Lcom/google/vr/sdk/widgets/video/deps/ah$a;Lcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nh;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onUpstreamDiscarded(ILcom/google/vr/sdk/widgets/video/deps/if$a;Lcom/google/vr/sdk/widgets/video/deps/ig$c;)V
    .locals 1

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(ILcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ah$a;

    move-result-object p1

    .line 151
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ah;

    .line 152
    invoke-interface {v0, p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/ah;->b(Lcom/google/vr/sdk/widgets/video/deps/ah$a;Lcom/google/vr/sdk/widgets/video/deps/ig$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method
