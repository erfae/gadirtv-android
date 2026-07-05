.class public Lcom/nettv/livestore/helper/SimpleGestureFilter;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SimpleGestureFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/helper/SimpleGestureFilter$SimpleGestureListener;
    }
.end annotation


# static fields
.field private static final ACTION_FAKE:I = -0xd

.field public static final MODE_DYNAMIC:I = 0x2

.field public static final MODE_SOLID:I = 0x1

.field public static final MODE_TRANSPARENT:I = 0x0

.field public static final SWIPE_DOWN:I = 0x2

.field public static final SWIPE_LEFT:I = 0x3

.field public static final SWIPE_RIGHT:I = 0x4

.field public static final SWIPE_UP:I = 0x1


# instance fields
.field private context:Landroid/app/Activity;

.field private detector:Landroid/view/GestureDetector;

.field private listener:Lcom/nettv/livestore/helper/SimpleGestureFilter$SimpleGestureListener;

.field private mode:I

.field private running:Z

.field private swipe_Max_Distance:I

.field private swipe_Min_Distance:I

.field private swipe_Min_Velocity:I

.field private tapIndicator:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/nettv/livestore/helper/SimpleGestureFilter$SimpleGestureListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->swipe_Min_Distance:I

    const/16 v0, 0x15e

    .line 3
    iput v0, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->swipe_Max_Distance:I

    const/16 v0, 0x32

    .line 4
    iput v0, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->swipe_Min_Velocity:I

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->mode:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->running:Z

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->tapIndicator:Z

    .line 8
    iput-object p1, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->context:Landroid/app/Activity;

    .line 9
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->detector:Landroid/view/GestureDetector;

    .line 10
    iput-object p2, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->listener:Lcom/nettv/livestore/helper/SimpleGestureFilter$SimpleGestureListener;

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->mode:I

    return v0
.end method

.method public getSwipeMaxDistance()I
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->swipe_Max_Distance:I

    return v0
.end method

.method public getSwipeMinDistance()I
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->swipe_Min_Distance:I

    return v0
.end method

.method public getSwipeMinVelocity()I
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->swipe_Min_Velocity:I

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->listener:Lcom/nettv/livestore/helper/SimpleGestureFilter$SimpleGestureListener;

    invoke-interface {p1}, Lcom/nettv/livestore/helper/SimpleGestureFilter$SimpleGestureListener;->onDoubleTap()V

    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 3
    iget v2, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->swipe_Max_Distance:I

    int-to-float v3, v2

    const/4 v4, 0x0

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_4

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    .line 5
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    .line 6
    iget v2, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->swipe_Min_Velocity:I

    int-to-float v3, v2

    const/4 v5, 0x1

    cmpl-float p3, p3, v3

    if-lez p3, :cond_2

    iget p3, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->swipe_Min_Distance:I

    int-to-float p3, p3

    cmpl-float p3, v0, p3

    if-lez p3, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->listener:Lcom/nettv/livestore/helper/SimpleGestureFilter$SimpleGestureListener;

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcom/nettv/livestore/helper/SimpleGestureFilter$SimpleGestureListener;->onSwipe(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->listener:Lcom/nettv/livestore/helper/SimpleGestureFilter$SimpleGestureListener;

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lcom/nettv/livestore/helper/SimpleGestureFilter$SimpleGestureListener;->onSwipe(I)V

    :goto_0
    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    int-to-float p3, v2

    cmpl-float p3, p4, p3

    if-lez p3, :cond_4

    .line 10
    iget p3, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->swipe_Min_Distance:I

    int-to-float p3, p3

    cmpl-float p3, v1, p3

    if-lez p3, :cond_4

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->listener:Lcom/nettv/livestore/helper/SimpleGestureFilter$SimpleGestureListener;

    invoke-interface {p1, v5}, Lcom/nettv/livestore/helper/SimpleGestureFilter$SimpleGestureListener;->onSwipe(I)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->listener:Lcom/nettv/livestore/helper/SimpleGestureFilter$SimpleGestureListener;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/nettv/livestore/helper/SimpleGestureFilter$SimpleGestureListener;->onSwipe(I)V

    goto :goto_0

    :cond_4
    :goto_1
    return v4
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, -0xd

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->context:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->tapIndicator:Z

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 3
    iget v1, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->mode:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v4, -0xd

    if-ne v1, v4, :cond_2

    .line 6
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 8
    :cond_3
    iget-boolean v0, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->tapIndicator:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 10
    iput-boolean v0, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->tapIndicator:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->running:Z

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->mode:I

    return-void
.end method

.method public setSwipeMaxDistance(I)V
    .locals 0

    iput p1, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->swipe_Max_Distance:I

    return-void
.end method

.method public setSwipeMinDistance(I)V
    .locals 0

    iput p1, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->swipe_Min_Distance:I

    return-void
.end method

.method public setSwipeMinVelocity(I)V
    .locals 0

    iput p1, p0, Lcom/nettv/livestore/helper/SimpleGestureFilter;->swipe_Min_Velocity:I

    return-void
.end method
