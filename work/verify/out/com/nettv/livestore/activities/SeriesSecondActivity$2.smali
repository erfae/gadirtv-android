.class Lcom/nettv/livestore/activities/SeriesSecondActivity$2;
.super Ljava/lang/Object;
.source "SeriesSecondActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/SeriesSecondActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/SeriesSecondActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$2;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$2;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    iget p2, p1, Lcom/nettv/livestore/activities/SeriesSecondActivity;->sort_pos:I

    if-eq p2, p3, :cond_44

    .line 2
    iput p3, p1, Lcom/nettv/livestore/activities/SeriesSecondActivity;->sort_pos:I

    .line 3
    iget-object p1, p1, Lcom/nettv/livestore/activities/SeriesSecondActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1, p3}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceSeriesOrder(I)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$2;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p2

    iget-object p3, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$2;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    iget-object p4, p3, Lcom/nettv/livestore/activities/SeriesSecondActivity;->categoryModels:Ljava/util/List;

    iget p3, p3, Lcom/nettv/livestore/activities/SeriesSecondActivity;->category_pos:I

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/CategoryModel;

    iget-object p4, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$2;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    iget-object p4, p4, Lcom/nettv/livestore/activities/SeriesSecondActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p4

    iget-object p5, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$2;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    iget p5, p5, Lcom/nettv/livestore/activities/SeriesSecondActivity;->sort_pos:I

    const-string v0, ""

    invoke-virtual {p2, p3, v0, p4, p5}, Lcom/nettv/livestore/helper/RealmController;->getSeriesModelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p2

    iput-object p2, p1, Lcom/nettv/livestore/activities/SeriesSecondActivity;->seriesModels:Lio/realm/RealmResults;

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$2;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    iget-object p2, p1, Lcom/nettv/livestore/activities/SeriesSecondActivity;->seriesAdapter:Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;

    iget-object p1, p1, Lcom/nettv/livestore/activities/SeriesSecondActivity;->seriesModels:Lio/realm/RealmResults;

    invoke-virtual {p2, p1}, Lcom/nettv/livestore/adapter/RealmRecyclerViewAdapter;->updateData(Lio/realm/OrderedRealmCollection;)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$2;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/SeriesSecondActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    :cond_44
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
