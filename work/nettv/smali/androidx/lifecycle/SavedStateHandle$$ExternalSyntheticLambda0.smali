.class public final synthetic Landroidx/lifecycle/SavedStateHandle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/lifecycle/SavedStateHandle$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandle$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .locals 1

    iget v0, p0, Landroidx/lifecycle/SavedStateHandle$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/SavedStateHandle;

    invoke-static {v0}, Landroidx/lifecycle/SavedStateHandle;->$r8$lambda$85q68529u9GpNelrug3JBSyWf4c(Landroidx/lifecycle/SavedStateHandle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/SavedStateHandle;

    invoke-static {v0}, Landroidx/lifecycle/SavedStateHandle;->$r8$lambda$85q68529u9GpNelrug3JBSyWf4c(Landroidx/lifecycle/SavedStateHandle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/ComponentActivity;

    invoke-static {v0}, Landroidx/activity/ComponentActivity;->$r8$lambda$uMG6y9sMaPUFZmnRrSgWpORKiAI(Landroidx/activity/ComponentActivity;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
