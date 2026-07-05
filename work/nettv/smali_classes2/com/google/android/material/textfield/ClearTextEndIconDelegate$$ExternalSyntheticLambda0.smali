.class public final synthetic Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/textfield/EndIconDelegate;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-static {v0, p1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->$r8$lambda$tQahUbi3HJfsEhbpmdlHLxzqxv4(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-static {v0, p1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->$r8$lambda$Abvjkt9KmYeJvJ7_vHGwZ-xlmVA(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->$r8$lambda$4SBpO57tjhDSopV0DemkySdxojY(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
