.class Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;
.super Ljava/lang/Object;
.source "LiveTvPlayerSuperclass.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setEventListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cnt:I

.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1350
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1351
    iput p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;->cnt:I

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "keyCode",
            "event"
        }
    .end annotation

    .line 1355
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$300(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$300(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    rem-int/2addr p1, v0

    const/16 v0, 0x15

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    if-ne p2, v0, :cond_2

    .line 1356
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_2

    iget v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;->cnt:I

    if-ne v3, v2, :cond_2

    .line 1357
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$400(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    .line 1358
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$300(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/GridView;->clearFocus()V

    .line 1359
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$500(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)I

    move-result p1

    if-lez p1, :cond_0

    .line 1360
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$400(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$500(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    .line 1361
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$400(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$500(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1362
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$400(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$500(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 1365
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$400(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1366
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$400(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1368
    :cond_1
    :goto_0
    iput v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;->cnt:I

    goto :goto_1

    :cond_2
    if-nez p1, :cond_4

    if-eq p2, v0, :cond_3

    const/16 p1, 0x16

    if-ne p2, p1, :cond_4

    .line 1369
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 1370
    iget p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;->cnt:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;->cnt:I

    goto :goto_1

    .line 1371
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 1372
    iput v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;->cnt:I

    :cond_5
    :goto_1
    return v1
.end method
