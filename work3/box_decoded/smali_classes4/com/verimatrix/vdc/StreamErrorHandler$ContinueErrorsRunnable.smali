.class Lcom/verimatrix/vdc/StreamErrorHandler$ContinueErrorsRunnable;
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
    name = "ContinueErrorsRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/StreamErrorHandler;


# direct methods
.method private constructor <init>(Lcom/verimatrix/vdc/StreamErrorHandler;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$ContinueErrorsRunnable;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/verimatrix/vdc/StreamErrorHandler;Lcom/verimatrix/vdc/StreamErrorHandler$1;)V
    .locals 0

    .line 324
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/StreamErrorHandler$ContinueErrorsRunnable;-><init>(Lcom/verimatrix/vdc/StreamErrorHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 327
    invoke-static {}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinueErrors: fired (continueErrorPersist)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler$ContinueErrorsRunnable;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {v0}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$800(Lcom/verimatrix/vdc/StreamErrorHandler;)V

    return-void
.end method
