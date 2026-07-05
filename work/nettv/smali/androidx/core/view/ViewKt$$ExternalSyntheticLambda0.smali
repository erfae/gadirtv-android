.class public final synthetic Landroidx/core/view/ViewKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/core/view/ViewKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/core/view/ViewKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Landroidx/core/view/ViewKt$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/core/view/ViewKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/core/view/ViewKt;->$r8$lambda$Y6wGMU_rQCvb5uOg5WbipwD8gCc(Lkotlin/jvm/functions/Function0;)V

    return-void

    :goto_0
    iget-object v0, p0, Landroidx/core/view/ViewKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->$r8$lambda$pAhi3kcyEfefAOVk6cMro6TSEfc(Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
