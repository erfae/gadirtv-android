.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;
.super Ljava/lang/Object;
.source "VOSubtitleImageInfoData.java"


# instance fields
.field public height:I

.field public imageType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field public picData:[B

.field public size:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->size:I

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->picData:[B

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->height:I

    return v0
.end method

.method public getImageType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->imageType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    return-object v0
.end method

.method public getPicData()[B
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->picData:[B

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->width:I

    return v0
.end method
