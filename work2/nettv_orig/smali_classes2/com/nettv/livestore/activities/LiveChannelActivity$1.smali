.class Lcom/nettv/livestore/activities/LiveChannelActivity$1;
.super Ljava/lang/Object;
.source "LiveChannelActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/LiveChannelActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

.field public final synthetic val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

.field public final synthetic val$position:I

.field public final synthetic val$type:I


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/LiveChannelActivity;IILcom/nettv/livestore/models/EPGChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iput p2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->val$type:I

    iput p3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->val$position:I

    iput-object p4, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPinCorrect()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->val$type:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    iget v4, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->val$position:I

    invoke-static {v0, v1, v4}, Lcom/nettv/livestore/activities/LiveChannelActivity;->access$600(Lcom/nettv/livestore/activities/LiveChannelActivity;Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->access$700(Lcom/nettv/livestore/activities/LiveChannelActivity;Z)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getChannel_unlocked()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getChannel_locked()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-object v2, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->keySelChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-static {v0, v2}, Lcom/nettv/livestore/activities/LiveChannelActivity;->access$000(Lcom/nettv/livestore/activities/LiveChannelActivity;Lcom/nettv/livestore/models/EPGChannel;)V

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-object v2, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v2, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-object v2, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-object v2, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->stream_id:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/nettv/livestore/activities/LiveChannelActivity;->access$500(Lcom/nettv/livestore/activities/LiveChannelActivity;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget v2, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-static {v0, v2}, Lcom/nettv/livestore/activities/LiveChannelActivity;->access$300(Lcom/nettv/livestore/activities/LiveChannelActivity;I)V

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-boolean v1, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    if-eqz v1, :cond_3

    .line 13
    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->access$400(Lcom/nettv/livestore/activities/LiveChannelActivity;)V

    goto :goto_1

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-static {v0, v2}, Lcom/nettv/livestore/activities/LiveChannelActivity;->access$000(Lcom/nettv/livestore/activities/LiveChannelActivity;Lcom/nettv/livestore/models/EPGChannel;)V

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-nez v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-object v2, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-object v2, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->stream_id:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/nettv/livestore/activities/LiveChannelActivity;->access$100(Lcom/nettv/livestore/activities/LiveChannelActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/nettv/livestore/activities/LiveChannelActivity;->access$200(Lcom/nettv/livestore/activities/LiveChannelActivity;Ljava/util/List;)V

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget v2, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-static {v0, v2}, Lcom/nettv/livestore/activities/LiveChannelActivity;->access$300(Lcom/nettv/livestore/activities/LiveChannelActivity;I)V

    .line 22
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-boolean v1, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    if-eqz v1, :cond_6

    .line 23
    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :cond_6
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->access$400(Lcom/nettv/livestore/activities/LiveChannelActivity;)V

    .line 26
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_name:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_1

    .line 28
    :cond_7
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->val$position:I

    iput v1, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    .line 29
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->access$000(Lcom/nettv/livestore/activities/LiveChannelActivity;Lcom/nettv/livestore/models/EPGChannel;)V

    :goto_1
    return-void
.end method

.method public OnPinIncorrect()V
    .locals 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getPin_incorrect()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public OnPutPinCode()V
    .locals 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveChannelActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getPut_pin_code()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
