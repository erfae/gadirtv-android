.class public Lcom/visualon/OSMPUtils/voVideoViewController$voGlobalLayoutListener;
.super Ljava/lang/Object;
.source "voVideoViewController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voVideoViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "voGlobalLayoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPUtils/voVideoViewController;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPUtils/voVideoViewController;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voGlobalLayoutListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voGlobalLayoutListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$000(Lcom/visualon/OSMPUtils/voVideoViewController;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voGlobalLayoutListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$000(Lcom/visualon/OSMPUtils/voVideoViewController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voGlobalLayoutListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$000(Lcom/visualon/OSMPUtils/voVideoViewController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 147
    iget-object v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voGlobalLayoutListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v2}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$000(Lcom/visualon/OSMPUtils/voVideoViewController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 148
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voGlobalLayoutListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v3}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$100(Lcom/visualon/OSMPUtils/voVideoViewController;)I

    move-result v3

    if-ne v3, v0, :cond_2

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voGlobalLayoutListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v3}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$200(Lcom/visualon/OSMPUtils/voVideoViewController;)I

    move-result v3

    if-eq v3, v2, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voGlobalLayoutListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$302(Lcom/visualon/OSMPUtils/voVideoViewController;Z)Z

    goto :goto_1

    .line 149
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voGlobalLayoutListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$302(Lcom/visualon/OSMPUtils/voVideoViewController;Z)Z

    .line 150
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voGlobalLayoutListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v3, v0, v2}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$400(Lcom/visualon/OSMPUtils/voVideoViewController;II)V

    .line 151
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "@@@voVideoViewController"

    const-string v2, "#VideoDes === globalLayoutListener w:%d h:%d"

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_3
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_4

    .line 158
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voGlobalLayoutListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$502(Lcom/visualon/OSMPUtils/voVideoViewController;Z)Z

    :cond_4
    return-void
.end method
