.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;
.super Ljava/lang/Object;
.source "VOSubtitleImageInfoDescriptor.java"


# instance fields
.field public imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

.field public img_id:Ljava/lang/String;

.field public scaleFactor:D

.field public scaling:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    invoke-direct {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VORect;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->img_id:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->scaling:Ljava/lang/String;

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 21
    iput-wide v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->scaleFactor:D

    return-void
.end method
