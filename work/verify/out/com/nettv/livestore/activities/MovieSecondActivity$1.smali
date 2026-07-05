.class Lcom/nettv/livestore/activities/MovieSecondActivity$1;
.super Ljava/lang/Object;
.source "MovieSecondActivity.java"

# interfaces
.implements Lcom/nettv/livestore/adapter/VodRecyclerAdapter$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/MovieSecondActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;


# direct methods
.method public static synthetic $r8$lambda$arKaHYuX29PC52yoPkbh7CdYHDk(Lcom/nettv/livestore/activities/MovieSecondActivity$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/MovieSecondActivity$1;->lambda$onFavClick$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eTqffizGdBbWt9vgSOPWl2_5Z-M(Lcom/nettv/livestore/activities/MovieSecondActivity$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/MovieSecondActivity$1;->lambda$onUnFavClick$1(I)V

    return-void
.end method

.method public constructor <init>(Lcom/nettv/livestore/activities/MovieSecondActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFavClick$0(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/MovieSecondActivity;->vodAdapter:Lcom/nettv/livestore/adapter/VodRecyclerAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/MovieSecondActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/RealmController;->getFavMovieNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceVodFavNames(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onUnFavClick$1(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/MovieSecondActivity;->vodAdapter:Lcom/nettv/livestore/adapter/VodRecyclerAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/MovieSecondActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/RealmController;->getFavMovieNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceVodFavNames(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onFavClick(Lcom/nettv/livestore/models/MovieModel;I)V
    .registers 6

    .line 1
    sget-object v0, Lcom/nettv/livestore/apps/Constants;->xxx_vod_categories:Ljava/util/List;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    iget-object v2, v1, Lcom/nettv/livestore/activities/MovieSecondActivity;->categoryModels:Ljava/util/List;

    iget v1, v1, Lcom/nettv/livestore/activities/MovieSecondActivity;->category_pos:I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 2
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/nettv/livestore/activities/MovieSecondActivity$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, v2}, Lcom/nettv/livestore/activities/MovieSecondActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/MovieSecondActivity$1;II)V

    invoke-virtual {v0, p1, v2, v1}, Lcom/nettv/livestore/helper/RealmController;->addToFavMovie(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    :cond_29
    return-void
.end method

.method public onFocusPosition(I)V
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    iput p1, v0, Lcom/nettv/livestore/activities/MovieSecondActivity;->pre_movie_pos:I

    return-void
.end method

.method public onItemClick(Lcom/nettv/livestore/models/MovieModel;I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    iget v1, v0, Lcom/nettv/livestore/activities/MovieSecondActivity;->category_pos:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1f

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getCategory_id()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/nettv/livestore/activities/MovieSecondActivity;->checkAdultMovie(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/nettv/livestore/activities/MovieSecondActivity;->access$000(Lcom/nettv/livestore/activities/MovieSecondActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    # invokes: Lcom/nettv/livestore/activities/MovieSecondActivity;->showMovieLockDlgFragment(Lcom/nettv/livestore/models/MovieModel;I)V
    invoke-static {v0, p1, p2}, Lcom/nettv/livestore/activities/MovieSecondActivity;->access$100(Lcom/nettv/livestore/activities/MovieSecondActivity;Lcom/nettv/livestore/models/MovieModel;I)V

    goto :goto_83

    .line 3
    :cond_1f
    iget-object p2, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p2, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    iget-object v0, p2, Lcom/nettv/livestore/activities/MovieSecondActivity;->categoryModels:Ljava/util/List;

    iget p2, p2, Lcom/nettv/livestore/activities/MovieSecondActivity;->category_pos:I

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "resume_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_42

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    # invokes: Lcom/nettv/livestore/activities/MovieSecondActivity;->playRecentMovie(Lcom/nettv/livestore/models/MovieModel;)V
    invoke-static {p2, p1}, Lcom/nettv/livestore/activities/MovieSecondActivity;->access$200(Lcom/nettv/livestore/activities/MovieSecondActivity;Lcom/nettv/livestore/models/MovieModel;)V

    goto :goto_83

    .line 6
    :cond_42
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    const-class v1, Lcom/nettv/livestore/activities/MovieInfoActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stream_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/MovieSecondActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    const-string v1, "category_name"

    if-eqz v0, :cond_71

    .line 10
    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getCategory_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7e

    .line 11
    :cond_71
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/nettv/livestore/activities/MovieSecondActivity;->getMovieCategoryName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/MovieSecondActivity;->access$300(Lcom/nettv/livestore/activities/MovieSecondActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    :goto_7e
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_83
    return-void
.end method

.method public onUnFavClick(Lcom/nettv/livestore/models/MovieModel;I)V
    .registers 6

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/nettv/livestore/activities/MovieSecondActivity$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/nettv/livestore/activities/MovieSecondActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/MovieSecondActivity$1;II)V

    invoke-virtual {v0, p1, v2, v1}, Lcom/nettv/livestore/helper/RealmController;->addToFavMovie(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    return-void
.end method
