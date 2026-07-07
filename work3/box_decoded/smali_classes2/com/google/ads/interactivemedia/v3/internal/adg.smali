.class public final Lcom/google/ads/interactivemedia/v3/internal/adg;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/adh;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/adh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/adg;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/adg;->b:Lcom/google/ads/interactivemedia/v3/internal/adh;

    return-void
.end method


# virtual methods
.method public final a(IIIF)V
    .locals 8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adg;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/add;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/add;-><init>(Lcom/google/ads/interactivemedia/v3/internal/adg;IIIF)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adg;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/adb;

    .line 3
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/adb;-><init>(Lcom/google/ads/interactivemedia/v3/internal/adg;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(JI)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adg;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/adc;

    .line 7
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/adc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/adg;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adg;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ade;

    .line 6
    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ade;-><init>(Lcom/google/ads/interactivemedia/v3/internal/adg;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adg;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ada;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ada;-><init>(Lcom/google/ads/interactivemedia/v3/internal/adg;Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/hc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adg;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/acy;

    .line 4
    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/acy;-><init>(Lcom/google/ads/interactivemedia/v3/internal/adg;Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 9

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adg;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/acz;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 1
    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/acz;-><init>(Lcom/google/ads/interactivemedia/v3/internal/adg;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final synthetic b(IIIF)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adg;->b:Lcom/google/ads/interactivemedia/v3/internal/adh;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/adh;->a(IIIF)V

    return-void
.end method

.method final synthetic b(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adg;->b:Lcom/google/ads/interactivemedia/v3/internal/adh;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/adh;->a(IJ)V

    return-void
.end method

.method final synthetic b(JI)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adg;->b:Lcom/google/ads/interactivemedia/v3/internal/adh;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/adh;->a(JI)V

    return-void
.end method

.method final synthetic b(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adg;->b:Lcom/google/ads/interactivemedia/v3/internal/adh;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/adh;->a(Landroid/view/Surface;)V

    return-void
.end method

.method final synthetic b(Lcom/google/ads/interactivemedia/v3/internal/cz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adg;->b:Lcom/google/ads/interactivemedia/v3/internal/adh;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/adh;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/hc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adg;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/adf;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/adf;-><init>(Lcom/google/ads/interactivemedia/v3/internal/adg;Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final synthetic b(Ljava/lang/String;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adg;->b:Lcom/google/ads/interactivemedia/v3/internal/adh;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/adh;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method final synthetic c(Lcom/google/ads/interactivemedia/v3/internal/hc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adg;->b:Lcom/google/ads/interactivemedia/v3/internal/adh;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/adh;->b(Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    return-void
.end method

.method final synthetic d(Lcom/google/ads/interactivemedia/v3/internal/hc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adg;->b:Lcom/google/ads/interactivemedia/v3/internal/adh;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/adh;->a(Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    return-void
.end method
