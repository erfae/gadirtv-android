.class public final synthetic Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    check-cast v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->$r8$lambda$0kViDiRVwCDE5XwNTNyFNxX8LLg(Lcom/google/android/exoplayer2/ui/DefaultTimeBar;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    check-cast v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->$r8$lambda$dsDS5OYIroORhxkiiMev-op7GuU(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
