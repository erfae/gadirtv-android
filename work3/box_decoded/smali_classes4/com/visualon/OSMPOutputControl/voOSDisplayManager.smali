.class public Lcom/visualon/OSMPOutputControl/voOSDisplayManager;
.super Ljava/lang/Object;
.source "voOSDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;
    }
.end annotation


# static fields
.field public static final SDK_INT:I

.field private static final TAG:Ljava/lang/String; = "@@@voOSDisplayManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEventHandler:Landroid/os/Handler;

.field private mHDMIDisplayId:I

.field private mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

.field private mWifiDisplayId:I

.field private mbForbidMiracast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 333
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const/4 v1, 0x0

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    :goto_0
    sput v0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->SDK_INT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;-><init>(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 112
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mbForbidMiracast:Z

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    const/4 v0, -0x1

    .line 115
    iput v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mWifiDisplayId:I

    .line 116
    iput v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mHDMIDisplayId:I

    const-string v0, "display"

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->listDisplay()V

    return-void
.end method

.method static synthetic access$100(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mWifiDisplayId:I

    return p0
.end method

.method static synthetic access$300(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mHDMIDisplayId:I

    return p0
.end method

.method static synthetic access$400(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->forbidMiracast()V

    return-void
.end method

.method private forbidMiracast()V
    .locals 13

    const-string v0, "@@@voOSDisplayManager"

    .line 190
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 191
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 194
    :try_start_0
    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getDisplayType(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 195
    iget-boolean v4, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mbForbidMiracast:Z

    if-eqz v4, :cond_2

    .line 196
    iget-object v4, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mContext:Landroid/content/Context;

    const-string v5, "media_router"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRouter;

    const/4 v5, 0x0

    .line 197
    :goto_1
    invoke-virtual {v4}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 199
    invoke-virtual {v4, v5}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v6

    .line 200
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    const-string v7, "Output Control, RouteInfo, name is %s, type is %d, status is %s, SupportTypes is %d. "

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    .line 202
    invoke-virtual {v6}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-virtual {v6}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-virtual {v6}, Landroid/media/MediaRouter$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v10, v8

    const/4 v11, 0x3

    invoke-virtual {v6}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 201
    invoke-static {v0, v7, v10}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :cond_0
    invoke-virtual {v6}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v7

    if-nez v7, :cond_1

    .line 205
    invoke-virtual {v4, v8, v6}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 206
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "Output Control, selectRoute, forbid miracast, close %s"

    new-array v8, v9, [Ljava/lang/Object;

    .line 207
    invoke-virtual {v6}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v8, v2

    invoke-static {v0, v7, v8}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 213
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can get proper display type. Display is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v3

    invoke-virtual {v5}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private static getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0

    .line 444
    invoke-virtual {p0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private static getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0

    .line 439
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private static getDisplaySizeV23(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 7

    .line 423
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 425
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 427
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p0

    .line 428
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 429
    invoke-virtual {v3}, Landroid/view/Display$Mode;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "@@@voOSDisplayManager"

    invoke-static {v6, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    iget v5, p1, Landroid/graphics/Point;->x:I

    if-le v4, v5, :cond_0

    .line 431
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->x:I

    .line 432
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->y:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getDisplaySizeV9(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1

    .line 449
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 450
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private getDisplayType(Landroid/view/Display;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/StringIndexOutOfBoundsException;
        }
    .end annotation

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 227
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getType"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 228
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 234
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 232
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 230
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 236
    :goto_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->typeToString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 238
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "type "

    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "UNKNOWN"

    if-gez v0, :cond_1

    return-object v1

    :cond_1
    const-string v2, " "

    .line 243
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const-string v3, ","

    .line 244
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v2, :cond_3

    if-gez v0, :cond_2

    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static getPhysicalDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1

    const-string v0, "window"

    .line 354
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 355
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getPhysicalDisplaySize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static getPhysicalDisplaySize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;
    .locals 7

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display information: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "@@@voOSDisplayManager"

    invoke-static {v3, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    sget v0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->SDK_INT:I

    const/16 v2, 0x19

    if-ge v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_4

    .line 370
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Sony"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "BRAVIA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 372
    new-instance p0, Landroid/graphics/Point;

    const/16 p1, 0xf00

    const/16 v0, 0x870

    invoke-direct {p0, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 373
    :cond_0
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "NVIDIA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "SHIELD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 374
    invoke-static {p0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "philips"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "QM1"

    .line 375
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "QV151E"

    .line 376
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "TPM171E"

    .line 377
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    const/4 p0, 0x0

    const/4 v0, 0x1

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 381
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "get"

    new-array v5, v0, [Ljava/lang/Class;

    .line 382
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "sys.display-size"

    aput-object v6, v5, v1

    .line 383
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v2, "Failed to read sys.display-size"

    .line 385
    invoke-static {v3, v2, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 390
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 391
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 392
    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 393
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v4, :cond_3

    if-lez v0, :cond_3

    .line 395
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v4, v0}, Landroid/graphics/Point;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 401
    :catch_1
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sys.display-size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    :cond_4
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 407
    sget v0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_5

    .line 408
    invoke-static {p1, p0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getDisplaySizeV23(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_1

    :cond_5
    const/16 v2, 0x11

    if-lt v0, v2, :cond_6

    .line 410
    invoke-static {p1, p0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_1

    :cond_6
    const/16 v2, 0x10

    if-lt v0, v2, :cond_7

    .line 412
    invoke-static {p1, p0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_1

    .line 414
    :cond_7
    invoke-static {p1, p0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getDisplaySizeV9(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 417
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get display size is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private listDisplay()V
    .locals 8

    const-string v0, "@@@voOSDisplayManager"

    .line 156
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v1

    const/4 v2, -0x1

    .line 157
    iput v2, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mWifiDisplayId:I

    .line 158
    iput v2, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mHDMIDisplayId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 159
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_7

    .line 162
    :try_start_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Output Control, Displays View, id is %d, name is %s, type is %s."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 163
    aget-object v6, v1, v3

    .line 164
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    aget-object v6, v1, v3

    invoke-virtual {v6}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    aget-object v7, v1, v3

    invoke-direct {p0, v7}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getDisplayType(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 163
    invoke-static {v0, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_0
    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getDisplayType(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    aget-object v4, v1, v3

    .line 167
    invoke-direct {p0, v4}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getDisplayType(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "virtual"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 168
    :cond_1
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    iput v4, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mWifiDisplayId:I

    .line 171
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    const/16 v6, 0x13

    const/16 v7, 0x8

    if-lt v4, v5, :cond_4

    .line 172
    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getDisplayType(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "EXTERNAL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_3

    aget-object v4, v1, v3

    .line 173
    invoke-virtual {v4}, Landroid/view/Display;->getFlags()I

    move-result v4

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_6

    .line 174
    :cond_3
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    iput v4, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mHDMIDisplayId:I

    goto :goto_1

    .line 177
    :cond_4
    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getDisplayType(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hdmi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_5

    aget-object v4, v1, v3

    .line 178
    invoke-virtual {v4}, Landroid/view/Display;->getFlags()I

    move-result v4

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_6

    .line 179
    :cond_5
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    iput v4, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mHDMIDisplayId:I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 183
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can get proper display type. Display is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v3

    invoke-virtual {v5}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public static toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 344
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 269
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "VIRTUAL"

    return-object p0

    :cond_1
    const-string p0, "OVERLAY"

    return-object p0

    :cond_2
    const-string p0, "WIFI"

    return-object p0

    :cond_3
    const-string p0, "EXTERNAL"

    return-object p0

    :cond_4
    const-string p0, "INTERNAL"

    return-object p0

    :cond_5
    const-string p0, "UNKNOWN"

    return-object p0
.end method


# virtual methods
.method public closeMiracast()I
    .locals 1

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mbForbidMiracast:Z

    .line 142
    invoke-direct {p0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->forbidMiracast()V

    const/4 v0, 0x0

    return v0
.end method

.method public isHDCPForHDMI()Z
    .locals 10

    .line 275
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 277
    :goto_0
    array-length v3, v0

    const-string v4, "@@@voOSDisplayManager"

    if-ge v2, v3, :cond_4

    .line 280
    :try_start_0
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getDisplayType(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getDisplayType(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "hdmi"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 281
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    const-string v3, "Output control, id is %d, name is %s, flags is %d, SecureFlag is %s."

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 282
    aget-object v8, v0, v2

    .line 283
    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    aget-object v8, v0, v2

    invoke-virtual {v8}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    aget-object v8, v0, v2

    invoke-virtual {v8}, Landroid/view/Display;->getFlags()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x3

    aget-object v9, v0, v2

    .line 284
    invoke-virtual {v9}, Landroid/view/Display;->getFlags()I

    move-result v9

    and-int/2addr v9, v5

    if-lez v9, :cond_0

    const-string v9, "on"

    goto :goto_1

    :cond_0
    const-string v9, "off"

    :goto_1
    aput-object v9, v7, v8

    .line 282
    invoke-static {v4, v3, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    :cond_1
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/Display;->getFlags()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v0, v5

    if-lez v0, :cond_2

    return v6

    :cond_2
    return v1

    .line 292
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can get proper display type. Display is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Output control, Don\'t find HDMI connection."

    .line 296
    invoke-static {v4, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public isHDCPForMiracast()Z
    .locals 10

    .line 302
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 304
    :goto_0
    array-length v3, v0

    const-string v4, "@@@voOSDisplayManager"

    if-ge v2, v3, :cond_4

    .line 307
    :try_start_0
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getDisplayType(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "wifi"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 308
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    const-string v3, "Output control, id is %d, name is %s, flags is %d, SecureFlag is %s."

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 309
    aget-object v8, v0, v2

    .line 310
    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    aget-object v8, v0, v2

    invoke-virtual {v8}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    aget-object v8, v0, v2

    invoke-virtual {v8}, Landroid/view/Display;->getFlags()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x3

    aget-object v9, v0, v2

    .line 311
    invoke-virtual {v9}, Landroid/view/Display;->getFlags()I

    move-result v9

    and-int/2addr v9, v5

    if-lez v9, :cond_0

    const-string v9, "on"

    goto :goto_1

    :cond_0
    const-string v9, "off"

    :goto_1
    aput-object v9, v7, v8

    .line 309
    invoke-static {v4, v3, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    :cond_1
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/Display;->getFlags()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v0, v5

    if-lez v0, :cond_2

    return v6

    :cond_2
    return v1

    .line 319
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can get proper display type. Display is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_4
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_5

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Output control, Don\'t find Micrcast and Anti_Mirroring connection."

    .line 324
    invoke-static {v4, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return v1
.end method

.method public isMiracast()Z
    .locals 2

    .line 220
    iget v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mWifiDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mEventHandler:Landroid/os/Handler;

    return-void
.end method

.method public setOnExternalDisplayListener(Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    return-void
.end method

.method public start()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 130
    invoke-direct {p0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->listDisplay()V

    .line 131
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mWifiDisplayId:I

    if-ltz v1, :cond_0

    .line 132
    invoke-interface {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;->onMiracastOpened()V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mHDMIDisplayId:I

    if-ltz v1, :cond_1

    .line 135
    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDMI:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;->onExternalDisplayConnected(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mbForbidMiracast:Z

    const/4 v0, -0x1

    .line 149
    iput v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mWifiDisplayId:I

    .line 150
    iput v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mHDMIDisplayId:I

    .line 151
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method
