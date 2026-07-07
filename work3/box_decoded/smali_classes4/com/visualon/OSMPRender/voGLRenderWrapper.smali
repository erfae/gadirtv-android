.class public Lcom/visualon/OSMPRender/voGLRenderWrapper;
.super Ljava/lang/Object;
.source "voGLRenderWrapper.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPRender/voGLRenderWrapper$onGLRenderListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "voGLRenderWrapper"


# instance fields
.field private SphericalView_:Lcom/visualon/OSMPSensor/voSphericalVideoView;

.field private changed_:Z

.field private context_:Landroid/content/Context;

.field private cube_:Z

.field private fov_:F

.field private heading_:F

.field private libPath_:Ljava/lang/String;

.field private listener_:Lcom/visualon/OSMPRender/voGLRenderWrapper$onGLRenderListener;

.field private nativeContext_:J

.field private pitch_:F

.field private portrait_:Z

.field private spherical_:Z


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPRender/voGLRenderWrapper$onGLRenderListener;Landroid/content/Context;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->nativeContext_:J

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->libPath_:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->listener_:Lcom/visualon/OSMPRender/voGLRenderWrapper$onGLRenderListener;

    .line 47
    iput-object v0, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->context_:Landroid/content/Context;

    const/4 v1, 0x0

    .line 49
    iput v1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->heading_:F

    .line 50
    iput v1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->pitch_:F

    .line 51
    iput v1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->fov_:F

    const/4 v1, 0x0

    .line 52
    iput-boolean v1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->changed_:Z

    .line 53
    iput-boolean v1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->spherical_:Z

    .line 54
    iput-boolean v1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->portrait_:Z

    .line 55
    iput-boolean v1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->cube_:Z

    .line 56
    iput-object v0, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->SphericalView_:Lcom/visualon/OSMPSensor/voSphericalVideoView;

    .line 73
    iput-object p1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->listener_:Lcom/visualon/OSMPRender/voGLRenderWrapper$onGLRenderListener;

    .line 74
    iput-object p2, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->context_:Landroid/content/Context;

    return-void
.end method

.method private isPortraitMode()Z
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->context_:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isProbablyEmulator()Z
    .locals 2

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "unknown"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "google_sdk"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Emulator"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Android SDK built for x86"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->listener_:Lcom/visualon/OSMPRender/voGLRenderWrapper$onGLRenderListener;

    return-void
.end method

.method public getNativeWrapper()J
    .locals 2

    .line 160
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->nativeContext_:J

    return-wide v0
.end method

.method protected native nativeDraw()I
.end method

.method protected native nativeGLCreated(Ljava/lang/String;I)I
.end method

.method protected native nativeGLDestroy()I
.end method

.method protected native nativeSetDpi(FF)I
.end method

.method protected native nativeSetSphericalParameter(Ljava/lang/Object;)I
.end method

.method protected native nativeSetSphericalVideoView(FFF)I
.end method

.method protected native nativeSurfaceChanged(II)I
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    .line 151
    iget-boolean p1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->spherical_:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->cube_:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->SphericalView_:Lcom/visualon/OSMPSensor/voSphericalVideoView;

    if-eqz p1, :cond_1

    .line 152
    new-instance v0, Lcom/visualon/OSMPSensor/voSphericalParameter;

    iget-boolean v1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->portrait_:Z

    .line 153
    invoke-interface {p1}, Lcom/visualon/OSMPSensor/voSphericalVideoView;->getRotation()[F

    move-result-object p1

    iget-object v2, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->SphericalView_:Lcom/visualon/OSMPSensor/voSphericalVideoView;

    invoke-interface {v2}, Lcom/visualon/OSMPSensor/voSphericalVideoView;->getFOV()F

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/visualon/OSMPSensor/voSphericalParameter;-><init>(Z[FF)V

    .line 154
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPRender/voGLRenderWrapper;->nativeSetSphericalParameter(Ljava/lang/Object;)I

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/visualon/OSMPRender/voGLRenderWrapper;->nativeDraw()I

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->listener_:Lcom/visualon/OSMPRender/voGLRenderWrapper$onGLRenderListener;

    if-eqz p1, :cond_0

    .line 143
    invoke-interface {p1}, Lcom/visualon/OSMPRender/voGLRenderWrapper$onGLRenderListener;->onGLInitFinish()V

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voGLRenderWrapper;->isPortraitMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->portrait_:Z

    .line 146
    invoke-virtual {p0, p2, p3}, Lcom/visualon/OSMPRender/voGLRenderWrapper;->nativeSurfaceChanged(II)I

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7

    .line 105
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p2

    const-string v0, "voGLRenderWrapper"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/16 p2, 0x1f01

    .line 106
    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->context_:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object p1

    const/high16 p2, 0x10000

    if-eqz p1, :cond_3

    .line 113
    array-length v2, p1

    if-lez v2, :cond_3

    .line 114
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    .line 116
    iget-object v5, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 117
    iget v5, v4, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    if-eqz v5, :cond_1

    .line 118
    iget p2, v4, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GLES version is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "GLES version not found."

    .line 121
    invoke-static {v0, v5, v4}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    :cond_3
    iget-object p1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->libPath_:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/visualon/OSMPRender/voGLRenderWrapper;->nativeGLCreated(Ljava/lang/String;I)I

    .line 129
    iget-object p1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->listener_:Lcom/visualon/OSMPRender/voGLRenderWrapper$onGLRenderListener;

    if-eqz p1, :cond_4

    .line 130
    invoke-interface {p1}, Lcom/visualon/OSMPRender/voGLRenderWrapper$onGLRenderListener;->onGLInitFinish()V

    .line 132
    :cond_4
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voGLRenderWrapper;->isPortraitMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->portrait_:Z

    .line 133
    iget-object p1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->context_:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 134
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 135
    iget v2, p1, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, p2, v1

    iget v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p2, v2

    const-string v1, "onSurfaceCreated %f %f"

    invoke-static {v0, v1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :cond_5
    iget p2, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {p0, p2, p1}, Lcom/visualon/OSMPRender/voGLRenderWrapper;->nativeSetDpi(FF)I

    return-void
.end method

.method public setCube(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->cube_:Z

    return-void
.end method

.method public setLibraryPath(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->libPath_:Ljava/lang/String;

    return-void
.end method

.method public setSpherical(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->spherical_:Z

    return-void
.end method

.method public setSphericalVideoView(FFF)I
    .locals 0

    .line 91
    iput p1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->heading_:F

    .line 92
    iput p2, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->pitch_:F

    .line 93
    iput p3, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->fov_:F

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->changed_:Z

    const/4 p1, 0x0

    return p1
.end method

.method public setSphericalVideoView(Lcom/visualon/OSMPSensor/voSphericalVideoView;)I
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/visualon/OSMPRender/voGLRenderWrapper;->SphericalView_:Lcom/visualon/OSMPSensor/voSphericalVideoView;

    const/4 p1, 0x0

    return p1
.end method
