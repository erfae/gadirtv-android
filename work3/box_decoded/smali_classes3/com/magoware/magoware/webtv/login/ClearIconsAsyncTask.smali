.class public Lcom/magoware/magoware/webtv/login/ClearIconsAsyncTask;
.super Landroid/os/AsyncTask;
.source "ClearIconsAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field clearIconsListener:Lcom/magoware/magoware/webtv/util/ClearIconsListener;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/util/ClearIconsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/ClearIconsAsyncTask;->clearIconsListener:Lcom/magoware/magoware/webtv/util/ClearIconsListener;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/MagowareApplication;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 33
    :try_start_0
    invoke-static {v1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllChannelsAndCatchup(Z)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    .line 34
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 35
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->icon_url:Ljava/lang/String;

    invoke-static {v4}, Lcom/magoware/magoware/webtv/util/Utils;->getFilenameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/magoware/magoware/webtv/MagowareApplication;->deleteFile(Ljava/lang/String;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->deleteAllChannelsAndCategories()V

    .line 40
    invoke-static {}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectVods()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    .line 41
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 42
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/VODObject;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/database/objects/VODObject;->icon:Ljava/lang/String;

    invoke-static {v4}, Lcom/magoware/magoware/webtv/util/Utils;->getFilenameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 43
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 48
    :cond_1
    invoke-static {v1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllVODcategories(Z)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    .line 49
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 50
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;->IconUrl:Ljava/lang/String;

    invoke-static {v4}, Lcom/magoware/magoware/webtv/util/Utils;->getFilenameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 54
    :cond_2
    invoke-static {}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->deleteAllVOD()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    .line 16
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/login/ClearIconsAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "successfully"
        }
    .end annotation

    .line 64
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/ClearIconsAsyncTask;->clearIconsListener:Lcom/magoware/magoware/webtv/util/ClearIconsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/magoware/magoware/webtv/util/ClearIconsListener;->onIconsCleared(Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "successfully"
        }
    .end annotation

    .line 16
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/login/ClearIconsAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 25
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
