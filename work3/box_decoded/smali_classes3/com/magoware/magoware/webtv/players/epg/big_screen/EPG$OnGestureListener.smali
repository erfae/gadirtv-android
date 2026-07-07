.class Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "EPG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1271
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$1;)V
    .locals 0

    .line 1271
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;-><init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1340
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$1300(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Landroid/widget/Scroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1341
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$1300(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Landroid/widget/Scroller;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_0
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "vX",
            "vY"
        }
    .end annotation

    .line 1333
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$1300(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v1

    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollY()I

    move-result v2

    float-to-int p1, p3

    neg-int v3, p1

    float-to-int p1, p4

    neg-int v4, p1

    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$1100(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)I

    move-result v6

    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$1200(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)I

    move-result v8

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1334
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->redraw()V

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "distanceX",
            "distanceY"
        }
    .end annotation

    float-to-int p1, p3

    float-to-int p2, p4

    .line 1309
    iget-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result p3

    .line 1310
    iget-object p4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {p4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollY()I

    move-result p4

    add-int v0, p3, p1

    if-gez v0, :cond_0

    rsub-int/lit8 p1, p3, 0x0

    :cond_0
    add-int v0, p4, p2

    if-gez v0, :cond_1

    rsub-int/lit8 p2, p4, 0x0

    :cond_1
    add-int v0, p3, p1

    .line 1320
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$1100(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 1321
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$1100(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)I

    move-result p1

    sub-int/2addr p1, p3

    :cond_2
    add-int p3, p4, p2

    .line 1323
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$1200(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)I

    move-result v0

    if-le p3, v0, :cond_3

    .line 1324
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$1200(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)I

    move-result p2

    sub-int/2addr p2, p4

    .line 1327
    :cond_3
    iget-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {p3, p1, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->scrollBy(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 1281
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v1

    add-int/2addr v1, v0

    .line 1282
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollY()I

    move-result v2

    add-int/2addr v2, p1

    .line 1284
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-static {v3, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$300(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1285
    iget-object v5, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-static {v5}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$400(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGClickListener;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1286
    iget-object v5, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-static {v5}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$500(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1288
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$400(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGClickListener;->onResetButtonClicked()V

    goto :goto_0

    .line 1289
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$600(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1291
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$400(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$700(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getChannel(I)Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGClickListener;->onChannelClicked(ILcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V

    goto :goto_0

    .line 1292
    :cond_1
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$800(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1294
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$800(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$900(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;I)J

    move-result-wide v0

    invoke-static {p1, v3, v0, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$1000(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;IJ)I

    move-result p1

    if-eq p1, v4, :cond_2

    .line 1296
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$400(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->access$700(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    move-result-object v1

    invoke-interface {v1, v3, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getEvent(II)Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    move-result-object v1

    invoke-interface {v0, v3, p1, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGClickListener;->onEventClicked(IILcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
