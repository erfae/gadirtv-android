.class Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;
.super Landroid/widget/TextView;
.source "VOSubtitleRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/VOSubtitleRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextOutLinesView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;
    }
.end annotation


# instance fields
.field private enableDraw:Z

.field private mBlockWindowRectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private maxFontSize:I

.field private nOldBottom:I

.field private nOldLeft:I

.field private nOldRight:I

.field private nOldTop:I

.field private oldBottomSet:Z

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

.field private xBegin:I

.field private xBeginBoundBox:I

.field private yBegin:I

.field private yBeginBoundBox:I


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Landroid/content/Context;)V
    .locals 0

    .line 992
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 993
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 950
    iput-boolean p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->enableDraw:Z

    const/4 p1, 0x0

    .line 951
    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBegin:I

    .line 952
    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBegin:I

    .line 953
    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    .line 954
    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    .line 956
    iput-boolean p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->oldBottomSet:Z

    const/4 p2, -0x1

    .line 957
    iput p2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldBottom:I

    .line 958
    iput p2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldTop:I

    .line 959
    iput p2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldLeft:I

    .line 960
    iput p2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldRight:I

    .line 961
    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->maxFontSize:I

    .line 1447
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->mBlockWindowRectList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 988
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 989
    invoke-direct {p0, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 950
    iput-boolean p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->enableDraw:Z

    const/4 p1, 0x0

    .line 951
    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBegin:I

    .line 952
    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBegin:I

    .line 953
    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    .line 954
    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    .line 956
    iput-boolean p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->oldBottomSet:Z

    const/4 p2, -0x1

    .line 957
    iput p2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldBottom:I

    .line 958
    iput p2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldTop:I

    .line 959
    iput p2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldLeft:I

    .line 960
    iput p2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldRight:I

    .line 961
    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->maxFontSize:I

    .line 1447
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->mBlockWindowRectList:Ljava/util/ArrayList;

    return-void
.end method

.method private CheckRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 1423
    iget v0, p1, Landroid/graphics/Rect;->right:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1424
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1425
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v2, :cond_1

    .line 1426
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1428
    :cond_1
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v1, :cond_2

    .line 1429
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1430
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v2, :cond_3

    .line 1431
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1433
    :cond_3
    :goto_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_4

    .line 1434
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 1435
    :cond_4
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-le v0, v2, :cond_5

    .line 1436
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1438
    :cond_5
    :goto_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_6

    .line 1439
    iget p2, p2, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 1440
    :cond_6
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_7

    .line 1441
    iget p2, p2, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_7
    :goto_3
    return-void
.end method

.method private computeBoundBox(Ljava/util/ArrayList;II)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1346
    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    .line 1347
    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    .line 1348
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1200(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 1352
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    if-ne p3, v1, :cond_1

    .line 1353
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    return v0

    .line 1357
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    .line 1358
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1359
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 1360
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_2

    .line 1361
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 1362
    :cond_2
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-ge v4, v5, :cond_3

    .line 1363
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 1364
    :cond_3
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_4

    .line 1365
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 1366
    :cond_4
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    if-le v4, v5, :cond_5

    .line 1367
    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/graphics/Rect;->right:I

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1371
    :cond_6
    iget-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_7

    .line 1372
    new-instance p1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 1373
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 1374
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 1375
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 1376
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    .line 1379
    :cond_7
    new-instance p1, Landroid/graphics/Rect;

    const/16 v2, 0x64

    invoke-direct {p1, v0, v0, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1382
    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v3

    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$600(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v4

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v6, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v6}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v5

    iget-object v6, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$600(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result p1

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1383
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 1385
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1388
    sget-object v4, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->LEFT:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-virtual {v4}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v4

    if-ne p2, v4, :cond_8

    .line 1389
    iget p2, v2, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v3

    iput p2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    goto :goto_2

    .line 1391
    :cond_8
    sget-object v4, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->CENTER:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-virtual {v4}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v4

    if-ne p2, v4, :cond_9

    .line 1392
    iget p2, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v4

    sub-int/2addr v3, p2

    div-int/lit8 v3, v3, 0x2

    iget p2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p2

    iget p2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, p2

    iput v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    goto :goto_2

    .line 1394
    :cond_9
    sget-object v3, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->RIGHT:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-virtual {v3}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v3

    if-ne p2, v3, :cond_a

    .line 1395
    iget p2, v2, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v3

    iput p2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    .line 1399
    :cond_a
    :goto_2
    sget-object p2, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->TOP:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    invoke-virtual {p2}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->getValue()I

    move-result p2

    if-ne p3, p2, :cond_b

    .line 1400
    iget p1, v2, Landroid/graphics/Rect;->top:I

    iget p2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    goto :goto_3

    .line 1402
    :cond_b
    sget-object p2, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->CENTER:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    invoke-virtual {p2}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->getValue()I

    move-result p2

    if-ne p3, p2, :cond_c

    .line 1403
    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    iget p3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p3

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iget p2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    goto :goto_3

    .line 1405
    :cond_c
    sget-object p1, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->BOTTOM:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    invoke-virtual {p1}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->getValue()I

    move-result p1

    if-ne p3, p1, :cond_d

    .line 1406
    iget p1, v2, Landroid/graphics/Rect;->bottom:I

    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    goto :goto_3

    .line 1408
    :cond_d
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->isBoundingBoxEnabled()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1409
    iget p1, v2, Landroid/graphics/Rect;->top:I

    iget p2, v1, Landroid/graphics/Rect;->top:I

    if-le p1, p2, :cond_e

    .line 1410
    iget p1, v2, Landroid/graphics/Rect;->top:I

    iget p2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    goto :goto_3

    .line 1411
    :cond_e
    iget p1, v2, Landroid/graphics/Rect;->bottom:I

    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    if-ge p1, p2, :cond_f

    .line 1412
    iget p1, v2, Landroid/graphics/Rect;->bottom:I

    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    :cond_f
    :goto_3
    return v0
.end method

.method private doRenderSubtitle(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1451
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1200(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Z

    .line 1454
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->enableDraw:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1200(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1460
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$802(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    .line 1461
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$902(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    .line 1463
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1464
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$802(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    .line 1465
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$902(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    .line 1468
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$900(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v0

    if-lez v0, :cond_2

    .line 1469
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$900(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1502(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;F)F

    goto/16 :goto_0

    .line 1471
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    const/16 v1, 0x258

    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$802(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    .line 1472
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$902(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    .line 1473
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$900(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1502(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;F)F

    goto :goto_0

    .line 1478
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v1

    iget v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectRight:F

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v2

    iget v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectLeft:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$802(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    .line 1479
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v1

    iget v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectBottom:F

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v2

    iget v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectTop:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$902(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    .line 1481
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$900(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v0

    if-lez v0, :cond_4

    .line 1482
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$900(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1502(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;F)F

    .line 1485
    :cond_4
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v0

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectLeft:F

    float-to-int v0, v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBegin:I

    .line 1486
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v0

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectTop:F

    float-to-int v0, v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBegin:I

    .line 1490
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v7

    .line 1492
    invoke-static {}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1600()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    goto/16 :goto_6

    .line 1498
    :cond_5
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->mBlockWindowRectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v9, v1, :cond_a

    const/4 v1, 0x1

    const/4 v10, -0x1

    if-ne v9, v1, :cond_8

    .line 1505
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->mBlockWindowRectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1510
    iget-object v2, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    iget-object v2, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1511
    iget-object v2, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;

    iget v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->horizontalAlignment:I

    .line 1512
    iget-object v3, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;

    iget v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->verticalAlignment:I

    goto :goto_2

    :cond_6
    const/4 v2, -0x1

    const/4 v3, -0x1

    .line 1514
    :goto_2
    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->mBlockWindowRectList:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v2, v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->computeBoundBox(Ljava/util/ArrayList;II)Z

    .line 1516
    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    if-nez v2, :cond_7

    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    if-nez v2, :cond_7

    .line 1517
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->mBlockWindowRectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 1518
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$900(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v2

    if-le v1, v2, :cond_7

    sub-int/2addr v2, v1

    move v6, v2

    goto :goto_3

    :cond_7
    move v6, v0

    .line 1524
    :goto_3
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->mBlockWindowRectList:Ljava/util/ArrayList;

    const/4 v5, 0x6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawBackground(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;Ljava/util/ArrayList;II)V

    move v11, v6

    goto :goto_4

    :cond_8
    move v11, v0

    .line 1527
    :goto_4
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->mBlockWindowRectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v12, 0x0

    .line 1529
    :goto_5
    iget-object v0, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_9

    .line 1530
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1532
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->mBlockWindowRectList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1533
    iput-boolean v8, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->oldBottomSet:Z

    .line 1534
    iput v10, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldBottom:I

    .line 1535
    iput v10, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldTop:I

    .line 1536
    iput v10, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldRight:I

    .line 1537
    iput v10, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldLeft:I

    .line 1539
    iget-object v0, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v11

    move v6, v9

    .line 1541
    invoke-direct/range {v0 .. v6}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawBlockTextInfo(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;Landroid/graphics/Rect;III)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v9, v9, 0x1

    move v0, v11

    goto/16 :goto_1

    :cond_a
    :goto_6
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;Ljava/util/ArrayList;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;II)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1990
    :goto_0
    iget-object v2, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 1991
    iget-object v2, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;

    .line 1992
    iget-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

    .line 1996
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1997
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1998
    iget-object v5, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->color:I

    .line 1999
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2001
    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    if-eqz v5, :cond_f

    .line 2002
    iget-object v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2003
    :goto_1
    iget-object v7, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_5

    .line 2004
    iget-object v7, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;

    if-nez v7, :cond_0

    goto :goto_3

    .line 2007
    :cond_0
    iget-object v8, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    if-nez v8, :cond_1

    goto :goto_3

    :cond_1
    const/4 v8, 0x0

    .line 2009
    :goto_2
    iget-object v9, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 2010
    iget-object v9, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 2011
    iget-object v9, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;

    iget-object v9, v9, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->text:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 2012
    iget-object v9, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;

    iget-object v9, v9, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :cond_5
    if-eqz v6, :cond_f

    .line 2022
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_6

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ne v3, v5, :cond_6

    .line 2023
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v3, v5, :cond_6

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ne v3, v5, :cond_6

    goto/16 :goto_4

    .line 2025
    :cond_6
    iget-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v5, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->horizontalAlignment:I

    iget v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->verticalAlignment:I

    invoke-direct {p0, v3, v0, v5, v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getRowRect(Landroid/graphics/Rect;ZII)Landroid/graphics/Rect;

    move-result-object v2

    .line 2028
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v3

    .line 2029
    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v6, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v6}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v5

    if-ge v5, v3, :cond_7

    move v5, v3

    .line 2035
    :cond_7
    iget-object v6, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v7, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v7}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$600(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v6

    .line 2036
    iget-object v7, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$600(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v2

    .line 2040
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 2041
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 2042
    iget v8, v7, Landroid/graphics/Rect;->left:I

    if-gez v8, :cond_8

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 2043
    :cond_8
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 2044
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 2045
    iget v8, v7, Landroid/graphics/Rect;->top:I

    if-gez v8, :cond_9

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 2046
    :cond_9
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 2047
    iget v8, v7, Landroid/graphics/Rect;->left:I

    if-le v8, v3, :cond_a

    .line 2048
    iput v3, v7, Landroid/graphics/Rect;->left:I

    .line 2049
    :cond_a
    iget v3, v7, Landroid/graphics/Rect;->top:I

    if-le v3, v6, :cond_b

    .line 2050
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 2051
    :cond_b
    iget v3, v7, Landroid/graphics/Rect;->right:I

    if-ge v3, v5, :cond_c

    .line 2052
    iput v5, v7, Landroid/graphics/Rect;->right:I

    .line 2053
    :cond_c
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v2, :cond_d

    .line 2054
    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    :cond_d
    if-gez p4, :cond_e

    .line 2056
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, p4

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 2057
    iget v2, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p4

    iput v2, v7, Landroid/graphics/Rect;->top:I

    .line 2059
    :cond_e
    invoke-direct {p0, p1, v7, v4, p5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;I)V

    :cond_f
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method private drawBlockTextInfo(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;Landroid/graphics/Rect;III)V
    .locals 9

    .line 1561
    iget-object p4, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

    const/4 v0, 0x1

    if-ne p6, v0, :cond_0

    const/4 v0, 0x0

    .line 1564
    invoke-direct {p0, p1, p4, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawPicture(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1566
    :cond_0
    invoke-direct {p0, p1, p4, p3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawPicture(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;Landroid/graphics/Rect;)V

    .line 1571
    :goto_0
    iget-object v0, p4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1575
    :goto_1
    iget-object v1, p4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1576
    iget-object v1, p4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;

    .line 1577
    invoke-virtual {p2}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->getSubtitleRectInfo()Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    move-result-object v1

    iget-object v8, v1, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v8}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawLineTextRowInfo(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private drawLineTextRowInfo(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v0, p6

    if-eqz v10, :cond_12

    .line 1583
    iget-object v1, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 1587
    :cond_0
    iget-object v1, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    .line 1588
    iget-object v2, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v2

    .line 1589
    iget-object v3, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v3

    .line 1591
    iget-object v4, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$600(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v4

    .line 1592
    iget-object v5, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$600(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v1

    if-gez p4, :cond_1

    add-int v4, v4, p4

    add-int v1, v1, p4

    .line 1598
    :cond_1
    iget-boolean v5, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->oldBottomSet:Z

    const/4 v6, 0x0

    const/4 v12, 0x1

    if-eqz v5, :cond_3

    .line 1600
    iget v5, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldTop:I

    if-le v1, v5, :cond_2

    iget v5, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldBottom:I

    if-ge v4, v5, :cond_2

    iget v5, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldLeft:I

    if-le v3, v5, :cond_2

    iget v5, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldRight:I

    if-ge v2, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_3

    .line 1606
    iget v5, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldBottom:I

    if-ge v4, v5, :cond_3

    sub-int v4, v5, v4

    add-int/2addr v1, v4

    move v4, v5

    :cond_3
    sub-int/2addr v1, v4

    .line 1618
    invoke-direct {v9, v10, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getFontMaxSize(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;I)I

    move-result v5

    .line 1619
    iget v7, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->maxFontSize:I

    if-le v5, v7, :cond_4

    .line 1620
    iput v5, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->maxFontSize:I

    :cond_4
    if-lez v5, :cond_5

    int-to-float v1, v5

    const v5, 0x3f99999a    # 1.2f

    mul-float v1, v1, v5

    float-to-int v1, v1

    :cond_5
    add-int/2addr v1, v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1632
    :goto_1
    iget-object v8, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_6

    .line 1633
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 1634
    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v13, 0x0

    .line 1636
    iget-object v14, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;

    .line 1637
    iget-object v15, v14, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->text:Ljava/lang/String;

    .line 1638
    invoke-direct {v9, v10, v14, v8, v13}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->setTextViewByTextInfo(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;Landroid/graphics/Paint;Landroid/graphics/Paint;)I

    .line 1639
    sget-object v13, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1640
    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1643
    :cond_6
    invoke-direct {v9, v10}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getHorizontalAlignment(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;)I

    move-result v5

    .line 1646
    sget-object v8, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->RIGHT:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-virtual {v8}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v8

    const/4 v13, -0x1

    if-eq v5, v8, :cond_b

    sget-object v8, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->CENTER:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    .line 1647
    invoke-virtual {v8}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v8

    if-ne v5, v8, :cond_7

    goto :goto_3

    .line 1667
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->isBoundingBoxEnabled()Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v0, :cond_10

    .line 1669
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->isBoundingBoxEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1670
    iget-object v7, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v7}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    invoke-static {v7, v8}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v7

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_2

    :cond_9
    const/4 v7, -0x1

    :goto_2
    if-eqz v0, :cond_a

    .line 1672
    iget-object v8, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v8, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_a
    if-ge v2, v7, :cond_10

    move v14, v2

    move v2, v7

    goto :goto_4

    .line 1650
    :cond_b
    :goto_3
    sget-object v8, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->RIGHT:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-virtual {v8}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v8

    if-ne v5, v8, :cond_e

    .line 1653
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->isBoundingBoxEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1654
    iget-object v2, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v8}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_c
    if-eqz v0, :cond_d

    .line 1657
    iget-object v2, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v3, v0

    :cond_d
    sub-int v2, v3, v7

    .line 1662
    :cond_e
    sget-object v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->CENTER:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v0

    const/4 v8, 0x2

    if-ne v5, v0, :cond_f

    .line 1663
    iget-object v0, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v0

    sub-int/2addr v0, v7

    div-int/lit8 v2, v0, 0x2

    .line 1665
    :cond_f
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_10
    move v14, v2

    .line 1679
    :goto_4
    new-instance v15, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;

    invoke-direct {v15, v9}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;-><init>(Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;)V

    .line 1680
    iput v13, v15, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nTopOld:I

    .line 1681
    iput v13, v15, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nRightOld:I

    .line 1682
    iput v3, v15, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectRight:I

    .line 1683
    iput v2, v15, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    .line 1684
    iput v1, v15, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    .line 1685
    iput v4, v15, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    .line 1686
    iput v5, v15, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->alignmentH:I

    const/4 v13, 0x0

    .line 1688
    :goto_5
    iget-object v0, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_11

    .line 1690
    iget v4, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->maxFontSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    move v6, v13

    move v7, v14

    move-object v8, v15

    invoke-direct/range {v0 .. v8}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawSegmentTextInfo(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;Landroid/graphics/Rect;IIIILcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1694
    :cond_11
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldBottom:I

    .line 1695
    iget v0, v11, Landroid/graphics/Rect;->top:I

    iput v0, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldTop:I

    .line 1696
    iget v0, v11, Landroid/graphics/Rect;->left:I

    iput v0, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldLeft:I

    .line 1697
    iget v0, v11, Landroid/graphics/Rect;->right:I

    iput v0, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldRight:I

    .line 1698
    iput-boolean v12, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->oldBottomSet:Z

    :cond_12
    :goto_6
    return-void
.end method

.method private drawPicture(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;Landroid/graphics/Rect;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1108
    iget-object v4, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    if-eqz v4, :cond_11

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$700(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v4

    if-lez v4, :cond_11

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$900(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v4

    if-gtz v4, :cond_0

    goto/16 :goto_9

    .line 1113
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    .line 1114
    :goto_0
    iget-object v7, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_11

    .line 1115
    iget-object v7, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;

    if-nez v7, :cond_2

    :cond_1
    :goto_1
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 1118
    :cond_2
    invoke-virtual {v7}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_3

    goto :goto_1

    .line 1127
    :cond_3
    iget-object v8, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    const/4 v9, 0x1

    const/4 v10, -0x1

    if-eqz v8, :cond_8

    iget-object v8, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v8, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v8, v8, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-lez v8, :cond_8

    .line 1130
    iget-object v8, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v8, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v8, v8, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    .line 1132
    invoke-direct {v0, v8, v9, v10, v10}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getRowRect(Landroid/graphics/Rect;ZII)Landroid/graphics/Rect;

    move-result-object v8

    .line 1133
    iget-object v11, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    if-ltz v11, :cond_8

    .line 1134
    iget v11, v8, Landroid/graphics/Rect;->left:I

    if-ltz v11, :cond_4

    iget-object v11, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v12, v8, Landroid/graphics/Rect;->left:I

    invoke-static {v11, v12}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v11

    goto :goto_2

    :cond_4
    const/4 v11, -0x1

    .line 1135
    :goto_2
    iget v12, v8, Landroid/graphics/Rect;->right:I

    if-ltz v12, :cond_5

    iget-object v12, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v13, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v12, v13}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v12

    goto :goto_3

    :cond_5
    const/4 v12, -0x1

    .line 1136
    :goto_3
    iget v13, v8, Landroid/graphics/Rect;->top:I

    if-ltz v13, :cond_6

    iget-object v13, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v14, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v13, v14}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$600(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v13

    goto :goto_4

    :cond_6
    const/4 v13, -0x1

    .line 1137
    :goto_4
    iget v14, v8, Landroid/graphics/Rect;->bottom:I

    if-ltz v14, :cond_7

    iget-object v14, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {v14, v8}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$600(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v8

    goto :goto_5

    :cond_7
    const/4 v8, -0x1

    goto :goto_5

    :cond_8
    const/4 v8, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    .line 1141
    :goto_5
    invoke-virtual {v7}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 1142
    invoke-virtual {v7}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    if-lez v14, :cond_1

    if-gtz v15, :cond_9

    goto :goto_1

    .line 1146
    :cond_9
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    if-gtz v11, :cond_c

    if-gtz v12, :cond_c

    .line 1148
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v15, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 1149
    new-instance v10, Landroid/graphics/Point;

    iget-object v11, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v11}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v11

    iget-object v12, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v12}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$900(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    .line 1150
    iget-object v11, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget-object v12, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-wide v12, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->scaleFactor:D

    invoke-static {v11, v8, v12, v13}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1000(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Landroid/graphics/Point;D)Landroid/graphics/Point;

    move-result-object v11

    .line 1151
    iget-object v12, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v12}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v12

    iget v13, v11, Landroid/graphics/Point;->x:I

    if-lt v12, v13, :cond_a

    iget-object v12, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v12}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$900(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v12

    iget v13, v11, Landroid/graphics/Point;->y:I

    if-ge v12, v13, :cond_b

    .line 1152
    :cond_a
    invoke-static {v8, v10}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1100(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v11

    .line 1153
    :cond_b
    iget-object v8, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v8}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$900(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v8

    iget v10, v11, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v10

    div-int/lit8 v8, v8, 0x2

    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 1154
    iget-object v8, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v8}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v8

    iget v10, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v10

    div-int/lit8 v8, v8, 0x2

    iput v8, v5, Landroid/graphics/Rect;->left:I

    .line 1155
    iget v8, v5, Landroid/graphics/Rect;->top:I

    iget v10, v11, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v10

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 1156
    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v10, v11, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v10

    iput v8, v5, Landroid/graphics/Rect;->right:I

    goto :goto_6

    :cond_c
    if-ne v12, v10, :cond_d

    .line 1159
    iput v13, v5, Landroid/graphics/Rect;->top:I

    .line 1160
    iput v11, v5, Landroid/graphics/Rect;->left:I

    .line 1161
    iget v8, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v14

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 1162
    iget v8, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v15

    iput v8, v5, Landroid/graphics/Rect;->right:I

    goto :goto_6

    .line 1164
    :cond_d
    iput v13, v5, Landroid/graphics/Rect;->top:I

    .line 1165
    iput v11, v5, Landroid/graphics/Rect;->left:I

    .line 1166
    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 1167
    iput v12, v5, Landroid/graphics/Rect;->right:I

    :goto_6
    if-nez v3, :cond_10

    .line 1171
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 1172
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1173
    new-instance v10, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-direct {v10, v12, v11}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1174
    iget v10, v5, Landroid/graphics/Rect;->left:I

    iget v11, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBegin:I

    iget v13, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    add-int/2addr v11, v13

    add-int/2addr v10, v11

    iput v10, v5, Landroid/graphics/Rect;->left:I

    .line 1175
    iget v10, v5, Landroid/graphics/Rect;->right:I

    iget v11, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBegin:I

    iget v13, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    add-int/2addr v11, v13

    add-int/2addr v10, v11

    iput v10, v5, Landroid/graphics/Rect;->right:I

    .line 1176
    iget v10, v5, Landroid/graphics/Rect;->top:I

    iget v11, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBegin:I

    iget v13, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    add-int/2addr v11, v13

    add-int/2addr v10, v11

    iput v10, v5, Landroid/graphics/Rect;->top:I

    .line 1177
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    iget v11, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBegin:I

    iget v13, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    add-int/2addr v11, v13

    add-int/2addr v10, v11

    iput v10, v5, Landroid/graphics/Rect;->bottom:I

    .line 1179
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    iget v11, v4, Landroid/graphics/Rect;->top:I

    if-le v10, v11, :cond_e

    iget v10, v5, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v10, v11, :cond_e

    iget v10, v5, Landroid/graphics/Rect;->right:I

    iget v11, v4, Landroid/graphics/Rect;->left:I

    if-le v10, v11, :cond_e

    iget v10, v5, Landroid/graphics/Rect;->left:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    if-ge v10, v11, :cond_e

    goto :goto_7

    :cond_e
    const/4 v9, 0x0

    :goto_7
    if-eqz v9, :cond_f

    .line 1186
    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    .line 1187
    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    iput v10, v5, Landroid/graphics/Rect;->top:I

    .line 1188
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v9

    iput v10, v5, Landroid/graphics/Rect;->bottom:I

    .line 1191
    :cond_f
    invoke-virtual {v7}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1193
    iget v7, v5, Landroid/graphics/Rect;->left:I

    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 1194
    iget v7, v5, Landroid/graphics/Rect;->right:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 1195
    iget v7, v5, Landroid/graphics/Rect;->top:I

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 1196
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    :cond_10
    const/4 v12, 0x0

    .line 1198
    invoke-direct {v0, v3, v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->CheckRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_11
    :goto_9
    return-void
.end method

.method private drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;I)V
    .locals 3

    .line 1210
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1211
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBegin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1212
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBegin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1213
    iget p4, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBegin:I

    add-int/2addr p4, v1

    iget v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    add-int/2addr p4, v1

    iput p4, v0, Landroid/graphics/Rect;->top:I

    .line 1214
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p4, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBegin:I

    add-int/2addr p2, p4

    iget p4, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    add-int/2addr p2, p4

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1216
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawSegmentTextInfo(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;Landroid/graphics/Rect;IIIILcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;)V
    .locals 31

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p5

    move-object/from16 v11, p8

    .line 1739
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1740
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1741
    iget-object v1, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->color:I

    .line 1742
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1743
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v13, 0x0

    goto :goto_0

    :cond_0
    move-object v13, v0

    .line 1747
    :goto_0
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    const/4 v15, 0x1

    .line 1748
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1751
    iget-object v0, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;

    .line 1754
    iget-object v0, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget v4, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->edgeType:I

    const/4 v3, 0x2

    if-eq v4, v15, :cond_1

    if-eq v4, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 1760
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1761
    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1762
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object v2, v0

    .line 1766
    :goto_1
    iget-object v0, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->text:Ljava/lang/String;

    .line 1767
    iget-object v1, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->printDirection:I

    if-le v1, v15, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 1768
    :goto_2
    iget-object v12, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget v12, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->printDirection:I

    const/4 v3, 0x3

    if-eq v12, v15, :cond_3

    iget-object v12, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget v12, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->printDirection:I

    if-ne v12, v3, :cond_4

    .line 1769
    :cond_3
    iget-object v12, v6, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v12, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1700(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object v12, v0

    .line 1772
    invoke-direct {v6, v8, v5, v14, v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->setTextViewByTextInfo(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;Landroid/graphics/Paint;Landroid/graphics/Paint;)I

    move-result v0

    if-eqz v2, :cond_5

    .line 1774
    sget-object v15, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1775
    sget-object v15, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v15, 0x40800000    # 4.0f

    .line 1776
    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1778
    :cond_5
    sget-object v15, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1779
    invoke-virtual {v14}, Landroid/graphics/Paint;->descent()F

    move-result v15

    float-to-int v15, v15

    const/16 v17, 0x2

    div-int/lit8 v15, v15, 0x2

    .line 1781
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const-string v9, ""

    if-eqz v1, :cond_c

    .line 1783
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    .line 1786
    iget v1, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectRight:I

    iget v4, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_6

    iget v1, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectRight:I

    iget v4, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    sub-int/2addr v1, v4

    sub-int/2addr v1, v0

    if-lez v1, :cond_6

    .line 1788
    iget v1, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectRight:I

    iget v4, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    sub-int/2addr v1, v4

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    div-int/2addr v1, v0

    .line 1791
    :cond_6
    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 1792
    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectRight:I

    iget v1, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    sub-int v15, v0, v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v8, :cond_b

    .line 1795
    invoke-virtual {v12, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v13, :cond_7

    const/4 v0, 0x1

    if-ne v10, v0, :cond_7

    .line 1799
    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    mul-int v1, v15, v5

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 1800
    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    add-int/lit8 v1, v5, 0x1

    mul-int v1, v1, v15

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 1801
    iget v0, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->right:I

    const/16 v16, 0x2

    .line 1803
    div-int/lit8 v0, p4, 0x2

    add-int/lit8 v0, v0, 0x6

    invoke-direct {v6, v7, v3, v13, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;I)V

    goto :goto_4

    :cond_7
    const/16 v16, 0x2

    :goto_4
    if-eqz v2, :cond_9

    const/4 v0, 0x1

    if-ne v10, v0, :cond_8

    .line 1807
    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    add-int/lit8 v17, v5, 0x1

    mul-int v17, v17, v15

    add-int v0, v0, v17

    div-int/lit8 v17, v15, 0x4

    sub-int v0, v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v19, v2

    move-object v2, v4

    move-object/from16 v21, v3

    move-object/from16 v20, v9

    const/4 v9, 0x2

    move/from16 v3, v18

    move-object/from16 v16, v4

    move/from16 v4, v17

    move/from16 v17, v5

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_8
    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v20, v9

    const/4 v9, 0x2

    goto :goto_6

    :cond_9
    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v20, v9

    const/4 v9, 0x2

    :goto_5
    const/4 v0, 0x1

    :goto_6
    if-ne v10, v0, :cond_a

    .line 1809
    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    add-int/2addr v0, v9

    int-to-float v3, v0

    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    add-int/lit8 v5, v17, 0x1

    mul-int v5, v5, v15

    add-int/2addr v0, v5

    div-int/lit8 v1, v15, 0x4

    sub-int/2addr v0, v1

    int-to-float v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_a
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v2, v19

    move-object/from16 v9, v20

    move-object/from16 v3, v21

    goto/16 :goto_3

    .line 1811
    :cond_b
    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    mul-int v15, v15, v8

    add-int/2addr v0, v15

    iput v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    goto/16 :goto_1d

    :cond_c
    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v9

    const/4 v9, 0x2

    .line 1816
    iget v1, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    iget v2, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_d

    iget v1, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    iget v2, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    if-lez v1, :cond_d

    .line 1818
    iget v1, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    iget v2, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    div-int/2addr v1, v9

    add-int/2addr v15, v1

    .line 1822
    :cond_d
    invoke-direct {v6, v12}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->reConcatenateWithoutNewLine(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1824
    iget v1, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    const/4 v3, 0x0

    .line 1828
    :goto_7
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_29

    .line 1829
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1832
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_f

    :cond_e
    move/from16 v18, v0

    move/from16 v24, v1

    move/from16 v29, v3

    move-object v7, v5

    move-object v0, v6

    move-object v3, v8

    move-object/from16 v23, v13

    move-object/from16 v2, v20

    move-object/from16 v9, v21

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x2

    move-object/from16 v1, p3

    move v8, v4

    move-object/from16 v21, v12

    move/from16 v4, p7

    goto/16 :goto_1c

    .line 1839
    :cond_f
    :goto_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_e

    .line 1841
    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v9, v9

    move/from16 v22, v0

    add-int v0, v9, v1

    int-to-float v0, v0

    move-object/from16 v23, v5

    .line 1843
    iget-object v5, v6, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v5

    iget v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectRight:F

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_11

    iget-object v0, v6, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v0

    if-le v9, v0, :cond_10

    goto :goto_9

    :cond_10
    const/4 v0, 0x0

    goto :goto_a

    :cond_11
    :goto_9
    const/4 v0, 0x1

    :goto_a
    if-eqz v0, :cond_15

    .line 1845
    iget-object v0, v6, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v5, 0x1

    const/4 v9, 0x0

    invoke-virtual {v14, v2, v5, v0, v9}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    if-lez v0, :cond_14

    const/4 v5, 0x0

    .line 1847
    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v5, " "

    .line 1848
    invoke-virtual {v9, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    move/from16 v24, v1

    const/4 v1, -0x1

    if-ne v5, v1, :cond_12

    const-string v1, "\t"

    .line 1850
    invoke-virtual {v9, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    :cond_12
    if-lez v5, :cond_13

    .line 1855
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1856
    invoke-virtual {v9, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 1858
    :cond_13
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v9

    :goto_b
    move-object v1, v0

    const/4 v0, 0x1

    goto :goto_c

    :cond_14
    move/from16 v24, v1

    move-object/from16 v1, v20

    const/4 v0, 0x0

    .line 1865
    :goto_c
    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v9, v5

    move/from16 v26, v0

    move-object/from16 v25, v1

    move/from16 v27, v9

    const/16 v16, 0x0

    goto :goto_d

    :cond_15
    move/from16 v24, v1

    const/16 v16, 0x0

    move/from16 v27, v9

    move-object/from16 v25, v20

    const/16 v26, 0x0

    :goto_d
    move-object v9, v2

    .line 1873
    iget-object v0, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->alignmentH:I

    sget-object v1, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->RIGHT:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    .line 1874
    invoke-virtual {v1}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 1876
    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectRight:I

    sub-int v0, v0, v27

    const/4 v1, 0x2

    if-ge v0, v1, :cond_16

    :goto_e
    move-object/from16 v2, v21

    const/4 v5, 0x2

    goto :goto_f

    :cond_16
    move v5, v0

    move-object/from16 v2, v21

    goto :goto_f

    .line 1880
    :cond_17
    iget-object v0, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->alignmentH:I

    sget-object v1, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->CENTER:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    .line 1881
    invoke-virtual {v1}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_18

    .line 1883
    iget-object v0, v6, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v0

    sub-int v0, v0, v27

    const/4 v1, 0x2

    div-int/2addr v0, v1

    if-ge v0, v1, :cond_16

    goto :goto_e

    :cond_18
    move-object/from16 v2, v21

    move/from16 v5, v24

    .line 1889
    :goto_f
    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 1890
    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    iget v1, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    move-object/from16 v21, v12

    iget v12, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v1, v12

    mul-int v1, v1, v3

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 1891
    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    iget v1, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    iget v12, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v1, v12

    add-int/lit8 v12, v3, 0x1

    mul-int v1, v1, v12

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 1892
    iget v0, v2, Landroid/graphics/Rect;->left:I

    add-int v0, v0, v27

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 1893
    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nTopOld:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_1a

    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nTopOld:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    goto :goto_10

    .line 1899
    :cond_19
    iput v1, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nRightOld:I

    goto :goto_11

    .line 1894
    :cond_1a
    :goto_10
    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nRightOld:I

    if-ltz v0, :cond_1b

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v1, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nRightOld:I

    if-ge v0, v1, :cond_1b

    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v1, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nRightOld:I

    if-lt v0, v1, :cond_1b

    .line 1895
    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nRightOld:I

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 1897
    :cond_1b
    iget v0, v2, Landroid/graphics/Rect;->right:I

    iput v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nRightOld:I

    .line 1902
    :goto_11
    iget v0, v2, Landroid/graphics/Rect;->top:I

    iput v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nTopOld:I

    const/4 v0, 0x1

    if-ne v10, v0, :cond_1d

    if-eqz v13, :cond_1d

    .line 1905
    invoke-virtual {v14}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 1906
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 p4, v3

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v1, v0

    .line 1907
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1c

    float-to-int v0, v1

    .line 1908
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1909
    iget v1, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v28, v9

    int-to-double v8, v1

    int-to-double v0, v0

    const-wide/high16 v29, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v29

    sub-double/2addr v8, v0

    double-to-int v3, v8

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1910
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-double v8, v3

    add-double/2addr v8, v0

    double-to-int v0, v8

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_12

    :cond_1c
    move-object/from16 v28, v9

    :goto_12
    const/4 v0, 0x0

    .line 1912
    invoke-direct {v6, v7, v2, v13, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;I)V

    goto :goto_13

    :cond_1d
    move/from16 p4, v3

    move-object/from16 v28, v9

    :goto_13
    if-eqz v19, :cond_24

    const/4 v3, 0x3

    if-le v4, v3, :cond_1f

    const/4 v0, 0x1

    if-ne v10, v0, :cond_1e

    int-to-float v8, v5

    .line 1921
    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    iget v1, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    iget v9, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v1, v9

    mul-int v1, v1, v12

    add-int/2addr v0, v1

    sub-int/2addr v0, v15

    const/4 v9, 0x0

    add-int/2addr v0, v9

    int-to-float v1, v0

    move/from16 v18, v22

    move-object/from16 v0, p0

    move/from16 v22, v1

    move-object/from16 v1, p1

    move-object v9, v2

    move-object/from16 v2, v28

    move/from16 v29, p4

    const/4 v7, 0x3

    move v3, v8

    move v8, v4

    move/from16 v4, v22

    move-object/from16 v7, v23

    move-object/from16 v23, v13

    move v13, v5

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    goto :goto_14

    :cond_1e
    move/from16 v29, p4

    move-object v9, v2

    move v8, v4

    move/from16 v18, v22

    move-object/from16 v7, v23

    move-object/from16 v23, v13

    move v13, v5

    :goto_14
    const/16 v17, 0x2

    goto/16 :goto_18

    :cond_1f
    move/from16 v29, p4

    move-object v9, v2

    move v8, v4

    move/from16 v18, v22

    move-object/from16 v7, v23

    move-object/from16 v23, v13

    move v13, v5

    .line 1925
    invoke-virtual {v14}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    .line 1926
    iget-object v0, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->eddgeColor:I

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1928
    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    iget v1, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v0, v1

    div-int/lit8 v3, v0, 0x1e

    const/4 v4, 0x2

    if-ge v3, v4, :cond_20

    const/4 v3, 0x2

    :cond_20
    if-ne v8, v4, :cond_22

    const/4 v0, 0x1

    if-ne v10, v0, :cond_21

    add-int v0, v13, v3

    int-to-float v2, v0

    .line 1934
    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    iget v1, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    iget v4, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v1, v4

    mul-int v1, v1, v12

    add-int/2addr v0, v1

    sub-int/2addr v0, v15

    add-int/2addr v0, v3

    int-to-float v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v2

    move-object/from16 v2, v28

    const/16 v17, 0x2

    move v6, v5

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_16

    :cond_21
    move v6, v5

    const/16 v17, 0x2

    goto :goto_15

    :cond_22
    move v6, v5

    const/16 v17, 0x2

    const/4 v0, 0x1

    :goto_15
    if-ne v8, v0, :cond_23

    if-ne v10, v0, :cond_23

    sub-int v5, v13, v3

    int-to-float v4, v5

    .line 1937
    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    iget v1, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    iget v2, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v1, v2

    mul-int v1, v1, v12

    add-int/2addr v0, v1

    sub-int/2addr v0, v15

    sub-int/2addr v0, v3

    int-to-float v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move v3, v4

    move v4, v5

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1940
    :cond_23
    :goto_16
    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_17

    :cond_24
    move/from16 v29, p4

    move-object v9, v2

    move v8, v4

    move/from16 v18, v22

    move-object/from16 v7, v23

    const/16 v17, 0x2

    move-object/from16 v23, v13

    move v13, v5

    :goto_17
    const/4 v0, 0x1

    :goto_18
    if-ne v10, v0, :cond_26

    const/4 v0, 0x3

    if-ne v8, v0, :cond_25

    .line 1947
    invoke-virtual {v14}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 1948
    iget-object v0, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->eddgeColor:I

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1949
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v3, v13

    .line 1950
    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    iget v1, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    iget v2, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v1, v2

    mul-int v1, v1, v12

    add-int/2addr v0, v1

    sub-int/2addr v0, v15

    int-to-float v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1951
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1952
    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setColor(I)V

    :cond_25
    int-to-float v3, v13

    .line 1954
    iget v0, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    iget v1, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    iget v2, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v1, v2

    mul-int v1, v1, v12

    add-int/2addr v0, v1

    sub-int/2addr v0, v15

    int-to-float v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_19

    :cond_26
    move-object/from16 v0, p0

    :goto_19
    move-object/from16 v1, p3

    move-object/from16 v2, v20

    .line 1956
    invoke-direct {v0, v1, v9}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->CheckRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v3, p2

    .line 1958
    iget-object v4, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_27

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_27

    .line 1959
    iget v4, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    add-int v4, v4, v27

    iput v4, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    .line 1962
    iget-object v4, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget-boolean v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->isItalic:Z

    if-eqz v4, :cond_27

    .line 1963
    iget v4, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    const/4 v5, 0x3

    div-int/lit8 v6, v18, 0x3

    add-int/2addr v4, v6

    iput v4, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    goto :goto_1a

    :cond_27
    const/4 v5, 0x3

    :goto_1a
    if-eqz v26, :cond_28

    move/from16 v4, p7

    .line 1968
    iput v4, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    .line 1970
    iget v6, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    iget v12, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v6, v12

    .line 1971
    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    iput v12, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    .line 1972
    iget v12, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    add-int/2addr v12, v6

    iput v12, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    .line 1973
    iget v6, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    iput v6, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldBottom:I

    .line 1974
    iget v6, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    iput v6, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldTop:I

    .line 1975
    iget v6, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    iput v6, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldLeft:I

    .line 1976
    iget v6, v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectRight:I

    iput v6, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldRight:I

    const/4 v6, 0x1

    .line 1977
    iput-boolean v6, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->oldBottomSet:Z

    move v13, v4

    goto :goto_1b

    :cond_28
    move/from16 v4, p7

    const/4 v6, 0x1

    .line 1979
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    iput v12, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldBottom:I

    .line 1980
    iput-boolean v6, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->oldBottomSet:Z

    :goto_1b
    move-object v6, v0

    move-object/from16 v20, v2

    move-object v5, v7

    move v4, v8

    move v1, v13

    move/from16 v0, v18

    move-object/from16 v12, v21

    move-object/from16 v13, v23

    move-object/from16 v2, v25

    move-object/from16 v7, p1

    move-object v8, v3

    move-object/from16 v21, v9

    move/from16 v3, v29

    const/4 v9, 0x2

    goto/16 :goto_8

    :goto_1c
    add-int/lit8 v12, v29, 0x1

    move-object v6, v0

    move-object/from16 v20, v2

    move-object v5, v7

    move v4, v8

    move/from16 v0, v18

    move-object/from16 v13, v23

    move/from16 v1, v24

    move-object/from16 v7, p1

    move-object v8, v3

    move v3, v12

    move-object/from16 v12, v21

    move-object/from16 v21, v9

    const/4 v9, 0x2

    goto/16 :goto_7

    :cond_29
    :goto_1d
    move-object v0, v6

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 1

    .line 1206
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBegin:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBegin:I

    int-to-float v0, v0

    add-float/2addr p4, v0

    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    int-to-float v0, v0

    add-float/2addr p4, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getFontMaxSize(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1292
    :goto_0
    iget-object v2, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1293
    iget-object v2, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;

    .line 1295
    iget-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSizeStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "px"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1297
    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSize:F

    goto :goto_1

    .line 1299
    :cond_0
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v3, v2, p2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$500(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;I)F

    move-result v2

    int-to-float v3, p2

    mul-float v2, v2, v3

    :goto_1
    float-to-int v2, v2

    if-le v2, v1, :cond_1

    move v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-lez v1, :cond_4

    if-ge v1, p2, :cond_4

    mul-int/lit8 p1, p2, 0x3

    .line 1306
    div-int/lit8 p1, p1, 0x4

    if-ge v1, p1, :cond_3

    mul-int/lit8 v1, v1, 0x4

    .line 1307
    div-int/lit8 v1, v1, 0x3

    goto :goto_2

    :cond_3
    move v1, p2

    :cond_4
    :goto_2
    if-gtz v1, :cond_5

    goto :goto_3

    :cond_5
    move p2, v1

    :goto_3
    return p2
.end method

.method private getHorizontalAlignment(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;)I
    .locals 1

    .line 1319
    sget-object v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->LEFT:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v0

    if-eqz p1, :cond_0

    .line 1321
    iget-object p1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget v0, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->horizontalAlignment:I

    .line 1323
    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1200(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_1
    return v0
.end method

.method private getRowRect(Landroid/graphics/Rect;ZII)Landroid/graphics/Rect;
    .locals 4

    .line 1220
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1221
    iget-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1200(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, -0x1

    if-ne p3, p1, :cond_1

    if-ne p4, p1, :cond_1

    .line 1224
    iget-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    if-nez p1, :cond_1

    return-object v0

    .line 1229
    :cond_1
    iget-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_2

    .line 1230
    new-instance p1, Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 1231
    invoke-static {p4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object p4

    iget-object p4, p4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 1232
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 1233
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 1234
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p1, p4, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 1236
    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    const/4 p4, 0x0

    const/16 v1, 0x64

    invoke-direct {p1, p4, p4, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1239
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p4

    .line 1240
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 1242
    sget-object v1, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->LEFT:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-virtual {v1}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v1

    if-ne p3, v1, :cond_3

    .line 1243
    iget p1, p1, Landroid/graphics/Rect;->left:I

    iput p1, v0, Landroid/graphics/Rect;->left:I

    if-eqz p2, :cond_5

    .line 1245
    iget p1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p4

    iput p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1247
    :cond_3
    sget-object v1, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->CENTER:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-virtual {v1}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v1

    if-ne p3, v1, :cond_4

    if-eqz p2, :cond_5

    .line 1249
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, p1

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 1250
    iget p1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p4

    iput p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1252
    :cond_4
    sget-object v1, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->RIGHT:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-virtual {v1}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v1

    if-ne p3, v1, :cond_5

    .line 1253
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, v0, Landroid/graphics/Rect;->right:I

    if-eqz p2, :cond_5

    .line 1255
    iget p1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p4

    iput p1, v0, Landroid/graphics/Rect;->left:I

    :cond_5
    :goto_1
    return-object v0
.end method

.method private isBoundingBoxEnabled()Z
    .locals 3

    .line 1330
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1334
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 1335
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 1336
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 1337
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private reConcatenateWithoutNewLine(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "\n"

    .line 1713
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 1714
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 1715
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 1716
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1717
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 1718
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1719
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1720
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-ge v4, v5, :cond_1

    .line 1721
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1722
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1724
    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1726
    :cond_2
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private setTextViewByTextInfo(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;Landroid/graphics/Paint;Landroid/graphics/Paint;)I
    .locals 9

    .line 1000
    iget-object v0, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontColor:I

    .line 1001
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1003
    iget-object v0, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget-boolean v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->isItalic:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1006
    :goto_0
    iget-object v3, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget-boolean v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->isBold:Z

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x1

    .line 1010
    :cond_1
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget-object v4, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget-object v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v0, v5, :cond_3

    if-ne v0, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v6, 0x1

    .line 1012
    :goto_2
    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    and-int/lit8 v6, v0, 0x2

    const/high16 v7, -0x41000000    # -0.5f

    if-eqz v6, :cond_4

    .line 1014
    invoke-virtual {p3, v7}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 1017
    :cond_4
    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-eqz p4, :cond_6

    .line 1020
    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    and-int/2addr v0, v5

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 1021
    :goto_3
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    if-eqz v6, :cond_6

    .line 1023
    invoke-virtual {p4, v7}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 1027
    :cond_6
    iget-object v0, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->printDirection:I

    if-le v0, v5, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    .line 1031
    :goto_4
    iget-object v3, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->horizontalAlignment:I

    iget-object p1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget p1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->verticalAlignment:I

    invoke-direct {p0, v3, v1, v6, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getRowRect(Landroid/graphics/Rect;ZII)Landroid/graphics/Rect;

    move-result-object p1

    const/4 v3, -0x1

    const-string v6, "px"

    if-eqz v0, :cond_9

    .line 1034
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v7}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v0

    .line 1035
    iget-object v7, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v7, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result p1

    .line 1036
    iget-object v7, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v7, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget-object v7, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSizeStr:Ljava/lang/String;

    iget-object v8, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v8, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget-object v8, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSizeStr:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v3, :cond_8

    .line 1037
    iget-object p1, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object p1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget p1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSize:F

    goto :goto_5

    .line 1039
    :cond_8
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    sub-int/2addr p1, v0

    invoke-static {v3, p2, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$500(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;I)F

    move-result v0

    int-to-float p1, p1

    mul-float p1, p1, v0

    .line 1043
    :goto_5
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p4, :cond_b

    .line 1044
    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_7

    .line 1046
    :cond_9
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v7}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$600(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v0

    .line 1047
    iget-object v7, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$600(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result p1

    .line 1048
    iget-object v7, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v7, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget-object v7, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSizeStr:Ljava/lang/String;

    iget-object v8, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v8, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget-object v8, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSizeStr:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v3, :cond_a

    .line 1049
    iget-object p1, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object p1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget p1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSize:F

    goto :goto_6

    .line 1051
    :cond_a
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    sub-int/2addr p1, v0

    invoke-static {v3, p2, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$500(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;I)F

    move-result v0

    int-to-float p1, p1

    mul-float p1, p1, v0

    .line 1055
    :goto_6
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p4, :cond_b

    .line 1057
    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_b
    :goto_7
    float-to-int p1, p1

    .line 1064
    iget-object v0, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget-boolean v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->hasUnderline:Z

    if-eqz v0, :cond_c

    .line 1065
    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    goto :goto_8

    .line 1068
    :cond_c
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 1070
    :goto_8
    iget-object v0, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->edgeType:I

    if-eqz v0, :cond_13

    .line 1072
    iget-object p2, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object p2, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget p2, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->eddgeColor:I

    if-ne v0, v4, :cond_e

    .line 1075
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1076
    div-int/lit8 p2, p1, 0x9

    if-ge p2, v2, :cond_d

    goto :goto_9

    :cond_d
    move v2, p2

    :goto_9
    int-to-float p2, v2

    .line 1080
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_a

    :cond_e
    const v1, 0x3fe66666    # 1.8f

    int-to-float v3, p1

    const/high16 v4, 0x41100000    # 9.0f

    div-float/2addr v3, v4

    cmpl-float v4, v3, v1

    if-lez v4, :cond_f

    move v1, v3

    :cond_f
    if-eq v0, v2, :cond_10

    if-ne v0, v5, :cond_11

    :cond_10
    if-eqz p4, :cond_11

    .line 1090
    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_11
    const/4 p4, 0x4

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, p4, :cond_12

    const/high16 p4, -0x40000000    # -2.0f

    .line 1096
    invoke-virtual {p3, v1, p4, v2, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_12
    const/4 p4, 0x5

    if-ne v0, p4, :cond_13

    .line 1099
    invoke-virtual {p3, v1, v2, v2, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_13
    :goto_a
    return p1
.end method


# virtual methods
.method public enableDraw(Z)V
    .locals 0

    .line 965
    iput-boolean p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->enableDraw:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 967
    :goto_0
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->setVisibility(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1552
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VOSubtitleRender"

    const-string v2, "canvas can not be null onDraw!"

    .line 1553
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1557
    :cond_0
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->doRenderSubtitle(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x1

    .line 971
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->enableDraw:Z

    const/4 v0, 0x0

    .line 972
    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBegin:I

    .line 973
    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBegin:I

    .line 974
    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    .line 975
    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    .line 977
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->oldBottomSet:Z

    const/4 v1, -0x1

    .line 978
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldBottom:I

    .line 979
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldTop:I

    .line 980
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldLeft:I

    .line 981
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldRight:I

    .line 982
    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->maxFontSize:I

    .line 984
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->mBlockWindowRectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
