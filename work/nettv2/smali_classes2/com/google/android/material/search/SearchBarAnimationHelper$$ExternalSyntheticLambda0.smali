.class public final synthetic Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/internal/FadeThroughDrawable;

    invoke-static {v0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->$r8$lambda$vIDpQzdq85GEYIUPmWfoi-QqvEQ(Lcom/google/android/material/internal/FadeThroughDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->$r8$lambda$2I8f9dhWFZQCPYrRMzZyxkZ3meI(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    invoke-static {v0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->$r8$lambda$Z1-IpSvBz1A0UFDUBqPbMGBVQYc(Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
