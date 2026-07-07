.class final Lcom/google/vr/sdk/widgets/video/deps/h$a;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/t;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/vr/sdk/widgets/video/deps/v$c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/ni;

.field private final d:Z

.field private final e:I

.field private final f:I

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/t;Lcom/google/vr/sdk/widgets/video/deps/t;Ljava/util/Set;Lcom/google/vr/sdk/widgets/video/deps/ni;ZIIZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/t;",
            "Lcom/google/vr/sdk/widgets/video/deps/t;",
            "Ljava/util/Set<",
            "Lcom/google/vr/sdk/widgets/video/deps/v$c;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/ni;",
            "ZIIZZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->a:Lcom/google/vr/sdk/widgets/video/deps/t;

    .line 3
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->b:Ljava/util/Set;

    .line 4
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->c:Lcom/google/vr/sdk/widgets/video/deps/ni;

    .line 5
    iput-boolean p5, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->d:Z

    .line 6
    iput p6, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->e:I

    .line 7
    iput p7, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->f:I

    .line 8
    iput-boolean p8, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->g:Z

    .line 9
    iput-boolean p9, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->h:Z

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-nez p10, :cond_1

    .line 10
    iget p5, p2, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    iget p6, p1, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    if-eq p5, p6, :cond_0

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p5, 0x1

    :goto_1
    iput-boolean p5, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->i:Z

    .line 11
    iget-object p5, p2, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object p6, p1, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    if-ne p5, p6, :cond_3

    iget-object p5, p2, Lcom/google/vr/sdk/widgets/video/deps/t;->c:Ljava/lang/Object;

    iget-object p6, p1, Lcom/google/vr/sdk/widgets/video/deps/t;->c:Ljava/lang/Object;

    if-eq p5, p6, :cond_2

    goto :goto_2

    :cond_2
    const/4 p5, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p5, 0x1

    :goto_3
    iput-boolean p5, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->j:Z

    .line 12
    iget-boolean p5, p2, Lcom/google/vr/sdk/widgets/video/deps/t;->h:Z

    iget-boolean p6, p1, Lcom/google/vr/sdk/widgets/video/deps/t;->h:Z

    if-eq p5, p6, :cond_4

    const/4 p5, 0x1

    goto :goto_4

    :cond_4
    const/4 p5, 0x0

    :goto_4
    iput-boolean p5, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->k:Z

    .line 13
    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/t;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/t;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    if-eq p2, p1, :cond_5

    const/4 p3, 0x1

    :cond_5
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->l:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 15
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->j:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->f:I

    if-nez v0, :cond_1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/v$c;

    .line 17
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->a:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->a:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/t;->c:Ljava/lang/Object;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->f:I

    invoke-interface {v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/v$c;->onTimelineChanged(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;I)V

    goto :goto_0

    .line 19
    :cond_1
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->d:Z

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/v$c;

    .line 21
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->e:I

    invoke-interface {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/v$c;->onPositionDiscontinuity(I)V

    goto :goto_1

    .line 23
    :cond_2
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->l:Z

    if-eqz v0, :cond_3

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->c:Lcom/google/vr/sdk/widgets/video/deps/ni;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->a:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/t;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/nj;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ni;->a(Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/v$c;

    .line 26
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->a:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->i:Lcom/google/vr/sdk/widgets/video/deps/iw;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->a:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/t;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/nj;->c:Lcom/google/vr/sdk/widgets/video/deps/nh;

    invoke-interface {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/v$c;->onTracksChanged(Lcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nh;)V

    goto :goto_2

    .line 28
    :cond_3
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->k:Z

    if-eqz v0, :cond_4

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/v$c;

    .line 30
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->a:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-boolean v2, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->h:Z

    invoke-interface {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/v$c;->onLoadingChanged(Z)V

    goto :goto_3

    .line 32
    :cond_4
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->i:Z

    if-eqz v0, :cond_5

    .line 33
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/v$c;

    .line 34
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->h:Z

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->a:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    invoke-interface {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/v$c;->onPlayerStateChanged(ZI)V

    goto :goto_4

    .line 36
    :cond_5
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->g:Z

    if-eqz v0, :cond_6

    .line 37
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h$a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/v$c;

    .line 38
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/v$c;->onSeekProcessed()V

    goto :goto_5

    :cond_6
    return-void
.end method
