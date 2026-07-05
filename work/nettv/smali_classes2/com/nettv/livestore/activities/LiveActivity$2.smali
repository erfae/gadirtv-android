.class Lcom/nettv/livestore/activities/LiveActivity$2;
.super Ljava/lang/Object;
.source "LiveActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/LiveActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/LiveActivity;

.field public final synthetic val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

.field public final synthetic val$position:I

.field public final synthetic val$type:I


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/LiveActivity;IILcom/nettv/livestore/models/EPGChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iput p2, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->val$type:I

    iput p3, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->val$position:I

    iput-object p4, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPinCorrect()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->val$type:I

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_6

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->val$position:I

    invoke-static {v0, v1, v2}, Lcom/nettv/livestore/activities/LiveActivity;->access$600(Lcom/nettv/livestore/activities/LiveActivity;Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->access$700(Lcom/nettv/livestore/activities/LiveActivity;Z)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getChannel_unlocked()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getChannel_locked()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v2, v0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v3, v0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v2, v3}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-static {v0, v2}, Lcom/nettv/livestore/activities/LiveActivity;->access$000(Lcom/nettv/livestore/activities/LiveActivity;Lcom/nettv/livestore/models/EPGChannel;)V

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v2, v0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v3, v0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v2, v3}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/nettv/livestore/activities/LiveActivity;->stream_id:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->stream_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->access$100(Lcom/nettv/livestore/activities/LiveActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->access$200(Lcom/nettv/livestore/activities/LiveActivity;Ljava/util/List;)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->txt_name:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveActivity;->channel_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->access$300(Lcom/nettv/livestore/activities/LiveActivity;I)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, v0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, v0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->scrollToPosition(I)V

    goto/16 :goto_2

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->access$000(Lcom/nettv/livestore/activities/LiveActivity;Lcom/nettv/livestore/models/EPGChannel;)V

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, v0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->stream_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->access$500(Lcom/nettv/livestore/activities/LiveActivity;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->access$300(Lcom/nettv/livestore/activities/LiveActivity;I)V

    .line 23
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-boolean v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    if-eqz v1, :cond_5

    .line 24
    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/LiveActivity;->access$400(Lcom/nettv/livestore/activities/LiveActivity;)V

    goto :goto_2

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-static {v0, v3}, Lcom/nettv/livestore/activities/LiveActivity;->access$000(Lcom/nettv/livestore/activities/LiveActivity;Lcom/nettv/livestore/models/EPGChannel;)V

    .line 28
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-nez v0, :cond_7

    .line 29
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->stream_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->access$100(Lcom/nettv/livestore/activities/LiveActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :cond_7
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->access$200(Lcom/nettv/livestore/activities/LiveActivity;Ljava/util/List;)V

    .line 32
    :goto_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->access$300(Lcom/nettv/livestore/activities/LiveActivity;I)V

    .line 33
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 34
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 35
    :cond_8
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/LiveActivity;->access$400(Lcom/nettv/livestore/activities/LiveActivity;)V

    .line 37
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->txt_name:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveActivity;->channel_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, v0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_2

    .line 39
    :cond_9
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->val$position:I

    iput v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    .line 40
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->access$000(Lcom/nettv/livestore/activities/LiveActivity;Lcom/nettv/livestore/models/EPGChannel;)V

    :goto_2
    return-void
.end method

.method public OnPinIncorrect()V
    .locals 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

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

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$2;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getPut_pin_code()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
