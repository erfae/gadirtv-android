.class public Lcom/inka/ncg2/ScreenRecorderDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/inka/ncg2/ScreenRecorderDetector;

.field private static mIsScreenRecorderOn:Z


# instance fields
.field private mDetectorImpls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/inka/ncg2/ScreenRecorderDetectInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inka/ncg2/ScreenRecorderDetector;->mDetectorImpls:Ljava/util/ArrayList;

    return-void
.end method

.method static IsScreenRecorderOn()Z
    .locals 1

    .line 75
    sget-boolean v0, Lcom/inka/ncg2/ScreenRecorderDetector;->mIsScreenRecorderOn:Z

    return v0
.end method

.method static enableScreenRecorderDetecting(Z)V
    .locals 0

    .line 71
    sput-boolean p0, Lcom/inka/ncg2/ScreenRecorderDetector;->mIsScreenRecorderOn:Z

    return-void
.end method

.method public static getInstance()Lcom/inka/ncg2/ScreenRecorderDetector;
    .locals 1

    .line 29
    sget-object v0, Lcom/inka/ncg2/ScreenRecorderDetector;->mInstance:Lcom/inka/ncg2/ScreenRecorderDetector;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/inka/ncg2/ScreenRecorderDetector;

    invoke-direct {v0}, Lcom/inka/ncg2/ScreenRecorderDetector;-><init>()V

    sput-object v0, Lcom/inka/ncg2/ScreenRecorderDetector;->mInstance:Lcom/inka/ncg2/ScreenRecorderDetector;

    .line 32
    :cond_0
    sget-object v0, Lcom/inka/ncg2/ScreenRecorderDetector;->mInstance:Lcom/inka/ncg2/ScreenRecorderDetector;

    return-object v0
.end method


# virtual methods
.method public detect()Z
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/inka/ncg2/ScreenRecorderDetector;->mDetectorImpls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inka/ncg2/ScreenRecorderDetectInterface;

    .line 43
    invoke-interface {v1}, Lcom/inka/ncg2/ScreenRecorderDetectInterface;->detect()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method getDetectedAppName()Ljava/lang/String;
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/inka/ncg2/ScreenRecorderDetector;->mDetectorImpls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inka/ncg2/ScreenRecorderDetectInterface;

    .line 62
    invoke-interface {v1}, Lcom/inka/ncg2/ScreenRecorderDetectInterface;->detect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-interface {v1}, Lcom/inka/ncg2/ScreenRecorderDetectInterface;->getDetectedAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getDetectedAppPackageName()Ljava/lang/String;
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/inka/ncg2/ScreenRecorderDetector;->mDetectorImpls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inka/ncg2/ScreenRecorderDetectInterface;

    .line 52
    invoke-interface {v1}, Lcom/inka/ncg2/ScreenRecorderDetectInterface;->detect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-interface {v1}, Lcom/inka/ncg2/ScreenRecorderDetectInterface;->getDetectedAppPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 17
    iget-object v0, p0, Lcom/inka/ncg2/ScreenRecorderDetector;->mDetectorImpls:Ljava/util/ArrayList;

    new-instance v1, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;

    invoke-direct {v1}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/inka/ncg2/ScreenRecorderDetector;->mDetectorImpls:Ljava/util/ArrayList;

    new-instance v1, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;

    invoke-direct {v1}, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/inka/ncg2/ScreenRecorderDetector;->mDetectorImpls:Ljava/util/ArrayList;

    new-instance v1, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;

    invoke-direct {v1}, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/inka/ncg2/ScreenRecorderDetector;->mDetectorImpls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inka/ncg2/ScreenRecorderDetectInterface;

    .line 24
    invoke-interface {v1, p1}, Lcom/inka/ncg2/ScreenRecorderDetectInterface;->init(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/inka/ncg2/ScreenRecorderDetector;->mDetectorImpls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inka/ncg2/ScreenRecorderDetectInterface;

    .line 37
    invoke-interface {v1}, Lcom/inka/ncg2/ScreenRecorderDetectInterface;->release()V

    goto :goto_0

    :cond_0
    return-void
.end method
