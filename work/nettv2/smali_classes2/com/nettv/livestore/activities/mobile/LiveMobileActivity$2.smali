.class Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;
.super Ljava/lang/Object;
.source "LiveMobileActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

.field public final synthetic val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

.field public final synthetic val$position:I

.field public final synthetic val$type:I


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;IILcom/nettv/livestore/models/EPGChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iput p2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->val$type:I

    iput p3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->val$position:I

    iput-object p4, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPinCorrect()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->val$type:I

    const/4 v1, 0x0

    if-eqz v0, :cond_9

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

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->val$position:I

    invoke-static {v0, v1, v2}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$700(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$800(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Z)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getChannel_unlocked()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getChannel_locked()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v2, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v3, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v2, v3}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-static {v0, v2}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$000(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Lcom/nettv/livestore/models/EPGChannel;)V

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v2, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v3, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v2, v3}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->stream_id:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->stream_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$100(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$200(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Ljava/util/List;)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_name:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$400(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;I)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto/16 :goto_3

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$000(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Lcom/nettv/livestore/models/EPGChannel;)V

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->stream_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$600(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$400(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;I)V

    .line 22
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-boolean v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->is_full:Z

    if-eqz v1, :cond_5

    .line 23
    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :cond_5
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$500(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;)V

    goto/16 :goto_3

    .line 26
    :cond_6
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v3, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v5, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v3, v5}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/EPGChannel;

    invoke-static {v0, v3}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$000(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Lcom/nettv/livestore/models/EPGChannel;)V

    .line 27
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-nez v0, :cond_7

    .line 28
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->stream_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$100(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 30
    :cond_7
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$200(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Ljava/util/List;)V

    .line 31
    :goto_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$400(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;I)V

    .line 32
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 33
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 34
    :cond_8
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$500(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;)V

    .line 36
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_name:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_3

    .line 38
    :cond_9
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->val$position:I

    iput v2, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    .line 39
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-static {v0, v2}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$000(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Lcom/nettv/livestore/models/EPGChannel;)V

    .line 40
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-nez v0, :cond_a

    .line 41
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$100(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Ljava/lang/String;)V

    goto :goto_2

    .line 43
    :cond_a
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$200(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Ljava/util/List;)V

    .line 44
    :goto_2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_name:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_name:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$300(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Z)V

    .line 47
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$400(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;I)V

    :goto_3
    return-void
.end method

.method public OnPinIncorrect()V
    .locals 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

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

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getPut_pin_code()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
