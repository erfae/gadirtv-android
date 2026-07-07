.class Lcom/nettv/livestore/activities/SeriesSecondActivity$1;
.super Ljava/lang/Object;
.source "SeriesSecondActivity.java"

# interfaces
.implements Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$ItemClickListener;


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
.method public static synthetic $r8$lambda$9cpBmup4E7OSW0Z-2oDLtjfNHus(Lcom/nettv/livestore/activities/SeriesSecondActivity$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SeriesSecondActivity$1;->lambda$onUnFavClick$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fb-7p8_kNtU0exl1fPG8LWQoPC0(Lcom/nettv/livestore/activities/SeriesSecondActivity$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SeriesSecondActivity$1;->lambda$onFavClick$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/nettv/livestore/activities/SeriesSecondActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFavClick$0(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->seriesAdapter:Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/SeriesSecondActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/RealmController;->getFavSeriesNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceSeriesFavNames(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onUnFavClick$1(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->seriesAdapter:Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/SeriesSecondActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/RealmController;->getFavSeriesNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceSeriesFavNames(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onFavClick(Lcom/nettv/livestore/models/SeriesModel;I)V
    .registers 6

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/nettv/livestore/activities/SeriesSecondActivity$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/nettv/livestore/activities/SeriesSecondActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/SeriesSecondActivity$1;II)V

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/nettv/livestore/helper/RealmController;->addToFavSeries(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    return-void
.end method

.method public onFocusPosition(I)V
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    iput p1, v0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->pre_series_pos:I

    return-void
.end method

.method public onItemClick(Lcom/nettv/livestore/models/SeriesModel;I)V
    .registers 6

    .line 1
    iget-object p2, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    iget-object v0, p2, Lcom/nettv/livestore/activities/SeriesSecondActivity;->categoryModels:Ljava/util/List;

    iget p2, p2, Lcom/nettv/livestore/activities/SeriesSecondActivity;->category_pos:I

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "resume_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "series_id"

    if-eqz p2, :cond_3e

    .line 3
    new-instance p2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    const-class v2, Lcom/nettv/livestore/activities/SeasonActivity;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "series_name"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->getSeries_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_7d

    .line 7
    :cond_3e
    new-instance p2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    const-class v2, Lcom/nettv/livestore/activities/SeriesInfoActivity;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->getSeries_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    const-string v1, "category_name"

    if-eqz v0, :cond_6b

    .line 11
    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->getCategory_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_78

    .line 12
    :cond_6b
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/nettv/livestore/activities/SeriesSecondActivity;->getSeriesCategoryName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/SeriesSecondActivity;->access$000(Lcom/nettv/livestore/activities/SeriesSecondActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    :goto_78
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesSecondActivity;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_7d
    return-void
.end method

.method public onUnFavClick(Lcom/nettv/livestore/models/SeriesModel;I)V
    .registers 6

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/nettv/livestore/activities/SeriesSecondActivity$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, v2}, Lcom/nettv/livestore/activities/SeriesSecondActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/SeriesSecondActivity$1;II)V

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/nettv/livestore/helper/RealmController;->addToFavSeries(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    return-void
.end method
