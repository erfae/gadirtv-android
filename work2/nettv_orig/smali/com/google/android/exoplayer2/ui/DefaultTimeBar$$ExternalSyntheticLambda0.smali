.class public final synthetic Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda0;
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

    iput p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->$r8$lambda$Z0c6J0eVTE_HygSVCukZ8eh1z4Y(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->$r8$lambda$w16R9T047Gf8_1zeIhVq75pS9uY(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->$r8$lambda$bLNGlFgEeAM8s00dnj4oM6Y1JCg(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->$r8$lambda$TSNFqIHZT-a28zmMBK5qTl_VdZo(Lcom/google/android/exoplayer2/ui/DefaultTimeBar;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->$r8$lambda$M0SOemxfC91i1PxYVH9CZAMN-T0(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
