.class public Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;
.super Landroidx/leanback/app/RowsSupportFragment;
.source "MainMenuLayersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment$OnFirstLevelItemSelected;
    }
.end annotation


# static fields
.field private static menu_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private first_parent_desc:Ljava/lang/String;

.field private first_parent_id:I

.field private load_data:Ljava/lang/Boolean;

.field mCallback:Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment$OnFirstLevelItemSelected;

.field private mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private paused:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/leanback/app/RowsSupportFragment;-><init>()V

    const/4 v0, 0x1

    .line 52
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->load_data:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 53
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->paused:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;)Ljava/lang/Boolean;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->load_data:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$002(Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->load_data:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;)Ljava/lang/Boolean;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->paused:Ljava/lang/Boolean;

    return-object p0
.end method

.method private createCardRow(Landroidx/leanback/supportleanbackshowcase/models/CardRow;)Landroidx/leanback/widget/Row;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cardRow"
        }
    .end annotation

    .line 127
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;-><init>(Landroid/content/Context;)V

    .line 128
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/PresenterSelector;)V

    .line 129
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->getCards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/leanback/supportleanbackshowcase/models/Card;

    .line 130
    invoke-virtual {v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Landroidx/leanback/widget/HeaderItem;

    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 134
    invoke-virtual {p1, v2}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setShadow(Z)V

    .line 135
    new-instance v2, Landroidx/leanback/supportleanbackshowcase/utils/CardListRow;

    invoke-direct {v2, v0, v1, p1}, Landroidx/leanback/supportleanbackshowcase/utils/CardListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;Landroidx/leanback/supportleanbackshowcase/models/CardRow;)V

    return-object v2
.end method

.method private createFirstLayer()V
    .locals 5

    .line 149
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;

    invoke-direct {v0}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;-><init>()V

    .line 151
    sget-object v1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->menu_list:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 153
    sget-object v1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->menu_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    .line 154
    new-instance v3, Landroidx/leanback/supportleanbackshowcase/models/Card;

    invoke-direct {v3}, Landroidx/leanback/supportleanbackshowcase/models/Card;-><init>()V

    .line 155
    iget-object v4, v2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setTitle(Ljava/lang/String;)V

    .line 156
    iget-object v4, v2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->icon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setIcon(Ljava/lang/String;)V

    .line 157
    sget-object v4, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->MENU:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setType(Landroidx/leanback/supportleanbackshowcase/models/Card$Type;)V

    .line 158
    iget-object v4, v2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setId(Ljava/lang/String;)V

    .line 159
    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->menu_description:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setDescription(Ljava/lang/String;)V

    const-string v2, "main"

    .line 160
    invoke-virtual {v3, v2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setRate(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, v3}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setCard(Landroidx/leanback/supportleanbackshowcase/models/Card;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 163
    invoke-virtual {v0, v1}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setType(I)V

    const/4 v1, 0x0

    .line 164
    invoke-virtual {v0, v1}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setShadow(Z)V

    .line 165
    iget-object v1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->createCardRow(Landroidx/leanback/supportleanbackshowcase/models/CardRow;)Landroidx/leanback/widget/Row;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private createRows()V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->createFirstLayer()V

    return-void
.end method

.method static synthetic lambda$getMenuLayer1$2(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 204
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getMenuLayer2$4(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 258
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method private loadData()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->load_data:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Landroidx/leanback/widget/ListRowPresenter;

    invoke-direct {v1}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 116
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 117
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->createRows()V

    :cond_0
    return-void
.end method

.method private setupUi()V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->setAllowEnterTransitionOverlap(Z)V

    return-void
.end method


# virtual methods
.method public getMenuLayer1()V
    .locals 7

    .line 172
    new-instance v6, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment$1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/apiv2/main/device_menu_levelone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment$kXsWFKym_3974syJgSRnPcFeI8U;

    invoke-direct {v4, p0}, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment$kXsWFKym_3974syJgSRnPcFeI8U;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;)V

    sget-object v5, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment$LoBsh0lYrlKMu5SEnasX20sZZdE;->INSTANCE:Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment$LoBsh0lYrlKMu5SEnasX20sZZdE;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment$1;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const/4 v0, 0x1

    .line 226
    invoke-virtual {v6, v0}, Lcom/android/volley/toolbox/StringRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 227
    invoke-static {}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->getInstance()Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getMenuLayer2()V
    .locals 7

    .line 232
    new-instance v6, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment$3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/apiv2/main/device_menu_leveltwo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment$g3VxsAXNXqa1fZCheTDBmL0pTtI;

    invoke-direct {v4, p0}, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment$g3VxsAXNXqa1fZCheTDBmL0pTtI;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;)V

    sget-object v5, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment$9mPHSnvuegCI7uX5nHx4XtFcY0A;->INSTANCE:Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment$9mPHSnvuegCI7uX5nHx4XtFcY0A;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment$3;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const/4 v0, 0x1

    .line 280
    invoke-virtual {v6, v0}, Lcom/android/volley/toolbox/StringRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 281
    invoke-static {}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->getInstance()Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public synthetic lambda$getMenuLayer1$1$MainMenuLayersFragment(Ljava/lang/String;)V
    .locals 3

    .line 175
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 176
    new-instance v1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment$2;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment$2;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;)V

    .line 177
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 179
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    .line 181
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->first_parent_id:I

    .line 182
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->menu_description:Ljava/lang/String;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->first_parent_desc:Ljava/lang/String;

    .line 183
    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_2

    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 184
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 185
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 187
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    .line 188
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    .line 192
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 193
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 194
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    sput-object p1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->menu_list:Ljava/util/ArrayList;

    .line 196
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    .line 197
    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->icon:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->getPermanentFile1(Ljava/lang/String;ZLandroid/content/Context;)V

    goto :goto_1

    .line 200
    :cond_1
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 201
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 203
    :cond_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->getMenuLayer2()V

    return-void
.end method

.method public synthetic lambda$getMenuLayer2$3$MainMenuLayersFragment(Ljava/lang/String;)V
    .locals 3

    .line 235
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 236
    new-instance v1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment$4;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment$4;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;)V

    .line 237
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 239
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    .line 241
    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_2

    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 242
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 244
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    .line 245
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 247
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    .line 249
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 250
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 251
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    .line 252
    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->icon:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->getPermanentFile1(Ljava/lang/String;ZLandroid/content/Context;)V

    goto :goto_1

    .line 254
    :cond_1
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 255
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 257
    :cond_2
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->loadData()V

    return-void
.end method

.method public synthetic lambda$onCreate$0$MainMenuLayersFragment(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 0

    .line 69
    invoke-virtual {p3}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/leanback/supportleanbackshowcase/models/Card;

    if-eqz p1, :cond_0

    .line 71
    iget-object p2, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->mCallback:Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment$OnFirstLevelItemSelected;

    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment$OnFirstLevelItemSelected;->onFirstLevelItemSelected(ILjava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->mCallback:Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment$OnFirstLevelItemSelected;

    iget p2, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->first_parent_id:I

    iget-object p3, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->first_parent_desc:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment$OnFirstLevelItemSelected;->onFirstLevelItemSelected(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 91
    invoke-super {p0, p1}, Landroidx/leanback/app/RowsSupportFragment;->onAttach(Landroid/content/Context;)V

    .line 93
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment$OnFirstLevelItemSelected;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->mCallback:Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment$OnFirstLevelItemSelected;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 95
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnHeadlineSelectedListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 61
    invoke-super {p0, p1}, Landroidx/leanback/app/RowsSupportFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 63
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->load_data:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 64
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->paused:Ljava/lang/Boolean;

    .line 66
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->setupUi()V

    .line 68
    new-instance p1, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment$SDA49wOL02r8sjuJZ2GmhFUPwOs;

    invoke-direct {p1, p0}, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment$SDA49wOL02r8sjuJZ2GmhFUPwOs;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;)V

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/BaseOnItemViewSelectedListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 106
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/RowsSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 85
    invoke-super {p0}, Landroidx/leanback/app/RowsSupportFragment;->onPause()V

    const/4 v0, 0x1

    .line 86
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->paused:Ljava/lang/Boolean;

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 79
    invoke-super {p0}, Landroidx/leanback/app/RowsSupportFragment;->onResume()V

    .line 80
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment;->getMenuLayer1()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 101
    invoke-super {p0, p1, p2}, Landroidx/leanback/app/RowsSupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 145
    invoke-super {p0, p1}, Landroidx/leanback/app/RowsSupportFragment;->setSelectedPosition(I)V

    return-void
.end method

.method public setSelectedPosition(IZLandroidx/leanback/widget/Presenter$ViewHolderTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "rowPosition",
            "smooth",
            "rowHolderTask"
        }
    .end annotation

    const/4 p2, 0x0

    .line 140
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/RowsSupportFragment;->setSelectedPosition(IZLandroidx/leanback/widget/Presenter$ViewHolderTask;)V

    return-void
.end method
