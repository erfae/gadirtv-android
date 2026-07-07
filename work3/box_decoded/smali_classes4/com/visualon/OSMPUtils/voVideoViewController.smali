.class public Lcom/visualon/OSMPUtils/voVideoViewController;
.super Ljava/lang/Object;
.source "voVideoViewController.java"

# interfaces
.implements Lcom/visualon/OSMPRender/voGLRenderWrapper$onGLRenderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;,
        Lcom/visualon/OSMPUtils/voVideoViewController$SecondSurfaceTextureListener;,
        Lcom/visualon/OSMPUtils/voVideoViewController$FirstSurfaceTextureListener;,
        Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;,
        Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;,
        Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;,
        Lcom/visualon/OSMPUtils/voVideoViewController$voGlobalLayoutListener;
    }
.end annotation


# static fields
.field private static final DEST_DIFF:I = 0x2

.field private static final DEST_NEAR:I = 0x1

.field private static final DEST_NO_CHANGE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "@@@voVideoViewController"

.field private static final TIME_TRY_LOCK:I = 0x12c

.field private static final messageAddSecondView:I = -0xf0ffff8

.field private static final messageCleanUI:I = -0xf0ffff4

.field private static final messageNotifyUpdateVideoDestBoxFinish:I = -0xf0ffff1

.field private static final messageSetRenderType:I = -0xf0ffff7

.field private static final messageSetViewSize:I = -0xf0ffff3

.field private static final messageUpdateDisplaySize:I = -0xf0ffff5


# instance fields
.field private SphericalView_:Lcom/visualon/OSMPSensor/voSphericalVideoView;

.field glSurfaceView:Landroid/opengl/GLSurfaceView;

.field glWrapper:Lcom/visualon/OSMPRender/voGLRenderWrapper;

.field globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private isSecure:Z

.field private lastResizeTime:J

.field layoutAdapter_:Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;

.field private mAppSurfaceTextureListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

.field private mEventHandler:Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;

.field private mHeightVideo:I

.field private mLastSetViewHeight:I

.field private mLastSetViewWidth:I

.field private mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mRenderType:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSecondView:Landroid/view/View;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTranslationX:F

.field private mTranslationY:F

.field private mUpdateVideoDestIndex:I

.field private mView:Landroid/view/View;

.field private mViewChangeListener:Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;

.field private mWaitingSurfaceChange:Z

.field private mWidthVideo:I

.field private mZoomMode:I

.field private m_cbSurfaceHolder:Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;

.field private mbCardBoardEnable:Z

.field private mbCubeEnable:Z

.field private mbEnforceSWVideoScaling:Z

.field private mbKeepAspectRatio:Z

.field private mbSphericalEnable:Z

.field private mbViewReposition:Z

.field private screenSizeChanged:Z

.field private useMeasure:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x1

    .line 75
    iput v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mZoomMode:I

    .line 76
    iput v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mRenderType:I

    const/4 v1, 0x0

    .line 78
    iput v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mUpdateVideoDestIndex:I

    .line 79
    iput-boolean v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mWaitingSurfaceChange:Z

    const-wide/16 v2, 0x0

    .line 81
    iput-wide v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->lastResizeTime:J

    .line 92
    iput-boolean v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbSphericalEnable:Z

    .line 93
    iput-boolean v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbCubeEnable:Z

    .line 94
    iput-boolean v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbCardBoardEnable:Z

    .line 95
    iput-boolean v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbViewReposition:Z

    const/4 v2, 0x0

    .line 96
    iput-object v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->SphericalView_:Lcom/visualon/OSMPSensor/voSphericalVideoView;

    const/4 v3, 0x0

    .line 97
    iput v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mTranslationX:F

    .line 98
    iput v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mTranslationY:F

    .line 102
    iput-boolean v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->useMeasure:Z

    .line 103
    iput-boolean v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->screenSizeChanged:Z

    .line 104
    iput-boolean v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->isSecure:Z

    .line 107
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mAppSurfaceTextureListener:Ljava/lang/ref/WeakReference;

    .line 227
    iput-object v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->layoutAdapter_:Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;

    .line 229
    iput-object v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glWrapper:Lcom/visualon/OSMPRender/voGLRenderWrapper;

    .line 230
    iput-object v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 268
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v3, "@@@voVideoViewController"

    if-eqz v0, :cond_0

    .line 269
    new-instance v2, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;

    invoke-direct {v2, p0, v0}, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;-><init>(Lcom/visualon/OSMPUtils/voVideoViewController;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mEventHandler:Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;

    .line 270
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Looper.myLooper()"

    invoke-static {v3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 271
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 272
    new-instance v2, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;

    invoke-direct {v2, p0, v0}, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;-><init>(Lcom/visualon/OSMPUtils/voVideoViewController;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mEventHandler:Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;

    .line 273
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "getMainLooper()"

    invoke-static {v3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 275
    :cond_1
    iput-object v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mEventHandler:Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPUtils/voVideoViewController;)Landroid/view/View;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/visualon/OSMPUtils/voVideoViewController;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenWidth:I

    return p0
.end method

.method static synthetic access$1000(Lcom/visualon/OSMPUtils/voVideoViewController;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voVideoViewController;->addSecondTextureViewInside()V

    return-void
.end method

.method static synthetic access$1100(Lcom/visualon/OSMPUtils/voVideoViewController;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voVideoViewController;->cleanUI()V

    return-void
.end method

.method static synthetic access$1200(Lcom/visualon/OSMPUtils/voVideoViewController;II)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPUtils/voVideoViewController;->setViewSizeInternal(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/visualon/OSMPUtils/voVideoViewController;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->setRenderTypePrivate(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/visualon/OSMPUtils/voVideoViewController;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenHeight:I

    return p0
.end method

.method static synthetic access$302(Lcom/visualon/OSMPUtils/voVideoViewController;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->screenSizeChanged:Z

    return p1
.end method

.method static synthetic access$400(Lcom/visualon/OSMPUtils/voVideoViewController;II)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPUtils/voVideoViewController;->updateDetectedScreenSize(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/visualon/OSMPUtils/voVideoViewController;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->useMeasure:Z

    return p0
.end method

.method static synthetic access$502(Lcom/visualon/OSMPUtils/voVideoViewController;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->useMeasure:Z

    return p1
.end method

.method static synthetic access$700(Lcom/visualon/OSMPUtils/voVideoViewController;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mAppSurfaceTextureListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$800(Lcom/visualon/OSMPUtils/voVideoViewController;)Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mEventHandler:Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/visualon/OSMPUtils/voVideoViewController;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->refreshDisplayOnMain(I)V

    return-void
.end method

.method private addSecondTextureViewInside()V
    .locals 6

    .line 325
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "@@@voVideoViewController"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSecondTextureView step 1 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    if-nez v0, :cond_6

    .line 328
    :try_start_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSecondTextureView step 2 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 331
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 332
    new-instance v4, Lcom/visualon/OSMPUtils/voTextureView;

    iget-object v5, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/visualon/OSMPUtils/voTextureView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    .line 334
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addSecondTextureView step 3 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    :cond_2
    iget-object v4, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSecondTextureView step 4 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    check-cast v0, Lcom/visualon/OSMPUtils/voTextureView;

    new-instance v3, Lcom/visualon/OSMPUtils/voVideoViewController$SecondSurfaceTextureListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/visualon/OSMPUtils/voVideoViewController$SecondSurfaceTextureListener;-><init>(Lcom/visualon/OSMPUtils/voVideoViewController;Lcom/visualon/OSMPUtils/voVideoViewController$1;)V

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPUtils/voTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 340
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSecondTextureView step 5 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    :cond_4
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 342
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    instance-of v3, v0, Lcom/visualon/OSMPUtils/voSurfaceView;

    if-eqz v3, :cond_5

    .line 343
    check-cast v0, Lcom/visualon/OSMPUtils/voSurfaceView;

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPUtils/voSurfaceView;->addRelevanceTextureView(Landroid/view/View;)V

    .line 345
    :cond_5
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Add second textureview, SURFACE"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method

.method private canDetectLayout(Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1009
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private checkOrientationAndScreenSize()V
    .locals 3

    .line 1124
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenWidth:I

    iget v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenHeight:I

    if-ge v0, v2, :cond_0

    .line 1128
    iput v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenWidth:I

    .line 1129
    iput v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenHeight:I

    .line 1130
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1131
    iget v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenWidth:I

    .line 1133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "@@@voVideoViewController"

    const-string v2, "Exchange screen width and height, new width is %d, new height is %d ."

    .line 1131
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private cleanUI()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 298
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 299
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->clean()V

    :cond_1
    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->enableGLView(Z)I

    return-void
.end method

.method private initGLView()I
    .locals 10

    .line 772
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 773
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glWrapper:Lcom/visualon/OSMPRender/voGLRenderWrapper;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voGLRenderWrapper;->destroy()V

    .line 777
    iput-object v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glWrapper:Lcom/visualon/OSMPRender/voGLRenderWrapper;

    .line 778
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 780
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 782
    :cond_1
    iput-object v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 783
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mViewChangeListener:Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;

    if-eqz v0, :cond_2

    const-wide/32 v3, 0x11011

    .line 784
    invoke-interface {v0, v3, v4, v2}, Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;->onSetParam(JLjava/lang/Object;)I

    .line 785
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mViewChangeListener:Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;

    const-wide/32 v3, 0x11008

    invoke-interface {v0, v3, v4, v2}, Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;->onSetParam(JLjava/lang/Object;)I

    .line 790
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_3

    goto/16 :goto_2

    .line 794
    :cond_3
    const-class v3, Landroid/app/Activity;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 796
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const-string v3, "activity"

    .line 798
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 799
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    .line 801
    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v3, 0x20000

    if-ge v0, v3, :cond_5

    invoke-static {}, Lcom/visualon/OSMPRender/voGLRenderWrapper;->isProbablyEmulator()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_6

    const v0, -0x7ffffff2

    return v0

    .line 808
    :cond_6
    new-instance v0, Landroid/opengl/GLSurfaceView;

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 811
    invoke-static {}, Lcom/visualon/OSMPRender/voGLRenderWrapper;->isProbablyEmulator()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 814
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 817
    :cond_7
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 819
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glWrapper:Lcom/visualon/OSMPRender/voGLRenderWrapper;

    if-nez v0, :cond_8

    .line 820
    new-instance v0, Lcom/visualon/OSMPRender/voGLRenderWrapper;

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lcom/visualon/OSMPRender/voGLRenderWrapper;-><init>(Lcom/visualon/OSMPRender/voGLRenderWrapper$onGLRenderListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glWrapper:Lcom/visualon/OSMPRender/voGLRenderWrapper;

    .line 821
    invoke-virtual {v0, v2}, Lcom/visualon/OSMPRender/voGLRenderWrapper;->setLibraryPath(Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glWrapper:Lcom/visualon/OSMPRender/voGLRenderWrapper;

    iget-boolean v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbSphericalEnable:Z

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPRender/voGLRenderWrapper;->setSpherical(Z)V

    .line 823
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glWrapper:Lcom/visualon/OSMPRender/voGLRenderWrapper;

    iget-boolean v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbCubeEnable:Z

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPRender/voGLRenderWrapper;->setCube(Z)V

    .line 824
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glWrapper:Lcom/visualon/OSMPRender/voGLRenderWrapper;

    iget-object v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->SphericalView_:Lcom/visualon/OSMPSensor/voSphericalVideoView;

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPRender/voGLRenderWrapper;->setSphericalVideoView(Lcom/visualon/OSMPSensor/voSphericalVideoView;)I

    .line 827
    :cond_8
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glWrapper:Lcom/visualon/OSMPRender/voGLRenderWrapper;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return v1

    :cond_9
    :goto_2
    const v0, -0x7ffffff7

    return v0
.end method

.method private isDestChanged(I)I
    .locals 12

    .line 1285
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1287
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1292
    :cond_0
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRect;->Right()I

    move-result v0

    iget-object v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSRect;->Left()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1293
    iget-object v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSRect;->Bottom()I

    move-result v2

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v3}, Lcom/visualon/OSMPUtils/voOSRect;->Top()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1296
    iget-boolean v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->screenSizeChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x2

    const-string v5, "@@@voVideoViewController"

    if-eqz v3, :cond_1

    .line 1297
    :try_start_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "#VideoDes screenSizeChanged = true, skip comparison."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v5, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1299
    :cond_1
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-ne v3, v0, :cond_5

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ne v3, v2, :cond_5

    iget v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLastSetViewWidth:I

    if-ne v3, v0, :cond_5

    iget v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLastSetViewHeight:I

    if-ne v3, v2, :cond_5

    .line 1300
    iget-boolean v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mWaitingSurfaceChange:Z

    if-eqz v3, :cond_2

    .line 1301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->lastResizeTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0xc8

    cmp-long v3, v8, v10

    if-gez v3, :cond_2

    .line 1302
    iget v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mUpdateVideoDestIndex:I

    if-le p1, v3, :cond_3

    .line 1303
    iput p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mUpdateVideoDestIndex:I

    .line 1304
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "#VideoDes update index to :%d"

    new-array v8, v6, [Ljava/lang/Object;

    iget v9, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mUpdateVideoDestIndex:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v5, v3, v8}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1308
    :cond_2
    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->notifyUpdateVideoDestBoxFinish(I)V

    .line 1310
    :cond_3
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "#VideoDes no changed :%d, w = %d, h = %d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v4

    invoke-static {v5, v3, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1320
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 1313
    :cond_5
    :try_start_2
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-gt p1, v7, :cond_6

    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    .line 1314
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gt p1, v7, :cond_6

    .line 1320
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v6

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v4

    .line 1288
    :cond_7
    :goto_3
    :try_start_3
    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->notifyUpdateVideoDestBoxFinish(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1320
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private static isVOObject(Ljava/lang/Object;)Z
    .locals 1

    .line 110
    instance-of v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private licenseViewChange(II)V
    .locals 3

    .line 1326
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1327
    iget v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenWidth:I

    iget v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenHeight:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->onScreenOrVideoSizeChanged(IIII)V

    :cond_0
    return-void
.end method

.method private licenseViewUpdate(Lcom/visualon/OSMPUtils/voOSRect;)V
    .locals 4

    .line 1333
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    if-eqz v0, :cond_0

    .line 1334
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1335
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSRect;->Right()I

    move-result v0

    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSRect;->Left()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1336
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSRect;->Bottom()I

    move-result v1

    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSRect;->Top()I

    move-result p1

    sub-int/2addr v1, p1

    .line 1337
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->getDemoFlag()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1338
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    iget v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenWidth:I

    iget v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenHeight:I

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->drawIcon(IIII)V

    :cond_0
    return-void
.end method

.method private notifyUpdateVideoDestBoxFinish(I)V
    .locals 2

    .line 1345
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-wide/32 v0, 0x10023

    invoke-virtual {p0, v0, v1, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->SetParam(JLjava/lang/Object;)I

    return-void
.end method

.method private refreshDisplayOnMain(I)V
    .locals 13

    .line 1210
    iget v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mRenderType:I

    const/4 v1, 0x3

    if-eq v1, v0, :cond_d

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1215
    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->notifyUpdateVideoDestBoxFinish(I)V

    return-void

    .line 1219
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1221
    :try_start_0
    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->isDestChanged(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 1275
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 1226
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSRect;->Right()I

    move-result v2

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v3}, Lcom/visualon/OSMPUtils/voOSRect;->Left()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1227
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v3}, Lcom/visualon/OSMPUtils/voOSRect;->Bottom()I

    move-result v3

    iget-object v4, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v4}, Lcom/visualon/OSMPUtils/voOSRect;->Top()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1229
    iput v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLastSetViewWidth:I

    .line 1230
    iput v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLastSetViewHeight:I

    .line 1231
    iget-object v4, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1232
    invoke-direct {p0, v2, v3}, Lcom/visualon/OSMPUtils/voVideoViewController;->updateVideoViewSize(II)V

    .line 1234
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x5

    const/4 v7, 0x1

    const-string v8, "@@@voVideoViewController"

    const/4 v9, 0x0

    if-eqz v5, :cond_3

    :try_start_2
    const-string v5, "#VideoDes updateViewSize w:%d h:%d index:%d lp.width:%d, lp.height:%d, zm:%d"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v11, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    iget v11, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v1

    const/4 v1, 0x4

    iget v11, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v1

    iget v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mZoomMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v6

    invoke-static {v8, v5, v10}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1236
    :cond_3
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    instance-of v5, v1, Lcom/visualon/OSMPUtils/voSurfaceView;

    if-nez v5, :cond_5

    instance-of v1, v1, Landroid/view/SurfaceView;

    if-nez v1, :cond_5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v1, v5, :cond_4

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/TextureView;

    if-eqz v1, :cond_4

    goto :goto_0

    .line 1258
    :cond_4
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "Skip setLayoutParams. Didn\'t use voSurfaceView/SurfaceView at all."

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v8, v1, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1237
    :cond_5
    :goto_0
    instance-of v1, v4, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_7

    .line 1238
    iget v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mZoomMode:I

    const/16 v5, 0xd

    if-ne v6, v1, :cond_6

    .line 1239
    move-object v1, v4

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1240
    move-object v1, v4

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v5}, Lcom/visualon/OSMPUtils/voOSRect;->Left()I

    move-result v5

    iget-object v6, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v6}, Lcom/visualon/OSMPUtils/voOSRect;->Top()I

    move-result v6

    iget v8, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenWidth:I

    iget-object v9, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v9}, Lcom/visualon/OSMPUtils/voOSRect;->Right()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenHeight:I

    iget-object v10, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v10}, Lcom/visualon/OSMPUtils/voOSRect;->Bottom()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v1, v5, v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 1242
    :cond_6
    move-object v1, v4

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 1245
    :cond_7
    instance-of v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    instance-of v1, v1, Lcom/visualon/OSMPUtils/voSurfaceView;

    if-eqz v1, :cond_8

    .line 1246
    move-object v1, v4

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v5}, Lcom/visualon/OSMPUtils/voOSRect;->Left()I

    move-result v5

    iget-object v6, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v6}, Lcom/visualon/OSMPUtils/voOSRect;->Top()I

    move-result v6

    iget-object v8, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v8}, Lcom/visualon/OSMPUtils/voOSRect;->Right()I

    move-result v8

    iget-object v9, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v9}, Lcom/visualon/OSMPUtils/voOSRect;->Bottom()I

    move-result v9

    invoke-virtual {v1, v5, v6, v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 1249
    :cond_8
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "Skip setMargins. Didn\'t use voSurfaceView/RelativeLayout."

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v8, v1, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1252
    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1253
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    if-eqz v1, :cond_a

    .line 1254
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1261
    :cond_a
    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/visualon/OSMPUtils/voVideoViewController;->licenseViewChange(II)V

    if-ne v7, v0, :cond_b

    .line 1266
    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->notifyUpdateVideoDestBoxFinish(I)V

    goto :goto_3

    .line 1269
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->lastResizeTime:J

    .line 1270
    iput-boolean v7, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mWaitingSurfaceChange:Z

    if-lez p1, :cond_c

    .line 1271
    iput p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mUpdateVideoDestIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1275
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_d
    :goto_4
    return-void
.end method

.method private removeGlobalListener()V
    .locals 2

    .line 996
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 997
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 998
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1004
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method private removeOldDetect()V
    .locals 3

    .line 980
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->layoutAdapter_:Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->canDetectLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 981
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->layoutAdapter_:Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->layoutAdapter_:Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->layoutAdapter_:Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/SurfaceView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 986
    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->m_cbSurfaceHolder:Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 987
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->m_cbSurfaceHolder:Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;->setController(Lcom/visualon/OSMPUtils/voVideoViewController;)V

    .line 988
    iput-object v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->m_cbSurfaceHolder:Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;

    goto :goto_0

    .line 989
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/TextureView;

    if-eqz v1, :cond_2

    .line 990
    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private removeOldVOObject()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 118
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 120
    invoke-static {v2}, Lcom/visualon/OSMPUtils/voVideoViewController;->isVOObject(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setFixedSizeInternal()V
    .locals 7

    .line 702
    iget v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mRenderType:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    return-void

    .line 709
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    return-void

    .line 716
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "6.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 720
    :cond_2
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "@@@voVideoViewController"

    if-eqz v0, :cond_3

    new-array v0, v2, [Ljava/lang/Object;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v4, "#VideoDes setFixedSizeInternal version:%d"

    invoke-static {v3, v4, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mWidthVideo:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mHeightVideo:I

    if-gtz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/visualon/OSMPUtils/voSurfaceView;

    if-eqz v0, :cond_9

    .line 725
    :cond_5
    iget v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenWidth:I

    iget v4, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenHeight:I

    .line 740
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-ge v5, v6, :cond_7

    iget v5, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mWidthVideo:I

    if-lez v5, :cond_7

    iget v6, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mHeightVideo:I

    if-lez v6, :cond_7

    if-lt v5, v0, :cond_6

    if-ge v6, v4, :cond_7

    :cond_6
    move v0, v5

    move v4, v6

    .line 747
    :cond_7
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const-string v1, "#VideoDes setFixedSizeInternal w:%d h:%d"

    invoke-static {v3, v1, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 748
    :cond_8
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_9
    return-void
.end method

.method private setRenderTypePrivate(I)V
    .locals 1

    .line 962
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mEventHandler:Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;

    const v0, -0xf0ffff4

    invoke-virtual {p1, v0}, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 966
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voVideoViewController;->cleanUI()V

    .line 967
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mEventHandler:Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;

    invoke-virtual {p1, v0}, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;->removeMessages(I)V

    :cond_0
    const/4 p1, 0x3

    .line 970
    iget v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mRenderType:I

    if-ne p1, v0, :cond_1

    .line 971
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voVideoViewController;->initGLView()I

    const/4 p1, 0x1

    .line 972
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->enableGLView(Z)I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 975
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->enableGLView(Z)I

    :goto_0
    return-void
.end method

.method private setViewSizeInternal(II)V
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->canDetectLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenWidth:I

    .line 385
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenHeight:I

    goto :goto_0

    .line 388
    :cond_0
    iput p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenWidth:I

    .line 389
    iput p2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenHeight:I

    .line 391
    :goto_0
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voVideoViewController;->setFixedSizeInternal()V

    const-wide/16 p1, 0x62

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    .line 392
    iget v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenWidth:I

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenHeight:I

    aput v2, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->SetParam(JLjava/lang/Object;)I

    return-void
.end method

.method private showAvailableEglConfig()V
    .locals 14

    .line 833
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 834
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 837
    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 840
    invoke-interface {v0, v1, v4, v5, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 842
    aget v4, v3, v5

    new-array v4, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 843
    aget v6, v3, v5

    invoke-interface {v0, v1, v4, v6, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 845
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Num of total configs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "@@@voVideoViewController"

    invoke-static {v8, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    .line 847
    :goto_0
    aget v7, v3, v5

    if-ge v6, v7, :cond_0

    new-array v7, v2, [I

    .line 850
    aget-object v9, v4, v6

    const/16 v10, 0x3024

    invoke-interface {v0, v1, v9, v10, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 851
    aget v9, v7, v5

    .line 852
    aget-object v10, v4, v6

    const/16 v11, 0x3023

    invoke-interface {v0, v1, v10, v11, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 853
    aget v10, v7, v5

    .line 854
    aget-object v11, v4, v6

    const/16 v12, 0x3022

    invoke-interface {v0, v1, v11, v12, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 855
    aget v11, v7, v5

    .line 856
    aget-object v12, v4, v6

    const/16 v13, 0x3021

    invoke-interface {v0, v1, v12, v13, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 857
    aget v7, v7, v5

    .line 858
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v8, v7, v9}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 860
    :cond_0
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void
.end method

.method private updateDetectedScreenSize(II)V
    .locals 2

    .line 130
    iput p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenWidth:I

    .line 131
    iput p2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenHeight:I

    .line 132
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voVideoViewController;->setFixedSizeInternal()V

    const/4 p1, 0x4

    new-array p1, p1, [I

    const/4 p2, 0x0

    aput p2, p1, p2

    const/4 v0, 0x1

    aput p2, p1, v0

    .line 133
    iget p2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenWidth:I

    const/4 v0, 0x2

    aput p2, p1, v0

    iget p2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mScreenHeight:I

    const/4 v0, 0x3

    aput p2, p1, v0

    const-wide/16 v0, 0x62

    invoke-virtual {p0, v0, v1, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->SetParam(JLjava/lang/Object;)I

    return-void
.end method

.method private updateVideoViewSize(II)V
    .locals 3

    .line 1140
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1142
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1144
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1145
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1147
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1149
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1150
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1151
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1152
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1153
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1155
    :cond_1
    iget-boolean v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbEnforceSWVideoScaling:Z

    if-eqz v0, :cond_5

    .line 1156
    iget v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mZoomMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbKeepAspectRatio:Z

    if-eqz v0, :cond_5

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p1, v0, v2

    aput p2, v0, v1

    .line 1162
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VOOSMP_PID_VIDEO_OUTPUT_RESOLUTION intArray[0] = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, v0, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , intArray[1] = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, v0, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string v1, "@@@voVideoViewController"

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1164
    :cond_3
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1165
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mViewChangeListener:Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;

    if-eqz p1, :cond_4

    const-wide/32 v1, 0x10009

    .line 1166
    invoke-interface {p1, v1, v2, v0}, Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;->onSetParam(JLjava/lang/Object;)I

    .line 1167
    :cond_4
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_5
    return-void
.end method


# virtual methods
.method public SetParam(JLjava/lang/Object;)I
    .locals 8

    long-to-int v0, p1

    const/16 v1, 0xf

    const-string v2, "on SetParam tryLock Failed id = "

    const-wide/16 v3, 0x12c

    const-string v5, "@@@voVideoViewController"

    const/4 v6, 0x0

    if-eq v0, v1, :cond_d

    const/16 v1, 0x33

    if-eq v0, v1, :cond_b

    const/16 v1, 0x66

    if-eq v0, v1, :cond_8

    const/16 v1, 0x1027

    const/4 v7, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2902

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_b

    .line 558
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mViewChangeListener:Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;

    if-eqz v0, :cond_0

    .line 560
    invoke-interface {v0, p1, p2, p3}, Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;->onSetParam(JLjava/lang/Object;)I

    .line 561
    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 564
    :cond_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p3

    if-eqz p3, :cond_10

    .line 565
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v5, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 568
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 554
    invoke-virtual {p0, p1, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->withSurfaceView(Landroid/view/View;Landroid/view/SurfaceHolder;)Lcom/visualon/OSMPUtils/voVideoViewController;

    goto/16 :goto_1

    .line 524
    :cond_3
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 526
    iput-boolean v7, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbKeepAspectRatio:Z

    goto :goto_0

    :cond_4
    if-nez v0, :cond_8

    .line 528
    iput-boolean v6, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbKeepAspectRatio:Z

    goto :goto_0

    .line 488
    :cond_5
    iput-boolean v6, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mWaitingSurfaceChange:Z

    .line 489
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p3

    if-eqz p3, :cond_6

    new-array p3, v7, [Ljava/lang/Object;

    iget v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mUpdateVideoDestIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v6

    const-string v0, "#VideoDes VOOSMP_PID_SURFACE_CHANGED :%d"

    invoke-static {v5, v0, p3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    :cond_6
    :try_start_1
    iget-object p3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v3, v4, v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 492
    iget p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mUpdateVideoDestIndex:I

    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->notifyUpdateVideoDestBoxFinish(I)V

    .line 496
    iput v6, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mUpdateVideoDestIndex:I

    .line 497
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 500
    :cond_7
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p3

    if-eqz p3, :cond_10

    .line 501
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v5, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    .line 504
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 532
    :cond_8
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 533
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mViewChangeListener:Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;

    if-eqz v0, :cond_9

    .line 534
    invoke-interface {v0, p1, p2, p3}, Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;->onSetParam(JLjava/lang/Object;)I

    .line 535
    :cond_9
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 538
    :cond_a
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p3

    if-eqz p3, :cond_10

    .line 539
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v5, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 542
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 547
    :cond_b
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    if-eqz p1, :cond_c

    .line 548
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 551
    :cond_c
    invoke-direct {p0, v6}, Lcom/visualon/OSMPUtils/voVideoViewController;->refreshDisplayOnMain(I)V

    goto :goto_1

    .line 508
    :cond_d
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mZoomMode:I

    .line 510
    :try_start_3
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 511
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mViewChangeListener:Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;

    if-eqz v0, :cond_e

    .line 512
    invoke-interface {v0, p1, p2, p3}, Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;->onSetParam(JLjava/lang/Object;)I

    .line 513
    :cond_e
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 516
    :cond_f
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p3

    if-eqz p3, :cond_10

    .line 517
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v5, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 520
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_10
    :goto_1
    return v6
.end method

.method public addSecondTextureView()V
    .locals 2

    .line 1091
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mEventHandler:Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;

    if-eqz v0, :cond_0

    const v1, -0xf0ffff8

    .line 1092
    invoke-virtual {v0, v1}, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 239
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glWrapper:Lcom/visualon/OSMPRender/voGLRenderWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voGLRenderWrapper;->destroy()V

    .line 241
    iput-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glWrapper:Lcom/visualon/OSMPRender/voGLRenderWrapper;

    .line 243
    :cond_0
    iput-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 246
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voVideoViewController;->removeGlobalListener()V

    .line 248
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->m_cbSurfaceHolder:Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/view/SurfaceView;

    if-eqz v2, :cond_1

    .line 250
    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->m_cbSurfaceHolder:Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->m_cbSurfaceHolder:Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;->setController(Lcom/visualon/OSMPUtils/voVideoViewController;)V

    .line 252
    iput-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->m_cbSurfaceHolder:Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->layoutAdapter_:Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;

    if-eqz v0, :cond_3

    .line 255
    invoke-virtual {v0, v1}, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->setController(Lcom/visualon/OSMPUtils/voVideoViewController;)V

    .line 256
    iput-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->layoutAdapter_:Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;

    .line 258
    :cond_3
    iput-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mViewChangeListener:Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;

    .line 260
    iput-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mEventHandler:Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;

    .line 262
    iput-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    .line 263
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public enableGLView(Z)I
    .locals 4

    .line 887
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    if-nez v0, :cond_0

    const p1, -0x7ffffff9

    return p1

    .line 891
    :cond_0
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 893
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt p1, v2, :cond_1

    .line 894
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-boolean v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->isSecure:Z

    invoke-virtual {p1, v2}, Landroid/opengl/GLSurfaceView;->setSecure(Z)V

    .line 897
    :cond_1
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 898
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    :cond_2
    if-nez v0, :cond_3

    .line 901
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 902
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 903
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 904
    iget-object v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 905
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->updateGLViewStatus(Landroid/view/View;)Z

    .line 909
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 910
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 911
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 912
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mTranslationX:F

    .line 913
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mTranslationY:F

    .line 917
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 918
    iput-boolean v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbViewReposition:Z

    goto/16 :goto_3

    .line 920
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group is null: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "true"

    const-string v3, "false"

    if-nez v0, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_4
    move-object v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mView is null "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    move-object v0, v2

    goto :goto_1

    :cond_5
    move-object v0, v3

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mView parent is null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    .line 922
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move-object v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "@@@voVideoViewController"

    .line 920
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 926
    :cond_7
    iget-boolean p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbCardBoardEnable:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz p1, :cond_8

    const/4 v0, 0x4

    .line 927
    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 929
    :cond_8
    iget-boolean p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbViewReposition:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 930
    iget v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mTranslationX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 931
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    iget v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mTranslationY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 932
    iput-boolean v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbViewReposition:Z

    :cond_9
    :goto_3
    return v1
.end method

.method public handleExternalMessage(Landroid/os/Message;)V
    .locals 8

    .line 615
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_6

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 645
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->updateLicenseDisplay(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 620
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 621
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-wide/32 v1, 0x11011

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v0, v6, :cond_3

    .line 622
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    instance-of v7, v0, Landroid/view/TextureView;

    if-eqz v7, :cond_2

    .line 623
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 625
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 626
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mViewChangeListener:Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;

    if-eqz v0, :cond_5

    .line 627
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-interface {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;->onSetParam(JLjava/lang/Object;)I

    goto :goto_0

    .line 629
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_5

    .line 630
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 631
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    instance-of v4, v0, Landroid/view/TextureView;

    if-eqz v4, :cond_4

    .line 632
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 633
    :cond_4
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mViewChangeListener:Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;

    if-eqz v0, :cond_5

    .line 634
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    invoke-interface {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;->onSetParam(JLjava/lang/Object;)I

    .line 637
    :cond_5
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 638
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 640
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v6

    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSecondView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v5

    const-string p1, "@@@voVideoViewController"

    const-string v1, "VOOSMP_CB_SURFACE_EXCHANGED, param1 = %d, First Surface alpha value is %f, Second Surface alpha value is %f."

    .line 638
    invoke-static {p1, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 617
    :cond_6
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voVideoViewController;->setFixedSizeInternal()V

    :cond_7
    :goto_1
    return-void
.end method

.method public onGLInitFinish()V
    .locals 5

    .line 865
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 866
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mViewChangeListener:Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;

    if-eqz v0, :cond_0

    const-wide/32 v1, 0x11008

    .line 867
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glWrapper:Lcom/visualon/OSMPRender/voGLRenderWrapper;

    invoke-virtual {v3}, Lcom/visualon/OSMPRender/voGLRenderWrapper;->getNativeWrapper()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;->onSetParam(JLjava/lang/Object;)I

    .line 868
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mViewChangeListener:Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;

    const-wide/32 v1, 0x11011

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-interface {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;->onSetParam(JLjava/lang/Object;)I

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 762
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    const/4 v0, 0x0

    .line 763
    iput v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mWidthVideo:I

    .line 764
    iput v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mHeightVideo:I

    const/4 v0, 0x1

    .line 765
    iput v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mZoomMode:I

    .line 766
    iput-boolean v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbKeepAspectRatio:Z

    .line 767
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voVideoViewController;->stop()V

    return-void
.end method

.method public setCardBoardEnable(Z)V
    .locals 0

    .line 1363
    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbCardBoardEnable:Z

    return-void
.end method

.method public setCubemapEnable(Z)V
    .locals 1

    .line 1356
    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbCubeEnable:Z

    .line 1357
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glWrapper:Lcom/visualon/OSMPRender/voGLRenderWrapper;

    if-eqz v0, :cond_0

    .line 1358
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPRender/voGLRenderWrapper;->setCube(Z)V

    :cond_0
    return-void
.end method

.method public setRenderType(I)V
    .locals 5

    .line 941
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    .line 942
    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 943
    :cond_0
    iput p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mRenderType:I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 944
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "@@@voVideoViewController"

    const-string v4, "setRenderType: %d \n"

    invoke-static {v2, v4, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 945
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v1, v4, :cond_1

    .line 946
    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->setRenderTypePrivate(I)V

    goto :goto_0

    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 948
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, ": mEventHandler.obtainMessag %d \n"

    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 949
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mEventHandler:Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;

    const v1, -0xf0ffff7

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 950
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mEventHandler:Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 953
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 954
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mViewChangeListener:Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x16

    .line 956
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;->onSetParam(JLjava/lang/Object;)I

    .line 958
    :cond_2
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public setSecure(Z)V
    .locals 0

    .line 1367
    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->isSecure:Z

    return-void
.end method

.method public setSphericalEnable(Z)V
    .locals 1

    .line 1349
    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbSphericalEnable:Z

    .line 1350
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glWrapper:Lcom/visualon/OSMPRender/voGLRenderWrapper;

    if-eqz v0, :cond_0

    .line 1351
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPRender/voGLRenderWrapper;->setSpherical(Z)V

    :cond_0
    return-void
.end method

.method public setSphericalVideoView(FFF)I
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glWrapper:Lcom/visualon/OSMPRender/voGLRenderWrapper;

    if-eqz v0, :cond_0

    .line 1108
    invoke-virtual {v0, p1, p2, p3}, Lcom/visualon/OSMPRender/voGLRenderWrapper;->setSphericalVideoView(FFF)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setSphericalVideoView(Lcom/visualon/OSMPSensor/voSphericalVideoView;)I
    .locals 1

    .line 1115
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->SphericalView_:Lcom/visualon/OSMPSensor/voSphericalVideoView;

    .line 1116
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glWrapper:Lcom/visualon/OSMPRender/voGLRenderWrapper;

    if-eqz v0, :cond_0

    .line 1117
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPRender/voGLRenderWrapper;->setSphericalVideoView(Lcom/visualon/OSMPSensor/voSphericalVideoView;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setVideoDestBox(Lcom/visualon/OSMPUtils/voOSRect;I)Z
    .locals 9

    .line 1173
    iget v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mRenderType:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    .line 1174
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    .line 1175
    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->licenseViewUpdate(Lcom/visualon/OSMPUtils/voOSRect;)V

    return v2

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1181
    :try_start_0
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSRect;->Right()I

    move-result v0

    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSRect;->Left()I

    move-result v3

    sub-int/2addr v0, v3

    .line 1182
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSRect;->Bottom()I

    move-result v3

    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSRect;->Top()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1184
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const-string v4, "@@@voVideoViewController"

    const-string v6, "#VideoDes setVideoDestBox :%d w:%d, h:%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v2

    const/4 v7, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v7

    invoke-static {v4, v6, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz v0, :cond_5

    if-nez v3, :cond_2

    goto :goto_0

    .line 1190
    :cond_2
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    .line 1191
    invoke-direct {p0, p2}, Lcom/visualon/OSMPUtils/voVideoViewController;->isDestChanged(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    .line 1204
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .line 1195
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 1196
    invoke-direct {p0, p2}, Lcom/visualon/OSMPUtils/voVideoViewController;->refreshDisplayOnMain(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1204
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .line 1200
    :cond_4
    :try_start_2
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mEventHandler:Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;

    const v0, -0xf0ffff5

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, p2, v1, v3}, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1201
    iget-object p2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mEventHandler:Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;

    invoke-virtual {p2, p1}, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1204
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v5

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setVideoSize(II)V
    .locals 1

    .line 1096
    iput p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mWidthVideo:I

    .line 1097
    iput p2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mHeightVideo:I

    .line 1098
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    iget v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mWidthVideo:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x1

    iget v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mHeightVideo:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "@@@voVideoViewController"

    const-string v0, "#VideoDes setVideoSize w:%d h:%d"

    invoke-static {p2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setViewChangeListener(Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 354
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mViewChangeListener:Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;

    .line 355
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public setViewSize(II)V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->canDetectLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "@@@voVideoViewController"

    const-string p2, "#VideoDes setViewSize igore w:%d h:%d"

    invoke-static {p1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 371
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 373
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPUtils/voVideoViewController;->setViewSizeInternal(II)V

    return-void

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mEventHandler:Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;

    const v1, -0xf0ffff3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setZoomMode(I)V
    .locals 0

    .line 359
    iput p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mZoomMode:I

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 310
    iput v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mUpdateVideoDestIndex:I

    .line 311
    iput-boolean v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mWaitingSurfaceChange:Z

    .line 312
    iput-boolean v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbSphericalEnable:Z

    .line 313
    iput-boolean v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbCubeEnable:Z

    .line 314
    iput-boolean v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbCardBoardEnable:Z

    .line 316
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voVideoViewController;->cleanUI()V

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mEventHandler:Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;

    const v1, -0xf0ffff4

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public updateGLViewStatus(Landroid/view/View;)Z
    .locals 1

    .line 875
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 880
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->setTranslationX(F)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateLicenseDisplay(ILjava/lang/String;)V
    .locals 8

    .line 654
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    const/4 v1, 0x0

    const-string v2, "@@@voVideoViewController"

    if-nez v0, :cond_1

    .line 658
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 659
    new-instance v3, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    iget-object v4, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    .line 660
    invoke-virtual {v3, v0}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 662
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "Create license display view"

    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 664
    :cond_1
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 666
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 667
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 669
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 673
    :cond_3
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    aput-object p2, v0, v3

    const-string v4, "License display type %d value %s"

    invoke-static {v2, v4, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    :cond_4
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 675
    iget-object v4, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 676
    iget-object v5, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 678
    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v6, :cond_5

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :cond_5
    move v6, v4

    .line 679
    :goto_1
    iget v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v7, :cond_6

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    :cond_6
    move v0, v5

    .line 680
    :goto_2
    iget-object v7, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    if-eqz v7, :cond_7

    .line 682
    invoke-interface {v7}, Lcom/visualon/OSMPUtils/voOSRect;->Right()I

    move-result v0

    iget-object v6, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v6}, Lcom/visualon/OSMPUtils/voOSRect;->Left()I

    move-result v6

    sub-int v6, v0, v6

    .line 683
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRect;->Bottom()I

    move-result v0

    iget-object v7, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mDestRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v7}, Lcom/visualon/OSMPUtils/voOSRect;->Top()I

    move-result v7

    sub-int/2addr v0, v7

    :cond_7
    if-eqz p1, :cond_9

    if-eq p1, v3, :cond_8

    .line 696
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p2

    if-eqz p2, :cond_a

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "Unsupported license display option %d"

    invoke-static {v2, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 692
    :cond_8
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    invoke-virtual {p1, v4, v5, v6, v0}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->drawIcon(IIII)V

    .line 693
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    invoke-virtual {p1, v3}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->setDemoFlag(Z)V

    goto :goto_3

    .line 689
    :cond_9
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    invoke-virtual {p1, p2, v6, v0}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->drawString(Ljava/lang/String;II)V

    :cond_a
    :goto_3
    return-void
.end method

.method public withContext(Landroid/content/Context;)Lcom/visualon/OSMPUtils/voVideoViewController;
    .locals 1

    .line 753
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 754
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->layoutAdapter_:Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;

    if-nez p1, :cond_0

    .line 755
    new-instance p1, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;-><init>(Lcom/visualon/OSMPUtils/voVideoViewController;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->layoutAdapter_:Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;

    .line 756
    invoke-virtual {p1, p0}, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->setController(Lcom/visualon/OSMPUtils/voVideoViewController;)V

    :cond_0
    return-object p0
.end method

.method public withEnforceSWVideoScaling(Z)Lcom/visualon/OSMPUtils/voVideoViewController;
    .locals 0

    .line 1102
    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mbEnforceSWVideoScaling:Z

    return-object p0
.end method

.method public withSurfaceView(Landroid/view/View;Landroid/view/SurfaceHolder;)Lcom/visualon/OSMPUtils/voVideoViewController;
    .locals 6

    .line 1016
    iget v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mRenderType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 1018
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->updateGLViewStatus(Landroid/view/View;)Z

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    const/4 v2, 0x0

    if-ne v0, p1, :cond_1

    .line 1022
    invoke-direct {p0, v2, v2}, Lcom/visualon/OSMPUtils/voVideoViewController;->setViewSizeInternal(II)V

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    .line 1027
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voVideoViewController;->removeOldDetect()V

    .line 1029
    :cond_2
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voVideoViewController;->removeGlobalListener()V

    .line 1031
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1032
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    .line 1033
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voVideoViewController;->removeOldVOObject()V

    .line 1034
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1037
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->canDetectLayout(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1038
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    .line 1039
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1040
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->layoutAdapter_:Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;

    invoke-virtual {v0, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1046
    :cond_3
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    instance-of p1, p1, Landroid/view/SurfaceView;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1047
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->m_cbSurfaceHolder:Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;

    if-nez p1, :cond_4

    .line 1048
    new-instance p1, Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;

    invoke-direct {p1, p0, v0}, Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;-><init>(Lcom/visualon/OSMPUtils/voVideoViewController;Lcom/visualon/OSMPUtils/voVideoViewController$1;)V

    iput-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->m_cbSurfaceHolder:Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;

    .line 1049
    invoke-virtual {p1, p0}, Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;->setController(Lcom/visualon/OSMPUtils/voVideoViewController;)V

    .line 1051
    :cond_4
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    check-cast p1, Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->m_cbSurfaceHolder:Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0

    .line 1052
    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt p1, v3, :cond_8

    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    instance-of p1, p1, Landroid/view/TextureView;

    if-eqz p1, :cond_8

    .line 1053
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    const-string v3, "@@@voVideoViewController"

    if-eqz p1, :cond_6

    new-array p1, v2, [Ljava/lang/Object;

    const-string v4, "setSurfaceTextureListener"

    invoke-static {v3, v4, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1054
    :cond_6
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    check-cast p1, Landroid/view/TextureView;

    .line 1055
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1058
    instance-of v5, v4, Lcom/visualon/OSMPUtils/voVideoViewController$FirstSurfaceTextureListener;

    if-nez v5, :cond_7

    .line 1059
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mAppSurfaceTextureListener:Ljava/lang/ref/WeakReference;

    .line 1060
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAppSurfaceTextureListener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mAppSurfaceTextureListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1062
    :cond_7
    new-instance v3, Lcom/visualon/OSMPUtils/voVideoViewController$FirstSurfaceTextureListener;

    invoke-direct {v3, p0, v0}, Lcom/visualon/OSMPUtils/voVideoViewController$FirstSurfaceTextureListener;-><init>(Lcom/visualon/OSMPUtils/voVideoViewController;Lcom/visualon/OSMPUtils/voVideoViewController$1;)V

    invoke-virtual {p1, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1067
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 1068
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_9

    .line 1069
    new-instance v0, Lcom/visualon/OSMPUtils/voVideoViewController$voGlobalLayoutListener;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPUtils/voVideoViewController$voGlobalLayoutListener;-><init>(Lcom/visualon/OSMPUtils/voVideoViewController;)V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1070
    :cond_9
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 p1, 0x1

    .line 1071
    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->useMeasure:Z

    .line 1074
    :cond_a
    iput-object p2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1076
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    if-eqz p1, :cond_b

    .line 1077
    iget p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mRenderType:I

    invoke-virtual {p0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->setRenderType(I)V

    .line 1079
    :cond_b
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mViewChangeListener:Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;

    if-eqz p1, :cond_c

    .line 1081
    iget p2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mRenderType:I

    if-eq v1, p2, :cond_c

    const-wide/32 v0, 0x11011

    .line 1082
    iget-object p2, p0, Lcom/visualon/OSMPUtils/voVideoViewController;->mView:Landroid/view/View;

    invoke-interface {p1, v0, v1, p2}, Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;->onSetParam(JLjava/lang/Object;)I

    .line 1086
    :cond_c
    invoke-direct {p0, v2, v2}, Lcom/visualon/OSMPUtils/voVideoViewController;->setViewSizeInternal(II)V

    return-object p0
.end method
