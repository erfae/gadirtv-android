.class public Lcom/visualon/OSMPUtils/voTextureView;
.super Landroid/view/TextureView;
.source "voTextureView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "voTextureView.java"


# instance fields
.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoWidth:I

    .line 25
    iput p1, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoWidth:I

    .line 25
    iput p1, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoWidth:I

    .line 25
    iput p1, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoHeight:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 47
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 48
    iget v0, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/visualon/OSMPUtils/voTextureView;->getDefaultSize(II)I

    move-result p1

    .line 49
    iget v0, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoHeight:I

    invoke-static {v0, p2}, Lcom/visualon/OSMPUtils/voTextureView;->getDefaultSize(II)I

    move-result p2

    .line 50
    iget v0, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoHeight:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoWidth:I

    if-gtz v1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/visualon/OSMPUtils/voTextureView;->setMeasuredDimension(II)V

    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/visualon/OSMPUtils/voTextureView;->setMeasuredDimension(II)V

    :goto_1
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 40
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoWidth:I

    .line 41
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoHeight:I

    .line 42
    invoke-super {p0, p1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
