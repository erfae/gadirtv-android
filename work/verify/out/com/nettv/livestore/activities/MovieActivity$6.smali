.class Lcom/nettv/livestore/activities/MovieActivity$6;
.super Ljava/lang/Object;
.source "MovieActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/MovieActivity;->showLockDlgFragment(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/MovieActivity;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/MovieActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity$6;->this$0:Lcom/nettv/livestore/activities/MovieActivity;

    iput p2, p0, Lcom/nettv/livestore/activities/MovieActivity$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPinCorrect()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$6;->this$0:Lcom/nettv/livestore/activities/MovieActivity;

    iget v1, p0, Lcom/nettv/livestore/activities/MovieActivity$6;->val$position:I

    iput v1, v0, Lcom/nettv/livestore/activities/MovieActivity;->category_pos:I

    .line 2
    iget-object v0, v0, Lcom/nettv/livestore/activities/MovieActivity;->et_search:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$6;->this$0:Lcom/nettv/livestore/activities/MovieActivity;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v2

    iget-object v3, p0, Lcom/nettv/livestore/activities/MovieActivity$6;->this$0:Lcom/nettv/livestore/activities/MovieActivity;

    iget-object v3, v3, Lcom/nettv/livestore/activities/MovieActivity;->categoryModels:Ljava/util/List;

    iget v4, p0, Lcom/nettv/livestore/activities/MovieActivity$6;->val$position:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v4, p0, Lcom/nettv/livestore/activities/MovieActivity$6;->this$0:Lcom/nettv/livestore/activities/MovieActivity;

    iget-object v4, v4, Lcom/nettv/livestore/activities/MovieActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v4

    iget-object v5, p0, Lcom/nettv/livestore/activities/MovieActivity$6;->this$0:Lcom/nettv/livestore/activities/MovieActivity;

    iget v5, v5, Lcom/nettv/livestore/activities/MovieActivity;->sort_pos:I

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/nettv/livestore/helper/RealmController;->getMovieModelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object v1

    iput-object v1, v0, Lcom/nettv/livestore/activities/MovieActivity;->movieModels:Lio/realm/RealmResults;

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$6;->this$0:Lcom/nettv/livestore/activities/MovieActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/MovieActivity;->txt_category:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nettv/livestore/activities/MovieActivity$6;->this$0:Lcom/nettv/livestore/activities/MovieActivity;

    iget-object v2, v2, Lcom/nettv/livestore/activities/MovieActivity;->categoryModels:Ljava/util/List;

    iget v3, p0, Lcom/nettv/livestore/activities/MovieActivity$6;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/MovieActivity$6;->this$0:Lcom/nettv/livestore/activities/MovieActivity;

    iget-object v2, v2, Lcom/nettv/livestore/activities/MovieActivity;->movieModels:Lio/realm/RealmResults;

    invoke-virtual {v2}, Lio/realm/RealmResults;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$6;->this$0:Lcom/nettv/livestore/activities/MovieActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/MovieActivity;->vodAdapter:Lcom/nettv/livestore/adapter/VodRecyclerAdapter;

    iget-object v0, v0, Lcom/nettv/livestore/activities/MovieActivity;->movieModels:Lio/realm/RealmResults;

    invoke-virtual {v1, v0}, Lcom/nettv/livestore/adapter/RealmRecyclerViewAdapter;->updateData(Lio/realm/OrderedRealmCollection;)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$6;->this$0:Lcom/nettv/livestore/activities/MovieActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/MovieActivity;->vodAdapter:Lcom/nettv/livestore/adapter/VodRecyclerAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter;->setSelectedPosition(I)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$6;->this$0:Lcom/nettv/livestore/activities/MovieActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_movie:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    return-void
.end method

.method public OnPinIncorrect()V
    .registers 4

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$6;->this$0:Lcom/nettv/livestore/activities/MovieActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/MovieActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

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

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$6;->this$0:Lcom/nettv/livestore/activities/MovieActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/MovieActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getPut_pin_code()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
