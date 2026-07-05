.class public final synthetic Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v0, v1, p1}, Lcom/google/android/material/appbar/AppBarLayout;->$r8$lambda$XV3VI5THqRjqH1lLQck6TBMHyoU(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/shape/MaterialShapeDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v0, v1, p1}, Lcom/google/android/material/appbar/AppBarLayout;->$r8$lambda$L4UAs858CLQVMmD1QMlZMKD6UY8(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/shape/MaterialShapeDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v0, v1, p1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->$r8$lambda$PhjrFv1MAxh6Fwygg9NCQItD7gQ(Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
