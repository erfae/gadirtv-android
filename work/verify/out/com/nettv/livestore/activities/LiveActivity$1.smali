.class Lcom/nettv/livestore/activities/LiveActivity$1;
.super Ljava/lang/Object;
.source "LiveActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/LiveActivity;->showLockDlgFragment(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/LiveActivity;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/LiveActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iput p2, p0, Lcom/nettv/livestore/activities/LiveActivity$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPinCorrect()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity$1;->val$position:I

    iput v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget v2, v2, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u2022 Group : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v3, v2, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v2, v2, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->categoryName:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v2, v2, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v3, p0, Lcom/nettv/livestore/activities/LiveActivity$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v3, v3, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v3

    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v4, v4, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v4

    const-string v5, ""

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object v1

    iput-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    return-void
.end method

.method public OnPinIncorrect()V
    .registers 4

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

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
    .registers 4

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity$1;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getPut_pin_code()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
