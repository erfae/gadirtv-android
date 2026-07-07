.class Lcom/verimatrix/vdc/Foreground$1;
.super Ljava/lang/Object;
.source "Foreground.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/Foreground;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/Foreground;


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/Foreground;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/verimatrix/vdc/Foreground$1;->this$0:Lcom/verimatrix/vdc/Foreground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/verimatrix/vdc/Foreground$1;->this$0:Lcom/verimatrix/vdc/Foreground;

    invoke-static {v0}, Lcom/verimatrix/vdc/Foreground;->access$000(Lcom/verimatrix/vdc/Foreground;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/verimatrix/vdc/Foreground$1;->this$0:Lcom/verimatrix/vdc/Foreground;

    invoke-static {v0}, Lcom/verimatrix/vdc/Foreground;->access$100(Lcom/verimatrix/vdc/Foreground;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/verimatrix/vdc/Foreground$1;->this$0:Lcom/verimatrix/vdc/Foreground;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/verimatrix/vdc/Foreground;->access$002(Lcom/verimatrix/vdc/Foreground;Z)Z

    .line 162
    invoke-static {}, Lcom/verimatrix/vdc/Foreground;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "went background"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/verimatrix/vdc/Foreground$1;->this$0:Lcom/verimatrix/vdc/Foreground;

    invoke-static {v0}, Lcom/verimatrix/vdc/Foreground;->access$300(Lcom/verimatrix/vdc/Foreground;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verimatrix/vdc/Foreground$Listener;

    .line 165
    :try_start_0
    invoke-interface {v1}, Lcom/verimatrix/vdc/Foreground$Listener;->onBecameBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 167
    invoke-static {}, Lcom/verimatrix/vdc/Foreground;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Listener threw exception!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {}, Lcom/verimatrix/vdc/Foreground;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "still foreground"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
