.class final Lcom/google/ads/interactivemedia/v3/internal/alb;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field protected final a:J

.field protected b:Z

.field protected final c:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/akz;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/ala;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alb;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alb;->e:Ljava/util/List;

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alb;->a:J

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akz;

    new-instance v1, Landroid/os/Handler;

    .line 6
    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/akz;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alb;->d:Lcom/google/ads/interactivemedia/v3/internal/akz;

    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/alb;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alb;->c:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alb;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alb;->b:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alb;->d:Lcom/google/ads/interactivemedia/v3/internal/akz;

    .line 15
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/akz;->b()V

    return-void
.end method

.method final a(Lcom/google/ads/interactivemedia/v3/internal/ala;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alb;->e:Ljava/util/List;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final b()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alb;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alb;->b:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alb;->d:Lcom/google/ads/interactivemedia/v3/internal/akz;

    .line 16
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/akz;->c()V

    :cond_0
    return-void
.end method

.method final b(Lcom/google/ads/interactivemedia/v3/internal/ala;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alb;->e:Ljava/util/List;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alb;->c:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    .line 2
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;->getContentProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "IMASDK"

    const-string v1, "ContentProgressProvider.getContentProgress() is null. Use VideoProgressUpdate.VIDEO_TIME_NOT_READY instead."

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    :cond_0
    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 8
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alb;->d:Lcom/google/ads/interactivemedia/v3/internal/akz;

    .line 9
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/akz;->a()V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/alb;->c()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object p1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alb;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 11
    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/ala;

    .line 12
    invoke-interface {v4, p1}, Lcom/google/ads/interactivemedia/v3/internal/ala;->a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alb;->d:Lcom/google/ads/interactivemedia/v3/internal/akz;

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alb;->a:J

    .line 13
    invoke-virtual {p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/akz;->a(J)V

    :goto_1
    return v0
.end method
