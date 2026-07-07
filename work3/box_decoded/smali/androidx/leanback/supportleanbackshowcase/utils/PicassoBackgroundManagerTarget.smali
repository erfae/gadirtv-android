.class public Landroidx/leanback/supportleanbackshowcase/utils/PicassoBackgroundManagerTarget;
.super Ljava/lang/Object;
.source "PicassoBackgroundManagerTarget.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# instance fields
.field private mBackgroundManager:Landroidx/leanback/app/BackgroundManager;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/BackgroundManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/utils/PicassoBackgroundManagerTarget;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    check-cast p1, Landroidx/leanback/supportleanbackshowcase/utils/PicassoBackgroundManagerTarget;

    .line 54
    iget-object v2, p0, Landroidx/leanback/supportleanbackshowcase/utils/PicassoBackgroundManagerTarget;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    iget-object p1, p1, Landroidx/leanback/supportleanbackshowcase/utils/PicassoBackgroundManagerTarget;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/utils/PicassoBackgroundManagerTarget;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "@@PicassoBackground"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/utils/PicassoBackgroundManagerTarget;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/BackgroundManager;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 0

    .line 36
    iget-object p2, p0, Landroidx/leanback/supportleanbackshowcase/utils/PicassoBackgroundManagerTarget;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    invoke-virtual {p2, p1}, Landroidx/leanback/app/BackgroundManager;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
