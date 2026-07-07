.class public Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;
.super Landroid/widget/FrameLayout;
.source "voVideoViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voVideoViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "voLayoutAdapter"
.end annotation


# instance fields
.field private mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mController:Lcom/visualon/OSMPUtils/voVideoViewController;

.field final synthetic this$0:Lcom/visualon/OSMPUtils/voVideoViewController;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPUtils/voVideoViewController;Landroid/content/Context;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    .line 166
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mController:Lcom/visualon/OSMPUtils/voVideoViewController;

    .line 171
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 182
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mController:Lcom/visualon/OSMPUtils/voVideoViewController;

    if-eqz v0, :cond_1

    .line 183
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mController:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v3}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$100(Lcom/visualon/OSMPUtils/voVideoViewController;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mController:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v2}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$200(Lcom/visualon/OSMPUtils/voVideoViewController;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "@@@voVideoViewController"

    const-string v3, "#VideoDes === onConfigurationChanged w:%d h:%d"

    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mController:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$502(Lcom/visualon/OSMPUtils/voVideoViewController;Z)Z

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 187
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 221
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "@@@voVideoViewController"

    const-string v2, "#VideoDes onLayout == l:%d t:%d r:%d b:%d"

    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 192
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->getVisibility()I

    move-result v0

    const-string v1, "@@@voVideoViewController"

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mController:Lcom/visualon/OSMPUtils/voVideoViewController;

    if-eqz v0, :cond_3

    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->measureChildren(II)V

    .line 194
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->getDefaultSize(II)I

    move-result p1

    .line 195
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->getDefaultSize(II)I

    move-result p2

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->setMeasuredDimension(II)V

    .line 200
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mController:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$100(Lcom/visualon/OSMPUtils/voVideoViewController;)I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mController:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$200(Lcom/visualon/OSMPUtils/voVideoViewController;)I

    move-result v0

    if-eq v0, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mController:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$500(Lcom/visualon/OSMPUtils/voVideoViewController;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mController:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$100(Lcom/visualon/OSMPUtils/voVideoViewController;)I

    move-result v0

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mController:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$200(Lcom/visualon/OSMPUtils/voVideoViewController;)I

    move-result v0

    if-eq v0, p2, :cond_5

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mController:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0, p1, p2}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$400(Lcom/visualon/OSMPUtils/voVideoViewController;II)V

    .line 202
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mController:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {p2}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$100(Lcom/visualon/OSMPUtils/voVideoViewController;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mController:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$200(Lcom/visualon/OSMPUtils/voVideoViewController;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "#VideoDes === onMeasure w:%d h:%d"

    invoke-static {v1, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 205
    :cond_3
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "#VideoDes onMeasure GONE"

    invoke-static {v1, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    :cond_4
    invoke-virtual {p0, v2, v2}, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->measureChildren(II)V

    .line 207
    invoke-virtual {p0, v2, v2}, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->setMeasuredDimension(II)V

    .line 209
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 214
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "@@@voVideoViewController"

    const-string v2, "#VideoDes onSizeChanged == w:%d h:%d ow:%d oh:%d"

    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public setController(Lcom/visualon/OSMPUtils/voVideoViewController;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 175
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mController:Lcom/visualon/OSMPUtils/voVideoViewController;

    .line 176
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voLayoutAdapter;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
