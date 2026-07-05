.class Lorg/androidannotations/api/ViewServer$NoopViewServer;
.super Lorg/androidannotations/api/ViewServer;
.source "ViewServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/androidannotations/api/ViewServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoopViewServer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/androidannotations/api/ViewServer;-><init>(Lorg/androidannotations/api/ViewServer$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/androidannotations/api/ViewServer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/androidannotations/api/ViewServer$NoopViewServer;-><init>()V

    return-void
.end method


# virtual methods
.method public addWindow(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public addWindow(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public isRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeWindow(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public removeWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method public setFocusedWindow(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public setFocusedWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public start()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public stop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
