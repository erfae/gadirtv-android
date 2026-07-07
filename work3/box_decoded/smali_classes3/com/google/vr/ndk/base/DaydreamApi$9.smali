.class Lcom/google/vr/ndk/base/DaydreamApi$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/ndk/base/DaydreamApi;->setInhibitSystemButtons(Landroid/content/ComponentName;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/DaydreamApi;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$shouldInhibit:Z


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/DaydreamApi;ZLandroid/content/ComponentName;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamApi$9;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    iput-boolean p2, p0, Lcom/google/vr/ndk/base/DaydreamApi$9;->val$shouldInhibit:Z

    iput-object p3, p0, Lcom/google/vr/ndk/base/DaydreamApi$9;->val$componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "DaydreamApi"

    .line 2
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "OPTION_INHIBIT_SYSTEM_BUTTONS"

    .line 3
    iget-boolean v3, p0, Lcom/google/vr/ndk/base/DaydreamApi$9;->val$shouldInhibit:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-object v2, p0, Lcom/google/vr/ndk/base/DaydreamApi$9;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    invoke-static {v2}, Lcom/google/vr/ndk/base/DaydreamApi;->access$000(Lcom/google/vr/ndk/base/DaydreamApi;)Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    move-result-object v2

    iget-object v3, p0, Lcom/google/vr/ndk/base/DaydreamApi$9;->val$componentName:Landroid/content/ComponentName;

    invoke-interface {v2, v3, v1}, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;->setClientOptions(Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Failed to set client options to inhibit system button."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "RemoteException while setting client options."

    .line 8
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
