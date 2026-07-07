.class Lcom/nettv/livestore/apps/BaseActivity$6;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/apps/BaseActivity;->getSecondLiveStreams()V
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
        "Lcom/nettv/livestore/models/EPGChannel;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/apps/BaseActivity;

.field public final synthetic val$live_favorites:Ljava/util/List;

.field public final synthetic val$lock_channels:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$dNX9OZuk08DDAj8sPfXHT8d92yk(Lretrofit2/Response;Lio/realm/Realm;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/nettv/livestore/apps/BaseActivity$6;->lambda$onResponse$0(Lretrofit2/Response;Lio/realm/Realm;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lXCJjuONipZCvVkA_ar1NwGEs10(Ljava/lang/String;Lio/realm/Realm;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/nettv/livestore/apps/BaseActivity$6;->lambda$onResponse$2(Ljava/lang/String;Lio/realm/Realm;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wlLOllWY-xCjwDFH1d5jk7WU_js(Ljava/lang/String;Lio/realm/Realm;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/nettv/livestore/apps/BaseActivity$6;->lambda$onResponse$1(Ljava/lang/String;Lio/realm/Realm;)V

    return-void
.end method

.method public constructor <init>(Lcom/nettv/livestore/apps/BaseActivity;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$6;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    iput-object p2, p0, Lcom/nettv/livestore/apps/BaseActivity$6;->val$live_favorites:Ljava/util/List;

    iput-object p3, p0, Lcom/nettv/livestore/apps/BaseActivity$6;->val$lock_channels:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onResponse$0(Lretrofit2/Response;Lio/realm/Realm;)V
    .registers 3

    .line 1
    const-class v0, Lcom/nettv/livestore/models/EPGChannel;

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
    .registers 4

    .line 1
    const-class v0, Lcom/nettv/livestore/models/EPGChannel;

    const-string v1, "name"

    .line 2
    invoke-static {p1, v0, v1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Lcom/nettv/livestore/models/EPGChannel;

    if-eqz p0, :cond_10

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->setIs_favorite(Z)V

    :cond_10
    return-void
.end method

.method private static synthetic lambda$onResponse$2(Ljava/lang/String;Lio/realm/Realm;)V
    .registers 4

    .line 1
    const-class v0, Lcom/nettv/livestore/models/EPGChannel;

    const-string v1, "name"

    .line 2
    invoke-static {p1, v0, v1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Lcom/nettv/livestore/models/EPGChannel;

    if-eqz p0, :cond_10

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->setIs_locked(Z)V

    :cond_10
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 4
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
            "Lcom/nettv/livestore/models/EPGChannel;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$6;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    iget-boolean p2, p1, Lcom/nettv/livestore/apps/BaseActivity;->is_stop:Z

    if-nez p2, :cond_16

    .line 2
    iget p2, p1, Lcom/nettv/livestore/apps/BaseActivity;->error_account:I

    const/4 v0, 0x2

    if-ge p2, v0, :cond_13

    add-int/lit8 p2, p2, 0x1

    .line 3
    iput p2, p1, Lcom/nettv/livestore/apps/BaseActivity;->error_account:I

    .line 4
    # invokes: Lcom/nettv/livestore/apps/BaseActivity;->getSecondLiveStreams()V
    invoke-static {p1}, Lcom/nettv/livestore/apps/BaseActivity;->access$600(Lcom/nettv/livestore/apps/BaseActivity;)V

    goto :goto_16

    .line 5
    :cond_13
    # invokes: Lcom/nettv/livestore/apps/BaseActivity;->getSecondVodStreams()V
    invoke-static {p1}, Lcom/nettv/livestore/apps/BaseActivity;->access$700(Lcom/nettv/livestore/apps/BaseActivity;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 6
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
            "Lcom/nettv/livestore/models/EPGChannel;",
            ">;>;",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_66

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$6;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    const/4 v0, 0x0

    iput v0, p1, Lcom/nettv/livestore/apps/BaseActivity;->error_account:I

    .line 3
    iget-object p1, p1, Lcom/nettv/livestore/apps/BaseActivity;->realm:Lio/realm/Realm;

    new-instance v0, Lcom/nettv/livestore/apps/BaseActivity$5$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lcom/nettv/livestore/apps/BaseActivity$5$$ExternalSyntheticLambda0;-><init>(Lretrofit2/Response;I)V

    invoke-virtual {p1, v0}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$6;->val$live_favorites:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3e

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$6;->val$live_favorites:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$6;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    iget-object v0, v0, Lcom/nettv/livestore/apps/BaseActivity;->realm:Lio/realm/Realm;

    new-instance v1, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda5;

    const/4 v2, 0x4

    invoke-direct {v1, p2, v2}, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    goto :goto_24

    .line 7
    :cond_3e
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$6;->val$lock_channels:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_66

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$6;->val$lock_channels:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_66

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/apps/BaseActivity$6;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    iget-object v0, v0, Lcom/nettv/livestore/apps/BaseActivity;->realm:Lio/realm/Realm;

    new-instance v1, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda5;

    const/4 v2, 0x5

    invoke-direct {v1, p2, v2}, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    goto :goto_4c

    .line 10
    :cond_66
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$6;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    iget-boolean p2, p1, Lcom/nettv/livestore/apps/BaseActivity;->is_stop:Z

    if-nez p2, :cond_6f

    .line 11
    # invokes: Lcom/nettv/livestore/apps/BaseActivity;->getSecondVodStreams()V
    invoke-static {p1}, Lcom/nettv/livestore/apps/BaseActivity;->access$700(Lcom/nettv/livestore/apps/BaseActivity;)V

    :cond_6f
    return-void
.end method
