.class Lcom/magoware/magoware/webtv/pallycon/DemoLibrary$DownloadNotifyHelper;
.super Ljava/lang/Object;
.source "DemoLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/pallycon/DemoLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadNotifyHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/pallycon/DemoLibrary$DownloadNotifyHelper$OnDownloadEvent;
    }
.end annotation


# instance fields
.field mDownloadCompleteEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/pallycon/DemoLibrary$DownloadNotifyHelper$OnDownloadEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/DemoLibrary$DownloadNotifyHelper;->mDownloadCompleteEvent:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method fireOnDownloadCompleted()V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/DemoLibrary$DownloadNotifyHelper;->mDownloadCompleteEvent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/pallycon/DemoLibrary$DownloadNotifyHelper$OnDownloadEvent;

    .line 378
    invoke-interface {v1}, Lcom/magoware/magoware/webtv/pallycon/DemoLibrary$DownloadNotifyHelper$OnDownloadEvent;->onDownloadComplete()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method fireOnProgress(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percent"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/DemoLibrary$DownloadNotifyHelper;->mDownloadCompleteEvent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/pallycon/DemoLibrary$DownloadNotifyHelper$OnDownloadEvent;

    .line 384
    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/pallycon/DemoLibrary$DownloadNotifyHelper$OnDownloadEvent;->onProgress(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method registerDownloadCompleteEvent(Lcom/magoware/magoware/webtv/pallycon/DemoLibrary$DownloadNotifyHelper$OnDownloadEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/DemoLibrary$DownloadNotifyHelper;->mDownloadCompleteEvent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method ungisterDownloadCompleteEvent(Lcom/magoware/magoware/webtv/pallycon/DemoLibrary$DownloadNotifyHelper$OnDownloadEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/DemoLibrary$DownloadNotifyHelper;->mDownloadCompleteEvent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
