.class public final synthetic Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/appcompat/widget/TooltipCompatHandler;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/TooltipCompatHandler;I)V
    .locals 0

    iput p2, p0, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/widget/TooltipCompatHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/widget/TooltipCompatHandler;

    invoke-static {v0}, Landroidx/appcompat/widget/TooltipCompatHandler;->$r8$lambda$3aFESLcagOxECyCXdU9G39Uust4(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    return-void

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/widget/TooltipCompatHandler;

    invoke-virtual {v0}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
