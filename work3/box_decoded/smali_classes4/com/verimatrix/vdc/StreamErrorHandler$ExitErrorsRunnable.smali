.class Lcom/verimatrix/vdc/StreamErrorHandler$ExitErrorsRunnable;
.super Ljava/lang/Object;
.source "StreamErrorHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/StreamErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExitErrorsRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/StreamErrorHandler;


# direct methods
.method private constructor <init>(Lcom/verimatrix/vdc/StreamErrorHandler;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$ExitErrorsRunnable;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/verimatrix/vdc/StreamErrorHandler;Lcom/verimatrix/vdc/StreamErrorHandler$1;)V
    .locals 0

    .line 332
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/StreamErrorHandler$ExitErrorsRunnable;-><init>(Lcom/verimatrix/vdc/StreamErrorHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 335
    invoke-static {}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExitErrors: fired (stopErrorPersist)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler$ExitErrorsRunnable;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/StreamErrorHandler;->stopErrorPersist()V

    return-void
.end method
