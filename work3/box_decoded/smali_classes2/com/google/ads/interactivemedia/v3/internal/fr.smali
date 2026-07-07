.class public final Lcom/google/ads/interactivemedia/v3/internal/fr;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/fs;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/fs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fr;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/fr;->b:Lcom/google/ads/interactivemedia/v3/internal/fs;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fr;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/fp;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(Lcom/google/ads/interactivemedia/v3/internal/fr;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(IJJ)V
    .locals 9

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fr;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/fn;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 7
    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/fn;-><init>(Lcom/google/ads/interactivemedia/v3/internal/fr;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fr;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/fm;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fm;-><init>(Lcom/google/ads/interactivemedia/v3/internal/fr;Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/hc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fr;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/fk;

    .line 4
    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fk;-><init>(Lcom/google/ads/interactivemedia/v3/internal/fr;Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 9

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fr;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/fl;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 2
    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/fl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/fr;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fr;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/fq;

    .line 6
    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/fr;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final synthetic b(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fr;->b:Lcom/google/ads/interactivemedia/v3/internal/fs;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fs;->d(I)V

    return-void
.end method

.method final synthetic b(IJJ)V
    .locals 6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fr;->b:Lcom/google/ads/interactivemedia/v3/internal/fs;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/fs;->a(IJJ)V

    return-void
.end method

.method final synthetic b(Lcom/google/ads/interactivemedia/v3/internal/cz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fr;->b:Lcom/google/ads/interactivemedia/v3/internal/fs;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fs;->b(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/hc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fr;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/fo;

    .line 3
    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fo;-><init>(Lcom/google/ads/interactivemedia/v3/internal/fr;Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final synthetic b(Ljava/lang/String;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fr;->b:Lcom/google/ads/interactivemedia/v3/internal/fs;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/fs;->b(Ljava/lang/String;JJ)V

    return-void
.end method

.method final synthetic b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fr;->b:Lcom/google/ads/interactivemedia/v3/internal/fs;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fs;->c(Z)V

    return-void
.end method

.method final synthetic c(Lcom/google/ads/interactivemedia/v3/internal/hc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fr;->b:Lcom/google/ads/interactivemedia/v3/internal/fs;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fs;->d(Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    return-void
.end method

.method final synthetic d(Lcom/google/ads/interactivemedia/v3/internal/hc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fr;->b:Lcom/google/ads/interactivemedia/v3/internal/fs;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fs;->c(Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    return-void
.end method
