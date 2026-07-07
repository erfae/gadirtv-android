.class public abstract Lcom/magoware/magoware/webtv/homepage/dashboard/AbstractCoverFlowImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "AbstractCoverFlowImageAdapter.java"


# instance fields
.field private height:F

.field private width:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/AbstractCoverFlowImageAdapter;->width:F

    .line 25
    iput v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/AbstractCoverFlowImageAdapter;->height:F

    return-void
.end method

.method private calculateSize(Landroid/content/Context;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 93
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fcb4a2339c0ebeeL    # 0.2132

    mul-double v0, v0, v2

    const-wide v2, 0x403b2d4fdf3b645aL    # 27.177

    add-double/2addr v0, v2

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v2, p1

    const-wide v4, 0x3fdb4a2339c0ebeeL    # 0.4264

    mul-double v2, v2, v4

    const-wide v4, 0x401bbdf3b645a1cbL    # 6.9355

    sub-double/2addr v2, v4

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    .line 104
    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method


# virtual methods
.method protected abstract createBitmap(I)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public final getItem(I)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "position"
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/AbstractCoverFlowImageAdapter;->createBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "position"
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/AbstractCoverFlowImageAdapter;->getItem(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "position"
        }
    .end annotation

    monitor-enter p0

    int-to-long v0, p1

    .line 57
    monitor-exit p0

    return-wide v0
.end method

.method public bridge synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/homepage/dashboard/AbstractCoverFlowImageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/ImageView;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p2, :cond_3

    .line 65
    :try_start_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 66
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 69
    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/AbstractCoverFlowImageAdapter;->calculateSize(Landroid/content/Context;)I

    move-result p2

    .line 71
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, p2, p2}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 75
    :cond_0
    sget-object p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->GOTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MDU1:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    new-instance p2, Landroid/widget/Gallery$LayoutParams;

    iget v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/AbstractCoverFlowImageAdapter;->width:F

    float-to-int v0, v0

    iget v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/AbstractCoverFlowImageAdapter;->height:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x3c

    invoke-direct {p2, v0, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 76
    :cond_2
    :goto_0
    new-instance p2, Landroid/widget/Gallery$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 82
    :cond_3
    move-object p3, p2

    check-cast p3, Landroid/widget/ImageView;

    .line 83
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 84
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 87
    :goto_1
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/AbstractCoverFlowImageAdapter;->getItem(I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHeight(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "height"
        }
    .end annotation

    monitor-enter p0

    .line 42
    :try_start_0
    iput p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/AbstractCoverFlowImageAdapter;->height:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "width"
        }
    .end annotation

    monitor-enter p0

    .line 35
    :try_start_0
    iput p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/AbstractCoverFlowImageAdapter;->width:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
