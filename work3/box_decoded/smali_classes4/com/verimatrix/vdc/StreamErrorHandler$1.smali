.class Lcom/verimatrix/vdc/StreamErrorHandler$1;
.super Ljava/lang/Object;
.source "StreamErrorHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/StreamErrorHandler;->playbackError(ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

.field final synthetic val$offset:J

.field final synthetic val$playbackErrorType:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

.field final synthetic val$reason:I

.field final synthetic val$streamType:Lcom/verimatrix/vdc/Monitor$StreamType;


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/StreamErrorHandler;ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;J)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$1;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    iput p2, p0, Lcom/verimatrix/vdc/StreamErrorHandler$1;->val$reason:I

    iput-object p3, p0, Lcom/verimatrix/vdc/StreamErrorHandler$1;->val$streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    iput-object p4, p0, Lcom/verimatrix/vdc/StreamErrorHandler$1;->val$playbackErrorType:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    iput-wide p5, p0, Lcom/verimatrix/vdc/StreamErrorHandler$1;->val$offset:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 128
    invoke-static {}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "single error timer fired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler$1;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    iget v3, p0, Lcom/verimatrix/vdc/StreamErrorHandler$1;->val$reason:I

    iget-object v4, p0, Lcom/verimatrix/vdc/StreamErrorHandler$1;->val$streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    iget-object v5, p0, Lcom/verimatrix/vdc/StreamErrorHandler$1;->val$playbackErrorType:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    invoke-static {v2}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$100(Lcom/verimatrix/vdc/StreamErrorHandler;)I

    move-result v6

    iget-wide v7, p0, Lcom/verimatrix/vdc/StreamErrorHandler$1;->val$offset:J

    invoke-static/range {v2 .. v8}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$200(Lcom/verimatrix/vdc/StreamErrorHandler;ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;IJ)V

    .line 130
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler$1;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$102(Lcom/verimatrix/vdc/StreamErrorHandler;I)I

    return-void
.end method
