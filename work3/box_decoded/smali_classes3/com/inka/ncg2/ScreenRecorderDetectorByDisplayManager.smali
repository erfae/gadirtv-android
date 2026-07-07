.class public Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inka/ncg2/ScreenRecorderDetectInterface;


# static fields
.field private static TAG:Ljava/lang/String; = "ScreenRecorderDetectorJellybeanOrHigher"

.field private static mContext:Landroid/content/Context; = null

.field static mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener; = null

.field private static mDisplayManager:Landroid/hardware/display/DisplayManager; = null

.field private static mDisplayName:Ljava/lang/String; = "Unknown"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    new-instance v0, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager$1;

    invoke-direct {v0}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager$1;-><init>()V

    sput-object v0, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/hardware/display/DisplayManager;
    .locals 1

    .line 11
    sget-object v0, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 11
    sput-object p0, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public static checkScreenRecorderRunning()Z
    .locals 7

    .line 80
    sget-object v0, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 84
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 85
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    new-array v2, v3, [Ljava/lang/Object;

    .line 86
    sget-object v4, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->mDisplayName:Ljava/lang/String;

    aput-object v4, v2, v1

    const-string v4, "DisplayName : [%s]\n"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 87
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v1

    aget-object v6, v0, v4

    invoke-virtual {v6}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    const-string v6, "\tIndex : [%d] : Name [%s]\n"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    aget-object v5, v0, v4

    invoke-virtual {v5}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Digital Pen off-screen display"

    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    return v1

    .line 99
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "HDMI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 104
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/inka/ncg2/i;->a()Lcom/inka/ncg2/i;

    move-result-object v2

    .line 106
    iget-object v3, v2, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz v3, :cond_4

    .line 107
    iget-object v2, v2, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    :cond_4
    return v1
.end method

.method private static logDisplayInfo(Landroid/view/Display;)V
    .locals 5

    .line 59
    sget-object v0, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "ID: %d, Name: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    and-int/lit8 v0, p0, 0x1

    if-ne v0, v4, :cond_0

    .line 62
    sget-object v0, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->TAG:Ljava/lang/String;

    const-string v2, "    Flag: FLAG_SUPPORTS_PROTECTED_BUFFERS"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-ne v0, v1, :cond_1

    .line 65
    sget-object v0, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->TAG:Ljava/lang/String;

    const-string v1, "    Flag: FLAG_SECURE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    and-int/lit8 v0, p0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 68
    sget-object v0, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->TAG:Ljava/lang/String;

    const-string v1, "    Flag: FLAG_PRIVATE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    and-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 71
    sget-object v0, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->TAG:Ljava/lang/String;

    const-string v1, "    Flag: FLAG_PRESENTATION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_4

    .line 74
    sget-object p0, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->TAG:Ljava/lang/String;

    const-string v0, "    Flag: FLAG_ROUND"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private static registerActionReceiver()V
    .locals 3

    .line 46
    sget-object v0, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sput-object v0, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 47
    sget-object v1, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method private static unregisterActionReceiver()V
    .locals 2

    .line 53
    sget-object v0, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    .line 54
    sget-object v1, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public detect()Z
    .locals 1

    .line 31
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->checkScreenRecorderRunning()Z

    move-result v0

    return v0
.end method

.method public getDetectedAppName()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCount is abnormal("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetectedAppPackageName()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCount is abnormal("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 19
    sget-object v0, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->TAG:Ljava/lang/String;

    const-string v1, "ScreenRecorderDetectorByDisplayManager Enabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sput-object p1, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->registerActionReceiver()V

    return-void
.end method

.method public release()V
    .locals 0

    .line 26
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->unregisterActionReceiver()V

    return-void
.end method
