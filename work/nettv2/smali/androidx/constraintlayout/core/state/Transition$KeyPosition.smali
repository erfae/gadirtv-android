.class Landroidx/constraintlayout/core/state/Transition$KeyPosition;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyPosition"
.end annotation


# instance fields
.field public frame:I

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Ljava/lang/String;IIFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->frame:I

    .line 3
    iput p4, p0, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->x:F

    .line 4
    iput p5, p0, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->y:F

    return-void
.end method
