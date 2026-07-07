.class Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;
.super Landroid/os/Handler;
.source "VOSubtitleRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/VOSubtitleRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Landroid/os/Looper;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 93
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$000(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$100(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$100(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->reset()V

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    check-cast p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    invoke-static {v0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$200(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;)V

    :goto_0
    return-void
.end method
