.class Lcom/nettv/livestore/apps/BaseActivity$7;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/apps/BaseActivity;->getVodStreams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Ljava/util/List<",
        "Lcom/nettv/livestore/models/MovieModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/apps/BaseActivity;

.field public final synthetic val$resumeModels:Ljava/util/List;

.field public final synthetic val$vod_favorites:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$R2nBym0-nyCRmHj3LWOeFpPV7qY(Lcom/nettv/livestore/models/ResumeModel;Lio/realm/Realm;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nettv/livestore/apps/BaseActivity$7;->lambda$onResponse$2(Lcom/nettv/livestore/models/ResumeModel;Lio/realm/Realm;)V

    return-void
.end method

.method public static synthetic $r8$lambda$__o077Uw775xzaImW7vtJz_Nm_E(Ljava/lang/String;Lio/realm/Realm;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nettv/livestore/apps/BaseActivity$7;->lambda$onResponse$1(Ljava/lang/String;Lio/realm/Realm;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ll5pE5PDLuWeR5Bog3Yig9uFwOQ(Lretrofit2/Response;Lio/realm/Realm;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nettv/livestore/apps/BaseActivity$7;->lambda$onResponse$0(Lretrofit2/Response;Lio/realm/Realm;)V

    return-void
.end method

.method public constructor <init>(Lcom/nettv/livestore/apps/BaseActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$7;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    iput-object p2, p0, Lcom/nettv/livestore/apps/BaseActivity$7;->val$vod_favorites:Ljava/util/List;

    iput-object p3, p0, Lcom/nettv/livestore/apps/BaseActivity$7;->val$resumeModels:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onResponse$0(Lretrofit2/Response;Lio/realm/Realm;)V
    .locals 1

    .line 1
    const-class v0, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    .line 3
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {p1, p0}, Lio/realm/Realm;->insertOrUpdate(Ljava/util/Collection;)V

    return-void
.end method

.method private static synthetic lambda$onResponse$1(Ljava/lang/String;Lio/realm/Realm;)V
    .locals 2

    .line 1
    const-class v0, Lcom/nettv/livestore/models/MovieModel;

    const-string v1, "name"

    .line 2
    invoke-static {p1, v0, v1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Lcom/nettv/livestore/models/MovieModel;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->setIs_favorite(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onResponse$2(Lcom/nettv/livestore/models/ResumeModel;Lio/realm/Realm;)V
    .locals 2

    .line 1
    const-class v0, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p0}, Lcom/nettv/livestore/models/ResumeModel;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/MovieModel;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/nettv/livestore/models/MovieModel;->setIs_recent(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/nettv/livestore/models/ResumeModel;->getPro()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/models/MovieModel;->setPro(I)V

    .line 4
    invoke-virtual {p0}, Lcom/nettv/livestore/models/ResumeModel;->getLast_position()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/nettv/livestore/models/MovieModel;->setTime(J)V

    .line 5
    invoke-virtual {p0}, Lcom/nettv/livestore/models/ResumeModel;->getTmdb_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/nettv/livestore/models/MovieModel;->setTmdb_id(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lretrofit2/Call;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/MovieModel;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$7;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    iget-boolean p2, p1, Lcom/nettv/livestore/apps/BaseActivity;->is_stop:Z

    if-nez p2, :cond_1

    .line 2
    iget p2, p1, Lcom/nettv/livestore/apps/BaseActivity;->error_account:I

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 3
    iput p2, p1, Lcom/nettv/livestore/apps/BaseActivity;->error_account:I

    .line 4
    invoke-static {p1}, Lcom/nettv/livestore/apps/BaseActivity;->access$500(Lcom/nettv/livestore/apps/BaseActivity;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/nettv/livestore/apps/BaseActivity;->access$800(Lcom/nettv/livestore/apps/BaseActivity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .param p1    # Lretrofit2/Call;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lretrofit2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/MovieModel;",
            ">;>;",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/MovieModel;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$7;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    const/4 v0, 0x0

    iput v0, p1, Lcom/nettv/livestore/apps/BaseActivity;->error_account:I

    .line 3
    iget-object p1, p1, Lcom/nettv/livestore/apps/BaseActivity;->realm:Lio/realm/Realm;

    new-instance v0, Lcom/nettv/livestore/apps/BaseActivity$5$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p2, v1}, Lcom/nettv/livestore/apps/BaseActivity$5$$ExternalSyntheticLambda0;-><init>(Lretrofit2/Response;I)V

    invoke-virtual {p1, v0}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$7;->val$vod_favorites:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$7;->val$vod_favorites:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$7;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    iget-object v0, v0, Lcom/nettv/livestore/apps/BaseActivity;->realm:Lio/realm/Realm;

    new-instance v1, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda5;

    const/4 v2, 0x6

    invoke-direct {v1, p2, v2}, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$7;->val$resumeModels:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$7;->val$resumeModels:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nettv/livestore/models/ResumeModel;

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$7;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    iget-object v0, v0, Lcom/nettv/livestore/apps/BaseActivity;->realm:Lio/realm/Realm;

    new-instance v1, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda3;-><init>(Lcom/nettv/livestore/models/ResumeModel;I)V

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$7;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    iget-boolean p2, p1, Lcom/nettv/livestore/apps/BaseActivity;->is_stop:Z

    if-nez p2, :cond_2

    .line 11
    invoke-static {p1}, Lcom/nettv/livestore/apps/BaseActivity;->access$800(Lcom/nettv/livestore/apps/BaseActivity;)V

    :cond_2
    return-void
.end method
