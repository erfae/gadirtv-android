.class Lcom/nettv/livestore/activities/CatchUpPlayerActivity$3;
.super Ljava/lang/Object;
.source "CatchUpPlayerActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$OkButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->showPlayErrorDlgFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/CatchUpPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/CatchUpPlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity$3;->this$0:Lcom/nettv/livestore/activities/CatchUpPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity$3;->this$0:Lcom/nettv/livestore/activities/CatchUpPlayerActivity;

    iget v1, v0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->program_position:I

    iget-object v0, v0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->catchUpEpgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_19

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity$3;->this$0:Lcom/nettv/livestore/activities/CatchUpPlayerActivity;

    iget v1, v0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->program_position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->program_position:I

    .line 3
    # invokes: Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->playCatchUp(I)V
    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->access$600(Lcom/nettv/livestore/activities/CatchUpPlayerActivity;I)V

    :cond_19
    return-void
.end method

.method public onOkClick()V
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity$3;->this$0:Lcom/nettv/livestore/activities/CatchUpPlayerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
