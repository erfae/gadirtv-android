.class Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/GvrUiLayoutImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseButtonListenerWrapper"
.end annotation


# instance fields
.field private activeCloseButtonListener:Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;

.field private final defaultCloseButtonListener:Ljava/lang/Runnable;

.field private invokingCloseButton:Z

.field private final passiveCloseButtonListener:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->invokingCloseButton:Z

    .line 3
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->passiveCloseButtonListener:Ljava/lang/Runnable;

    .line 5
    invoke-static {p1, p3}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->access$000(Landroid/content/Context;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->defaultCloseButtonListener:Ljava/lang/Runnable;

    .line 6
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->activeCloseButtonListener:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 8
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->invokingCloseButton:Z

    const-string v1, "GvrUiLayoutImpl"

    if-eqz v0, :cond_1

    const-string v0, "GVR close behavior invoked recursively."

    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "GVR close behavior invoked."

    .line 14
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->invokingCloseButton:Z

    const/4 v0, 0x0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->passiveCloseButtonListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 17
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->activeCloseButtonListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 19
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_3
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->invokingCloseButton:Z

    return-void

    :catchall_0
    move-exception v1

    .line 22
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->invokingCloseButton:Z

    throw v1
.end method

.method public setClientCloseButtonListener(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->defaultCloseButtonListener:Ljava/lang/Runnable;

    :goto_0
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->activeCloseButtonListener:Ljava/lang/Runnable;

    return-void
.end method
