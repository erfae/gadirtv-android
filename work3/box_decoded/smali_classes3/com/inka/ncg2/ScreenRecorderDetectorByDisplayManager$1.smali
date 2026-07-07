.class final Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 4

    .line 144
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayAdded() : displayId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetector;->IsScreenRecorderOn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayAdded() ++ : displayId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->checkScreenRecorderRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-static {}, Lcom/inka/ncg2/i;->a()Lcom/inka/ncg2/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inka/ncg2/i;->getLocalWebServer()Lcom/inka/ncg2/Ncg2LocalWebServer;

    move-result-object v0

    check-cast v0, Lcom/inka/ncg2/l;

    const/16 v1, 0x3ed

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen Recorder app is running : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg2/l;->a(ILjava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Lcom/inka/ncg2/l;->clearPlaybackUrls()V

    .line 158
    :cond_1
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$100()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 160
    invoke-virtual {p1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/Display;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_2
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Display object is null."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Unknown"

    .line 165
    invoke-static {p1}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    :goto_0
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onDisplayAdded() --"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    .line 125
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayChanged() ++ : displayId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$100()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDisplayChanged] mDisplayName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDisplayChanged] display.toString() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/Display;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Display object is null."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Unknown"

    .line 136
    invoke-static {p1}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    :goto_0
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onDisplayChanged() --"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 4

    .line 172
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayRemoved() : displayId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetector;->IsScreenRecorderOn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayRemoved() ++ : displayId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->checkScreenRecorderRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-static {}, Lcom/inka/ncg2/i;->a()Lcom/inka/ncg2/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inka/ncg2/i;->getLocalWebServer()Lcom/inka/ncg2/Ncg2LocalWebServer;

    move-result-object v0

    check-cast v0, Lcom/inka/ncg2/l;

    const/16 v1, 0x3ed

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen Recorder app is running : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/inka/ncg2/l;->a(ILjava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Lcom/inka/ncg2/l;->clearPlaybackUrls()V

    .line 185
    :cond_1
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByDisplayManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onDisplayRemoved() --"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
