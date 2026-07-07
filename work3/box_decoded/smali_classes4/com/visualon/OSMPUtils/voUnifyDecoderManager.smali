.class public Lcom/visualon/OSMPUtils/voUnifyDecoderManager;
.super Ljava/lang/Object;
.source "voUnifyDecoderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPUtils/voUnifyDecoderManager$SystemPropertyUtils;,
        Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;,
        Lcom/visualon/OSMPUtils/voUnifyDecoderManager$onUnifyDecoderListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@voUnifyDecoderManager"


# instance fields
.field final DEFAULT_AUDIO_CODEC_TYPE:I

.field final DEFAULT_VIDEO_CODEC_TYPE:I

.field private mCardBoard:Z

.field private mContext:Landroid/content/Context;

.field private mCubeVideo:Z

.field private mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

.field private mListener:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$onUnifyDecoderListener;

.field private mSphericalVideo:Z

.field private mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

.field private mWhiteListDeviceDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/visualon/OSMPUtils/voOSDeviceData;",
            ">;"
        }
    .end annotation
.end field

.field private m_RenderType:I

.field private m_bDisableForceOpenGL:Z

.field private m_bEnableSEIPostProcessVideo:Z

.field private m_bVerimatrixPostProcessVideo:Z

.field private mbAdaptivePlayback:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->m_bVerimatrixPostProcessVideo:Z

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    .line 46
    iput-object v1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mListener:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$onUnifyDecoderListener;

    .line 47
    iput-boolean v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mCardBoard:Z

    .line 48
    iput-boolean v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mSphericalVideo:Z

    .line 49
    iput-boolean v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mCubeVideo:Z

    .line 50
    iput-boolean v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->m_bDisableForceOpenGL:Z

    const v0, 0xffff

    .line 232
    iput v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->DEFAULT_VIDEO_CODEC_TYPE:I

    .line 233
    iput v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->DEFAULT_AUDIO_CODEC_TYPE:I

    .line 58
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->reset()V

    return-void
.end method

.method private checkDeviceAdaptivePlaybackSupport()V
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getTextureView()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getTextureView()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 397
    iput-boolean v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mbAdaptivePlayback:Z

    .line 398
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@voUnifyDecoderManager"

    const-string v2, "Current device doesn\'t support textureview."

    .line 399
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getCurrentDeviceDatas()V
    .locals 7

    .line 439
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    if-eqz v0, :cond_0

    return-void

    .line 441
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 442
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "ro.board.platform"

    const-string v3, ""

    .line 443
    invoke-static {v2, v3}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get platform via SystemProperties : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "@@@voUnifyDecoderManager"

    invoke-static {v6, v3, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    new-instance v3, Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-direct {v3}, Lcom/visualon/OSMPUtils/voOSDeviceData;-><init>()V

    iput-object v3, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    .line 447
    invoke-virtual {v3, v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->setModel(Ljava/lang/String;)V

    .line 448
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v3, v1}, Lcom/visualon/OSMPUtils/voOSDeviceData;->setVersion(Ljava/lang/String;)V

    .line 449
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v3, v2}, Lcom/visualon/OSMPUtils/voOSDeviceData;->setPlatform(Ljava/lang/String;)V

    .line 450
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "Current device info, model is %s, release is %s, platform is %s."

    .line 451
    invoke-static {v6, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private matchCurrentDeviceToWhiteList()V
    .locals 4

    .line 459
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mWhiteListDeviceDatas:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "device.xml"

    .line 462
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 461
    invoke-direct {p0, v0}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->readWhiteListDeviceData(Ljava/io/InputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "@@@voUnifyDecoderManager"

    const-string v3, "device.xml not found."

    .line 464
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mWhiteListDeviceDatas:Ljava/util/List;

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 470
    :cond_1
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getRenderType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    .line 471
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getTextureView()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 473
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getModel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    .line 474
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    .line 475
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getPlatform()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 477
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mWhiteListDeviceDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 478
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mWhiteListDeviceDatas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSDeviceData;

    .line 479
    iget-object v2, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    .line 480
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getPlatform()Ljava/lang/String;

    move-result-object v2

    .line 481
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getPlatform()Ljava/lang/String;

    move-result-object v3

    .line 480
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    .line 482
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 483
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method private readWhiteListDeviceData(Ljava/io/InputStream;)I
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->readXML(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mWhiteListDeviceDatas:Ljava/util/List;

    const/4 p1, 0x0

    return p1
.end method

.method private readXML(Ljava/io/InputStream;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/visualon/OSMPUtils/voOSDeviceData;",
            ">;"
        }
    .end annotation

    .line 176
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "UTF-8"

    .line 178
    invoke-interface {v0, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 179
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    move-object v4, v3

    :goto_0
    const/4 v5, 0x1

    if-eq v2, v5, :cond_a

    if-eqz v2, :cond_8

    const-string v6, "item"

    const/4 v7, 0x2

    if-eq v2, v7, :cond_2

    const/4 v8, 0x3

    if-eq v2, v8, :cond_0

    goto/16 :goto_1

    .line 206
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v4, :cond_9

    .line 208
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "@@@voUnifyDecoderManager"

    const-string v6, "Parse Device Data, model %s, platform is %s, release is %s, rendertype is %s, textureview is %s."

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 212
    invoke-virtual {v4}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getModel()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 213
    invoke-virtual {v4}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getPlatform()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 214
    invoke-virtual {v4}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v7

    .line 215
    invoke-virtual {v4}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getRenderType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v8

    const/4 v5, 0x4

    .line 216
    invoke-virtual {v4}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getTextureView()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v5

    .line 210
    invoke-static {v2, v6, v9}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move-object v4, v1

    goto :goto_1

    .line 188
    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 190
    new-instance v4, Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-direct {v4}, Lcom/visualon/OSMPUtils/voOSDeviceData;-><init>()V

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_9

    const-string v5, "model"

    .line 192
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 193
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/visualon/OSMPUtils/voOSDeviceData;->setModel(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v5, "release"

    .line 194
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 195
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/visualon/OSMPUtils/voOSDeviceData;->setVersion(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v5, "platform"

    .line 196
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 197
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/visualon/OSMPUtils/voOSDeviceData;->setPlatform(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v5, "codecsolution"

    .line 198
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 199
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/visualon/OSMPUtils/voOSDeviceData;->setRenderType(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v5, "textureview"

    .line 200
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 201
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/visualon/OSMPUtils/voOSDeviceData;->setTextureView(Ljava/lang/String;)V

    goto :goto_1

    .line 185
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 222
    :cond_9
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto/16 :goto_0

    .line 224
    :cond_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private reset()V
    .locals 4

    .line 62
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "@@@voUnifyDecoderManager"

    const-string v3, "reset vars.."

    .line 63
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :cond_0
    iput-boolean v1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mbAdaptivePlayback:Z

    .line 66
    iput-boolean v1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->m_bEnableSEIPostProcessVideo:Z

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    .line 68
    iput v1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->m_RenderType:I

    .line 69
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    .line 70
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mWhiteListDeviceDatas:Ljava/util/List;

    return-void
.end method

.method private setDecoderAndRender(I)I
    .locals 8

    .line 341
    iget v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->m_RenderType:I

    .line 342
    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_VIDEO_IOMX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x5

    if-ne v1, p1, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    .line 346
    :cond_0
    iget-boolean v1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mCardBoard:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mSphericalVideo:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mCubeVideo:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-eq v0, v3, :cond_3

    .line 349
    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_VIDEO_MEDIACODEC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result v1

    if-ne v1, p1, :cond_3

    iget-boolean v1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->m_bVerimatrixPostProcessVideo:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->m_bEnableSEIPostProcessVideo:Z

    if-nez v1, :cond_3

    const/4 v0, 0x6

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x3

    :cond_3
    :goto_1
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eq v2, v0, :cond_5

    if-ne v4, v0, :cond_4

    goto :goto_2

    .line 363
    :cond_4
    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result v2

    if-eq v2, p1, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    .line 357
    :cond_5
    :goto_2
    iget-boolean v2, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mbAdaptivePlayback:Z

    if-eqz v2, :cond_6

    .line 358
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->checkDeviceAdaptivePlaybackSupport()V

    .line 359
    :cond_6
    iget-boolean v2, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mbAdaptivePlayback:Z

    if-eqz v2, :cond_7

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v2, v5, :cond_7

    .line 360
    iget-object v2, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voVideoViewController;->addSecondTextureView()V

    :cond_7
    const/4 v2, 0x0

    :goto_3
    if-ne v1, v0, :cond_9

    .line 369
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v5, "vtab1008"

    .line 370
    invoke-virtual {v1, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    const-wide/16 v5, 0x3

    if-nez v1, :cond_8

    .line 371
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mListener:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$onUnifyDecoderListener;

    const/16 v7, 0x17

    .line 373
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 371
    invoke-interface {v1, v5, v6, v7}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$onUnifyDecoderListener;->onUnifyDecoderSetParam(JLjava/lang/Object;)I

    goto :goto_4

    .line 375
    :cond_8
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mListener:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$onUnifyDecoderListener;

    const/16 v7, 0x1a

    .line 377
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 375
    invoke-interface {v1, v5, v6, v7}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$onUnifyDecoderListener;->onUnifyDecoderSetParam(JLjava/lang/Object;)I

    .line 381
    :cond_9
    :goto_4
    iget-boolean v1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mSphericalVideo:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mCardBoard:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mCubeVideo:Z

    if-eqz v1, :cond_b

    :cond_a
    if-ne v4, v0, :cond_b

    .line 382
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mListener:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$onUnifyDecoderListener;

    const v0, -0x7ffffff0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-interface {p1, v0, v2, v2, v1}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$onUnifyDecoderListener;->onUnifyDecoderEvent(IIILjava/lang/Object;)V

    return v3

    :cond_b
    const/high16 v1, 0x240000

    const v4, 0xffff

    .line 386
    invoke-direct {p0, v1, v4, p1, v2}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->setUnifyDecoder(IIII)I

    .line 389
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-virtual {p1, v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->setRenderType(I)V

    return v3
.end method

.method private setUnifyDecoder(IIII)I
    .locals 3

    .line 492
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 495
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "@@@voUnifyDecoderManager"

    const-string v2, "setUnifyDecoder pid:%08x, codectype:%08x, dectype:%08x outputMode\uff1a%d"

    .line 493
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/high16 v0, 0x240000

    if-ne v0, p1, :cond_1

    shl-int/lit8 p3, p3, 0x10

    or-int/2addr p3, p4

    .line 503
    :cond_1
    iget-object p4, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mListener:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$onUnifyDecoderListener;

    or-int/2addr p1, p2

    int-to-long p1, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p4, p1, p2, p3}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$onUnifyDecoderListener;->onUnifyDecoderSetParam(JLjava/lang/Object;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public enableCardBoardVideo(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mCardBoard:Z

    return-void
.end method

.method public enableCubemapVideo(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mCubeVideo:Z

    return-void
.end method

.method public enableSphericalVideo(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mSphericalVideo:Z

    return-void
.end method

.method public isDeviceHardwareSupport()Z
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getRenderType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getRenderType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public setCodeType(II)I
    .locals 5

    const-string v0, "@@@voUnifyDecoderManager"

    const/16 v1, 0x17

    const/16 v2, 0xe

    const/high16 v3, 0x230000

    const/4 v4, 0x0

    if-eq p1, v3, :cond_b

    const/high16 v3, 0x240000

    if-eq p1, v3, :cond_0

    goto/16 :goto_3

    .line 240
    :cond_0
    sget-object p1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_NONE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result p1

    if-ne p1, p2, :cond_1

    .line 241
    sget-object p1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    .line 242
    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p2

    .line 245
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v2, :cond_3

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    .line 247
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result v2

    if-eq p1, v2, :cond_3

    .line 248
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v4, [Ljava/lang/Object;

    const-string v2, "SDK version is below 14,don\'t run HW,change to run SW"

    .line 249
    invoke-static {v0, v2, p1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_2
    sget-object p1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    .line 253
    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result p1

    .line 256
    :cond_3
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_VIDEO_HARDWARE_AUTO_SELECTED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    .line 257
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result v0

    if-ne v0, p1, :cond_5

    .line 259
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-ge p1, v0, :cond_4

    .line 260
    sget-object p1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_VIDEO_IOMX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    .line 261
    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result p1

    goto :goto_1

    .line 263
    :cond_4
    sget-object p1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_VIDEO_MEDIACODEC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    .line 264
    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result p1

    .line 269
    :cond_5
    :goto_1
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result v0

    if-eq v0, p1, :cond_9

    .line 271
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->getCurrentDeviceDatas()V

    .line 273
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->matchCurrentDeviceToWhiteList()V

    .line 276
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->isDeviceHardwareSupport()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 p1, 0x0

    .line 277
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    .line 278
    iget-object p2, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mListener:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$onUnifyDecoderListener;

    const v0, -0x7ffffff0

    const/4 v1, -0x1

    invoke-interface {p2, v0, v1, v1, p1}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$onUnifyDecoderListener;->onUnifyDecoderEvent(IIILjava/lang/Object;)V

    return v4

    .line 282
    :cond_6
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    if-eqz v0, :cond_8

    .line 283
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getRenderType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_VIDEO_HARDWARE_AUTO_SELECTED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    .line 284
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result v0

    if-ne v0, p2, :cond_8

    .line 285
    iget-object p2, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getRenderType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "iomx"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 286
    sget-object p1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_VIDEO_IOMX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    .line 287
    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result p1

    goto :goto_2

    .line 288
    :cond_7
    iget-object p2, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getRenderType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mediacodec"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 290
    sget-object p1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_VIDEO_MEDIACODEC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    .line 291
    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result p1

    .line 296
    :cond_8
    :goto_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_9

    .line 297
    sget-object p1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_VIDEO_MEDIACODEC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    .line 298
    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result p1

    .line 302
    :cond_9
    sget-object p2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_VIDEO_IOMX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result p2

    if-ne p2, p1, :cond_a

    .line 303
    iget-object p2, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mContext:Landroid/content/Context;

    const-string v0, "IOMX"

    invoke-virtual {p2, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "checkIOMX"

    const-string v1, "none"

    .line 305
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "false"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    const p1, -0x7ffffff6

    return p1

    .line 310
    :cond_a
    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->setDecoderAndRender(I)I

    goto :goto_3

    .line 314
    :cond_b
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v2, :cond_d

    sget-object p1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    .line 316
    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result p1

    if-eq p2, p1, :cond_d

    .line 317
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_c

    new-array p1, v4, [Ljava/lang/Object;

    const-string p2, "SDK version is below 14, change to run SW audio decoder"

    .line 318
    invoke-static {v0, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    :cond_c
    sget-object p1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    .line 322
    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result p2

    .line 326
    :cond_d
    sget-object p1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_AUDIO_IOMX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result p1

    if-ne p1, p2, :cond_e

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_e

    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v0, "6.0"

    .line 327
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 328
    sget-object p1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_AUDIO_MEDIACODEC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result p2

    :cond_e
    const p1, 0xffff

    .line 331
    invoke-direct {p0, v3, p1, p2, v4}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->setUnifyDecoder(IIII)I

    :goto_3
    return v4
.end method

.method public setListener(Lcom/visualon/OSMPUtils/voUnifyDecoderManager$onUnifyDecoderListener;)V
    .locals 2

    .line 114
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mListener:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$onUnifyDecoderListener;

    if-nez p1, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->reset()V

    .line 117
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set listener: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mListener:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$onUnifyDecoderListener;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@voUnifyDecoderManager"

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setParam(Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;Ljava/lang/Object;)I
    .locals 1

    .line 123
    sget-object v0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$1;->$SwitchMap$com$visualon$OSMPUtils$voUnifyDecoderManager$VARSKEY:[I

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 143
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->m_bDisableForceOpenGL:Z

    goto :goto_0

    .line 140
    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->m_bVerimatrixPostProcessVideo:Z

    goto :goto_0

    .line 137
    :pswitch_2
    check-cast p2, Lcom/visualon/OSMPUtils/voVideoViewController;

    iput-object p2, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    goto :goto_0

    .line 134
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->m_RenderType:I

    goto :goto_0

    .line 131
    :pswitch_4
    check-cast p2, Landroid/content/Context;

    iput-object p2, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 128
    :pswitch_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->m_bEnableSEIPostProcessVideo:Z

    goto :goto_0

    .line 125
    :pswitch_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->mbAdaptivePlayback:Z

    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSmoothBAWhiteListFile(Ljava/lang/String;)I
    .locals 3

    .line 152
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 154
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSmoothBAWhiteListFile fail,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "@@@voUnifyDecoderManager"

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const p1, -0x7ffffff8

    return p1

    .line 161
    :cond_1
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->readWhiteListDeviceData(Ljava/io/InputStream;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 163
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const p1, -0x7ffffff2

    return p1
.end method
