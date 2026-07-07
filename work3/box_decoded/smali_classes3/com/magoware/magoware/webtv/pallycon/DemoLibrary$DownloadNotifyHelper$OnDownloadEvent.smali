.class public interface abstract Lcom/magoware/magoware/webtv/pallycon/DemoLibrary$DownloadNotifyHelper$OnDownloadEvent;
.super Ljava/lang/Object;
.source "DemoLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/pallycon/DemoLibrary$DownloadNotifyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDownloadEvent"
.end annotation


# virtual methods
.method public abstract onDownloadComplete()V
.end method

.method public abstract onProgress(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percent"
        }
    .end annotation
.end method
