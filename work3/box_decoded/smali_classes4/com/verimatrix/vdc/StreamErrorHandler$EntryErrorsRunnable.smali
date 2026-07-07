.class Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;
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
    name = "EntryErrorsRunnable"
.end annotation


# instance fields
.field startPersist:Z

.field final synthetic this$0:Lcom/verimatrix/vdc/StreamErrorHandler;


# direct methods
.method private constructor <init>(Lcom/verimatrix/vdc/StreamErrorHandler;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 304
    iput-boolean p1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;->startPersist:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/verimatrix/vdc/StreamErrorHandler;Lcom/verimatrix/vdc/StreamErrorHandler$1;)V
    .locals 0

    .line 303
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;-><init>(Lcom/verimatrix/vdc/StreamErrorHandler;)V

    return-void
.end method


# virtual methods
.method isPersistModeRequested()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;->startPersist:Z

    return v0
.end method

.method requestPersistMode()V
    .locals 2

    .line 315
    invoke-static {}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EntryErrors: persist mode requested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 316
    iput-boolean v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;->startPersist:Z

    return-void
.end method

.method public run()V
    .locals 3

    .line 308
    invoke-static {}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EntryErrors: fired (startErrorPersist or exit)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$602(Lcom/verimatrix/vdc/StreamErrorHandler;Z)Z

    .line 310
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    iget-boolean v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;->startPersist:Z

    invoke-static {v0, v2}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$700(Lcom/verimatrix/vdc/StreamErrorHandler;Z)V

    .line 311
    iput-boolean v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;->startPersist:Z

    return-void
.end method
