.class Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;
.super Landroid/widget/LinearLayout;
.source "VOSubtitleRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/VOSubtitleRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinearLayoutShowBorder"
.end annotation


# instance fields
.field m_nWidth:I

.field paintBorder:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Landroid/content/Context;)V
    .locals 0

    .line 863
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 864
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 860
    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->m_nWidth:I

    .line 861
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 867
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 868
    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 860
    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->m_nWidth:I

    .line 861
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 880
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 882
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->m_nWidth:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 884
    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->getWidth()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 885
    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->getHeight()I

    move-result v0

    int-to-float v11, v0

    iget-object v12, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 886
    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->getWidth()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 887
    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->getHeight()I

    move-result v0

    int-to-float v9, v0

    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->getWidth()I

    move-result v0

    int-to-float v10, v0

    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->getHeight()I

    move-result v0

    int-to-float v11, v0

    iget-object v12, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setBorder(II)V
    .locals 1

    .line 872
    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->m_nWidth:I

    .line 873
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 874
    iget-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
