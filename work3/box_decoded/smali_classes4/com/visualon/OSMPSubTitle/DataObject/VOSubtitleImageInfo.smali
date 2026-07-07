.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;
.super Ljava/lang/Object;
.source "VOSubtitleImageInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "voSubtitleImageInfo"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field public imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

.field public imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    .line 31
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    .line 32
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .line 35
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->getPicData()[B

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->getImageType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_RGBA32:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    .line 40
    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->getImageType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_ARGB32:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->picData:[B

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->picData:[B

    array-length v1, v1

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 42
    :cond_3
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    invoke-virtual {v1}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 44
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->getPicData()[B

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    invoke-virtual {v1}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->getImageType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    move-result-object v1

    sget-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_RGBA32:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    if-ne v1, v3, :cond_6

    .line 46
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    invoke-virtual {v1}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->getPicData()[B

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 47
    :goto_1
    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    invoke-virtual {v4}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->getPicData()[B

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_5

    add-int/lit8 v4, v3, 0x3

    .line 48
    aget-byte v5, v0, v4

    if-nez v5, :cond_4

    .line 49
    aput-byte v2, v1, v3

    add-int/lit8 v4, v3, 0x1

    .line 50
    aput-byte v2, v1, v4

    add-int/lit8 v4, v3, 0x2

    .line 51
    aput-byte v2, v1, v4

    goto :goto_2

    .line 53
    :cond_4
    aget-byte v5, v0, v3

    aput-byte v5, v1, v3

    add-int/lit8 v5, v3, 0x1

    .line 54
    aget-byte v6, v0, v5

    aput-byte v6, v1, v5

    add-int/lit8 v5, v3, 0x2

    .line 55
    aget-byte v6, v0, v5

    aput-byte v6, v1, v5

    .line 56
    aget-byte v5, v0, v4

    aput-byte v5, v1, v4

    :goto_2
    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 61
    :cond_6
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v0, "voSubtitleImageInfo"

    const-string v1, "subtitle image create bitmap failed!"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_3
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
