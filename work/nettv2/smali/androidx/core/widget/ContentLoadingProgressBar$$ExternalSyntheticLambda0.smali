.class public final synthetic Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/core/widget/ContentLoadingProgressBar;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/widget/ContentLoadingProgressBar;I)V
    .locals 0

    iput p2, p0, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;->f$0:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;->f$0:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-static {v0}, Landroidx/core/widget/ContentLoadingProgressBar;->$r8$lambda$9ZVtVfM7MwrgGmJEIZNfuhCC7eY(Landroidx/core/widget/ContentLoadingProgressBar;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;->f$0:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-static {v0}, Landroidx/core/widget/ContentLoadingProgressBar;->$r8$lambda$Ije3417V0uZgdBrD9pbxQ2_AHiI(Landroidx/core/widget/ContentLoadingProgressBar;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;->f$0:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-static {v0}, Landroidx/core/widget/ContentLoadingProgressBar;->$r8$lambda$tmknj5M20Tn8TaJxR587u-39ZDQ(Landroidx/core/widget/ContentLoadingProgressBar;)V

    return-void

    :goto_0
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;->f$0:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-static {v0}, Landroidx/core/widget/ContentLoadingProgressBar;->$r8$lambda$ovrYLeWrClCHhOWg8t_Ay80kDrs(Landroidx/core/widget/ContentLoadingProgressBar;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
