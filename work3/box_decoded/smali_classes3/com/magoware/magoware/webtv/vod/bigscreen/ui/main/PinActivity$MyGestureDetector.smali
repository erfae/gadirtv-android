.class Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity$MyGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity$MyGestureDetector;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
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
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 223
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    cmpg-float p3, p3, p4

    if-gez p3, :cond_0

    .line 224
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity$MyGestureDetector;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;

    const-string p2, "next"

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->access$102(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    .line 226
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity$MyGestureDetector;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;

    const-string p2, "previous"

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->access$102(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity$MyGestureDetector;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->finish()V

    const/4 p1, 0x0

    return p1
.end method
