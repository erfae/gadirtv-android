.class public Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;
.super Ljava/lang/Object;
.source "GlideBackgroundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$UpdateBackgroundTask;,
        Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$ResourceHandler;
    }
.end annotation


# static fields
.field private static final BACKGROUND_UPDATE_DELAY:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "GlideBackgroundManager"

.field public static instance:Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;


# instance fields
.field private activity:Landroid/app/Activity;

.field private mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

.field private mBackgroundTimer:Ljava/util/Timer;

.field private mBackgroundURI:Ljava/lang/String;

.field private mGlideDrawableSimpleTarget:Lcom/bumptech/glide/request/target/SimpleTarget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/target/SimpleTarget<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private resourceHandler:Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$ResourceHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->mHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$1;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->mGlideDrawableSimpleTarget:Lcom/bumptech/glide/request/target/SimpleTarget;

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 56
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->activity:Landroid/app/Activity;

    .line 57
    invoke-static {p1}, Landroidx/leanback/app/BackgroundManager;->getInstance(Landroid/app/Activity;)Landroidx/leanback/app/BackgroundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/leanback/app/BackgroundManager;->attach(Landroid/view/Window;)V

    return-void
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->mBackgroundURI:Ljava/lang/String;

    return-object p0
.end method

.method private cancelTimer()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->mBackgroundTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 64
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 65
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 66
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 72
    :cond_2
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 78
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 79
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private startBackgroundTimer()V
    .locals 4

    .line 124
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->cancelTimer()V

    .line 125
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->mBackgroundTimer:Ljava/util/Timer;

    .line 127
    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$UpdateBackgroundTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$UpdateBackgroundTask;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public cancelBackgroundChange()V
    .locals 1

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->mBackgroundURI:Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->cancelTimer()V

    return-void
.end method

.method public loadImage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageUrl"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->mBackgroundURI:Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->startBackgroundTimer()V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Landroidx/leanback/app/BackgroundManager;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/app/BackgroundManager;->attach(Landroid/view/Window;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/BackgroundManager;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->resourceHandler:Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$ResourceHandler;

    if-eqz v0, :cond_1

    .line 96
    invoke-static {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->resourceHandler:Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$ResourceHandler;

    invoke-interface {v1, p1, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$ResourceHandler;->onResourceRetrieved(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public setResourceHandler(Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$ResourceHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->resourceHandler:Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$ResourceHandler;

    return-void
.end method

.method public updateBackground()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 135
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->mBackgroundURI:Ljava/lang/String;

    .line 136
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 137
    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->mGlideDrawableSimpleTarget:Lcom/bumptech/glide/request/target/SimpleTarget;

    .line 138
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :cond_0
    return-void
.end method
