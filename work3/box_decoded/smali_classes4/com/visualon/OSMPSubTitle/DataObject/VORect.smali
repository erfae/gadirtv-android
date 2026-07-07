.class public Lcom/visualon/OSMPSubTitle/DataObject/VORect;
.super Ljava/lang/Object;
.source "VORect.java"


# instance fields
.field public color:I

.field public edgeColor:I

.field public edgeType:I

.field public rect:Landroid/graphics/Rect;

.field public rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

.field public zOrder:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->edgeType:I

    .line 25
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->edgeColor:I

    .line 26
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->color:I

    .line 27
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->zOrder:I

    .line 28
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    invoke-direct {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    return-void
.end method

.method private setColor(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->color:I

    return-void
.end method
