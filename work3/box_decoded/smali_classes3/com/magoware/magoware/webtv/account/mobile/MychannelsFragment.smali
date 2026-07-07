.class public Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;
.super Landroidx/fragment/app/Fragment;
.source "MychannelsFragment.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment$AddChannelDialogListener;
.implements Lcom/magoware/magoware/webtv/account/mobile/EditChannelDialogFragment$EditChannelDialogListener;


# static fields
.field public static final ARG_POSITION:Ljava/lang/String; = "position"


# instance fields
.field private addBtn:Landroid/widget/Button;

.field private addChannelDialogFragment:Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;

.field private cat:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field private categories_hash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private category:Landroid/widget/TextView;

.field private category_response:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field private channel_number:Landroid/widget/TextView;

.field private channelsTable:Landroid/widget/TableLayout;

.field private conf_btn_personal:Landroid/graphics/drawable/Drawable;

.field private description:Landroid/widget/TextView;

.field private editBtn:Landroid/widget/Button;

.field private editBtnLayout:Landroid/widget/LinearLayout;

.field private editButtonText:Ljava/lang/String;

.field private editChannelDialogFragment:Lcom/magoware/magoware/webtv/account/mobile/EditChannelDialogFragment;

.field private first_blue_color:I

.field private layout_mask:I

.field mCurrentPosition:I

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private resources:Landroid/content/res/Resources;

.field private stream_url:Landroid/widget/TextView;

.field private thisActivity:Landroidx/fragment/app/FragmentActivity;

.field private title:Landroid/widget/TextView;

.field private white1_color:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->mCurrentPosition:I

    return-void
.end method

.method private editChannel(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelNr"
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->editChannel(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$P-zMv652Jo6c1_IOa6haDaqsRXY;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$P-zMv652Jo6c1_IOa6haDaqsRXY;-><init>(Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method static synthetic lambda$onCreateView$1(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 99
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 100
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 101
    iget-object p0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    .line 102
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    :cond_1
    return-void
.end method

.method static synthetic lambda$onCreateView$2(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 109
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 110
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 111
    iget-object p0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 112
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    :cond_1
    return-void
.end method

.method static synthetic lambda$onFinishAddChannel$4(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 154
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 155
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 156
    iget-object p0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 157
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    :cond_1
    return-void
.end method

.method private populateTable(Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 280
    iget-object v1, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 282
    iget-object v2, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/16 v3, 0x32

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v2, v3

    .line 284
    invoke-static {}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllCategoriesObjects()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->cat:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 285
    :goto_0
    iget-object v5, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->cat:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 286
    iget-object v5, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->categories_hash:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->cat:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget v6, v6, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->cat:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget-object v7, v7, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 290
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 291
    new-instance v5, Landroid/widget/TableRow;

    iget-object v6, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v5, v6}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    move-object/from16 v6, p1

    .line 292
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;

    .line 294
    new-instance v8, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v8}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    .line 295
    new-instance v9, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v9}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    .line 296
    new-instance v10, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v10}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    .line 299
    iget v11, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->layout_mask:I

    const/4 v12, -0x2

    const/4 v13, 0x3

    const/16 v14, 0xa

    if-ge v11, v13, :cond_1

    .line 300
    new-instance v11, Landroid/widget/TableRow$LayoutParams;

    iget-object v15, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    const/16 v13, 0x64

    invoke-static {v15, v13}, Lcom/magoware/magoware/webtv/util/Utils;->convertDPI(Landroid/content/Context;I)I

    move-result v13

    invoke-direct {v11, v13, v12}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 305
    :cond_1
    new-instance v11, Landroid/widget/TableRow$LayoutParams;

    const/16 v13, 0x96

    invoke-direct {v11, v13, v12}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 306
    invoke-virtual {v11, v3, v14, v14, v14}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 307
    iput v3, v8, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 308
    iput v3, v9, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 309
    iput v3, v10, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 310
    iput v3, v11, Landroid/widget/TableRow$LayoutParams;->width:I

    const/high16 v12, 0x3f800000    # 1.0f

    .line 311
    iput v12, v8, Landroid/widget/TableRow$LayoutParams;->weight:F

    const/high16 v12, 0x40400000    # 3.0f

    .line 312
    iput v12, v9, Landroid/widget/TableRow$LayoutParams;->weight:F

    .line 313
    iput v12, v10, Landroid/widget/TableRow$LayoutParams;->weight:F

    const/high16 v12, 0x40000000    # 2.0f

    .line 314
    iput v12, v11, Landroid/widget/TableRow$LayoutParams;->weight:F

    .line 315
    invoke-virtual {v8, v2, v3, v3, v3}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 321
    :goto_2
    new-instance v12, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;

    iget-object v13, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v12, v13}, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channel_number:Landroid/widget/TextView;

    .line 322
    new-instance v12, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;

    iget-object v13, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v12, v13}, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->title:Landroid/widget/TextView;

    .line 323
    new-instance v12, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;

    iget-object v13, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v12, v13}, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->description:Landroid/widget/TextView;

    .line 324
    new-instance v12, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;

    iget-object v13, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v12, v13}, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->stream_url:Landroid/widget/TextView;

    .line 325
    new-instance v12, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansBoldButton;

    iget-object v13, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v12, v13}, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansBoldButton;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->editBtn:Landroid/widget/Button;

    .line 326
    new-instance v12, Landroid/widget/LinearLayout;

    iget-object v13, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->editBtnLayout:Landroid/widget/LinearLayout;

    .line 327
    new-instance v12, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;

    iget-object v13, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v12, v13}, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->category:Landroid/widget/TextView;

    .line 330
    iget-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channel_number:Landroid/widget/TextView;

    div-int/lit8 v13, v1, 0x5a

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setWidth(I)V

    .line 331
    iget-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->title:Landroid/widget/TextView;

    div-int/lit8 v13, v1, 0xa

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setWidth(I)V

    .line 332
    iget-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->category:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setWidth(I)V

    .line 333
    iget-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->description:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setWidth(I)V

    .line 334
    iget-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->stream_url:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setWidth(I)V

    .line 336
    iget-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channel_number:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->setSingleLine()V

    .line 337
    iget-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->title:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->setSingleLine()V

    .line 338
    iget-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->category:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->setSingleLine()V

    .line 339
    iget-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->description:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->setSingleLine()V

    .line 340
    iget-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->stream_url:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->setSingleLine()V

    .line 342
    iget-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channel_number:Landroid/widget/TextView;

    iget-object v13, v7, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->channel_number:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->title:Landroid/widget/TextView;

    iget-object v13, v7, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->title:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->category:Landroid/widget/TextView;

    iget-object v13, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->categories_hash:Ljava/util/HashMap;

    iget v15, v7, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->genre_id:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->description:Landroid/widget/TextView;

    iget-object v13, v7, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->description:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->stream_url:Landroid/widget/TextView;

    iget-object v13, v7, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->stream_url:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->editBtn:Landroid/widget/Button;

    iget-object v13, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->editButtonText:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->editBtn:Landroid/widget/Button;

    iget-object v13, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->resources:Landroid/content/res/Resources;

    const v15, 0x7f080102

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 352
    iget-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->editBtn:Landroid/widget/Button;

    iget v13, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->white1_color:I

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 361
    iget-object v12, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->editBtn:Landroid/widget/Button;

    new-instance v13, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$sun5ha4zMhB37i8mB3QqJ7oLW78;

    invoke-direct {v13, v0, v7}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$sun5ha4zMhB37i8mB3QqJ7oLW78;-><init>(Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->layout_mask:I

    const/4 v12, 0x3

    if-ge v7, v12, :cond_2

    const/16 v7, 0x14

    .line 372
    invoke-virtual {v11, v7, v3, v14, v14}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 380
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->editBtn:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 382
    :cond_2
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->editBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0703aa

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setWidth(I)V

    .line 383
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->editBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->editBtnLayout:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->editBtn:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    :goto_3
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channel_number:Landroid/widget/TextView;

    iget v11, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->first_blue_color:I

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 388
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->title:Landroid/widget/TextView;

    iget v11, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->first_blue_color:I

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 389
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->category:Landroid/widget/TextView;

    iget v11, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->first_blue_color:I

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 390
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->description:Landroid/widget/TextView;

    iget v11, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->first_blue_color:I

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 391
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->stream_url:Landroid/widget/TextView;

    iget v11, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->first_blue_color:I

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 393
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channel_number:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->title:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->category:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->description:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->stream_url:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channel_number:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 401
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->title:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 402
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 403
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->stream_url:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 404
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->category:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 407
    iget v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->layout_mask:I

    const/4 v8, 0x3

    if-ge v7, v8, :cond_3

    .line 408
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->editBtn:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 410
    :cond_3
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->editBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 413
    :goto_4
    iget-object v7, v0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v7, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_4
    return-void
.end method

.method private showAdddNewChannelDialog()V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 267
    invoke-static {}, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->newInstance()Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->addChannelDialogFragment:Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;

    const/16 v2, 0x12c

    .line 268
    invoke-virtual {v1, p0, v2}, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 269
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->addChannelDialogFragment:Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;

    const-string v2, "add_channel_frag"

    invoke-virtual {v1, v0, v2}, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showEditChannelDialog(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 274
    invoke-static {p1}, Lcom/magoware/magoware/webtv/account/mobile/EditChannelDialogFragment;->newInstance(Landroid/os/Bundle;)Lcom/magoware/magoware/webtv/account/mobile/EditChannelDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->editChannelDialogFragment:Lcom/magoware/magoware/webtv/account/mobile/EditChannelDialogFragment;

    const/16 v1, 0x12c

    .line 275
    invoke-virtual {p1, p0, v1}, Lcom/magoware/magoware/webtv/account/mobile/EditChannelDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 276
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->editChannelDialogFragment:Lcom/magoware/magoware/webtv/account/mobile/EditChannelDialogFragment;

    const-string v1, "edit_channel_frag"

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/account/mobile/EditChannelDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$editChannel$13$MychannelsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 430
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 431
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 432
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->category_response:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    .line 433
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 435
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$editChannel$14$MychannelsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 441
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 442
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 444
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->populateTable(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 447
    :cond_1
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    if-eqz v1, :cond_2

    .line 448
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 450
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f1402d8

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$editChannel$15$MychannelsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 420
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    .line 421
    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    .line 423
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 424
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1400c0

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 428
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getChannelsListObservable()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$iYgdeswOSgypHbiz3p12LXzcgGI;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$iYgdeswOSgypHbiz3p12LXzcgGI;-><init>(Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 439
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getCustomerChannelsObservable()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$HY1v3uh3J6s5Q95UoEi5bqfJkzw;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$HY1v3uh3J6s5Q95UoEi5bqfJkzw;-><init>(Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_1

    .line 454
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f1402d8

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onCreateView$0$MychannelsFragment(Landroid/view/View;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->showAdddNewChannelDialog()V

    return-void
.end method

.method public synthetic lambda$onCreateView$3$MychannelsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 121
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->populateTable(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 126
    :cond_1
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    if-eqz v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f1402d8

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onFinishAddChannel$5$MychannelsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 165
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 166
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->populateTable(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 171
    :cond_1
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    if-eqz v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 174
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f1402d8

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onFinishAddChannel$6$MychannelsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 187
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 188
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 189
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->category_response:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    .line 190
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onFinishAddChannel$7$MychannelsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 199
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->populateTable(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 203
    :cond_1
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    if-eqz v1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 206
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f1402d8

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onFinishAddChannel$8$MychannelsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 5

    const-string v0, " : "

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 151
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->addChannelDialogFragment:Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->dismiss()V

    .line 152
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getChannelsListObservable()Landroidx/lifecycle/LiveData;

    move-result-object v2

    iget-object v3, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    sget-object v4, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$mPYhROFafSEy1-uABepZ7hluXfg;->INSTANCE:Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$mPYhROFafSEy1-uABepZ7hluXfg;

    invoke-virtual {v2, v3, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 163
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getCustomerChannelsObservable()Landroidx/lifecycle/LiveData;

    move-result-object v2

    iget-object v3, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v4, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$YHAI5IvAngVwkGhDqefetmteaEM;

    invoke-direct {v4, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$YHAI5IvAngVwkGhDqefetmteaEM;-><init>(Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;)V

    invoke-virtual {v2, v3, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 177
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1400c0

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 179
    :cond_0
    iget-object v2, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    const v0, 0x7f1402d8

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 184
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->addChannelDialogFragment:Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->dismiss()V

    .line 185
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getChannelsListObservable()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$C0GkjFYs0fUYaqbwBev7AfLqtu8;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$C0GkjFYs0fUYaqbwBev7AfLqtu8;-><init>(Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 196
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getCustomerChannelsObservable()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$9kK5zqqxRYCOxYgKxUN-qbZTQAE;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$9kK5zqqxRYCOxYgKxUN-qbZTQAE;-><init>(Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onFinishEditChannel$10$MychannelsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 240
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 241
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->populateTable(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 246
    :cond_1
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    if-eqz v1, :cond_2

    .line 247
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 249
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f1402d8

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onFinishEditChannel$11$MychannelsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 5

    const-string v0, " : "

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 222
    :goto_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 223
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1400c0

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 227
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getChannelsListObservable()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$ikWHkxxr0cGEesJAK1lddvMoaVU;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$ikWHkxxr0cGEesJAK1lddvMoaVU;-><init>(Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 238
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getCustomerChannelsObservable()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$_Fb5eg9-wipIUkd2x75Kvy3yqgg;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$_Fb5eg9-wipIUkd2x75Kvy3yqgg;-><init>(Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_1

    .line 253
    :cond_1
    iget-object v2, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    if-eqz v2, :cond_2

    .line 254
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 256
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    const v0, 0x7f1402d8

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onFinishEditChannel$9$MychannelsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 229
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 230
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 231
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->category_response:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    .line 232
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 234
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$populateTable$12$MychannelsFragment(Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;Landroid/view/View;)V
    .locals 2

    .line 362
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 363
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->title:Ljava/lang/String;

    const-string v1, "channel_title"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->stream_url:Ljava/lang/String;

    const-string v1, "stream_url"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->description:Ljava/lang/String;

    const-string v1, "description"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->channel_number:Ljava/lang/String;

    const-string v1, "channel_number"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->genre_id:I

    const-string v0, "genre_id"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 368
    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->showEditChannelDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 70
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->categories_hash:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    const-string v0, "position"

    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->mCurrentPosition:I

    .line 76
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    iput p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->layout_mask:I

    .line 79
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    const p1, 0x7f1402d2

    .line 80
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->editButtonText:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080102

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->conf_btn_personal:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    .line 89
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const p3, 0x7f0e0186

    .line 90
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p3, 0x7f0e0184

    .line 91
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060006

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->white1_color:I

    .line 93
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0600fe

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->first_blue_color:I

    const p2, 0x7f0b0472

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TableLayout;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    const p2, 0x7f0b0471

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->addBtn:Landroid/widget/Button;

    .line 96
    new-instance p3, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$Te2X3KgJjom-eMyvEZbsFfLm0aE;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$Te2X3KgJjom-eMyvEZbsFfLm0aE;-><init>(Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getCustomerChannelCategoryObservable()Landroidx/lifecycle/LiveData;

    move-result-object p2

    iget-object p3, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    sget-object v0, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$hpoy4ikYlivPF5an-rKpH6lCkb4;->INSTANCE:Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$hpoy4ikYlivPF5an-rKpH6lCkb4;

    invoke-virtual {p2, p3, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 107
    iget-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getChannelsListObservable()Landroidx/lifecycle/LiveData;

    move-result-object p2

    iget-object p3, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    sget-object v0, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$myLW7K0UqxEd72ZVZc2g8IwNXgw;->INSTANCE:Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$myLW7K0UqxEd72ZVZc2g8IwNXgw;

    invoke-virtual {p2, p3, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 118
    iget-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getCustomerChannelsObservable()Landroidx/lifecycle/LiveData;

    move-result-object p2

    iget-object p3, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$ZObWKcVpvfA9dSgx__scDBlMHbA;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$ZObWKcVpvfA9dSgx__scDBlMHbA;-><init>(Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;)V

    invoke-virtual {p2, p3, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 143
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onFinishAddChannel(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    const-string v1, "title"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "description"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "stream"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "icon_url"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "genre_id"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->addChannelObservable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$H-izMVDHd-T36XY2EphMu_GEuRw;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$H-izMVDHd-T36XY2EphMu_GEuRw;-><init>(Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onFinishEditChannel(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "text_nr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->editChannelDialogFragment:Lcom/magoware/magoware/webtv/account/mobile/EditChannelDialogFragment;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/account/mobile/EditChannelDialogFragment;->dismiss()V

    .line 218
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 219
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->deleteChannelObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$7i43kmJsZnDLb5nMNRIfgcEXA2g;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$7i43kmJsZnDLb5nMNRIfgcEXA2g;-><init>(Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    .line 260
    :cond_0
    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->editChannel(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 137
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 138
    iget v0, p0, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->mCurrentPosition:I

    const-string v1, "position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
