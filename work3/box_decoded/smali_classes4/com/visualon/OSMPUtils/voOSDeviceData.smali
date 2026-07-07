.class public Lcom/visualon/OSMPUtils/voOSDeviceData;
.super Ljava/lang/Object;
.source "voOSDeviceData.java"


# instance fields
.field private mModel:Ljava/lang/String;

.field private mPlatform:Ljava/lang/String;

.field private mRenderType:Ljava/lang/String;

.field private mTextureView:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mModel:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mVersion:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mPlatform:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mRenderType:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mTextureView:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getModel()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mPlatform:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderType()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mRenderType:Ljava/lang/String;

    return-object v0
.end method

.method public getTextureView()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mTextureView:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mModel:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mPlatform:Ljava/lang/String;

    return-void
.end method

.method public setRenderType(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mRenderType:Ljava/lang/String;

    return-void
.end method

.method public setTextureView(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mTextureView:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mVersion:Ljava/lang/String;

    return-void
.end method
