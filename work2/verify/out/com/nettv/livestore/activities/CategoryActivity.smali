.class public Lcom/nettv/livestore/activities/CategoryActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public categoryModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            ">;"
        }
    .end annotation
.end field

.field public category_position:I

.field public et_search:Landroid/widget/EditText;

.field public lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

.field public pre_category_pos:I

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

.field public someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public txt_home:Landroid/widget/TextView;

.field public txt_live:Landroid/widget/TextView;

.field public txt_movie:Landroid/widget/TextView;

.field public txt_series:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$FPVZ_F8TW7u2x7jYKQloKOo-zt8(Lcom/nettv/livestore/activities/CategoryActivity;Landroidx/activity/result/ActivityResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CategoryActivity;->lambda$new$3(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JjYfpjwAPWvrpqM_MoH8IoAdARI(Lcom/nettv/livestore/activities/CategoryActivity;Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/CategoryActivity;->lambda$setCategoryAdapter$2(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$e0mXesaaxbha40K95wnz1kAcWx0(Lcom/nettv/livestore/activities/CategoryActivity;Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/CategoryActivity;->lambda$setCategoryAdapter$1(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o1OFwWUifwpVDV6OIQGezcHbc4c(Lcom/nettv/livestore/activities/CategoryActivity;Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/CategoryActivity;->lambda$setCategoryAdapter$0(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nettv/livestore/activities/CategoryActivity;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->category_position:I

    iput v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->pre_category_pos:I

    .line 4
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static synthetic access$000(Lcom/nettv/livestore/activities/CategoryActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CategoryActivity;->searchCategoryModel(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/nettv/livestore/activities/CategoryActivity;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CategoryActivity;->checkAdultCategory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/nettv/livestore/activities/CategoryActivity;Lcom/nettv/livestore/models/CategoryModel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CategoryActivity;->showLockDlgFragment(Lcom/nettv/livestore/models/CategoryModel;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/nettv/livestore/activities/CategoryActivity;Lcom/nettv/livestore/models/CategoryModel;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CategoryActivity;->getCategoryPosition(Lcom/nettv/livestore/models/CategoryModel;)I

    move-result p0

    return p0
.end method

.method private checkAdultCategory(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "xxx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "porn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "adult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    :goto_1c
    return p1
.end method

.method private getCategoryPosition(Lcom/nettv/livestore/models/CategoryModel;)I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2c

    const/4 v0, 0x0

    .line 2
    :goto_a
    iget-object v2, p0, Lcom/nettv/livestore/activities/CategoryActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 3
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nettv/livestore/activities/CategoryActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    return v0

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_2c
    return v1
.end method

.method private initView()V
    .registers 5

    const v0, 0x7f0b03d9

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_home:Landroid/widget/TextView;

    const v0, 0x7f0b03dc

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_live:Landroid/widget/TextView;

    const v0, 0x7f0b03e2

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_movie:Landroid/widget/TextView;

    const v0, 0x7f0b03f7

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_series:Landroid/widget/TextView;

    const v0, 0x7f0b012d

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->et_search:Landroid/widget/EditText;

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_home:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getHome()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_live:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getLive_tv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_movie:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getMovies()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_series:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getSeries()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b02ea

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    .line 15
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_aa

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/view/LiveVerticalGridView;->setLoop(Z)V

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array v0, v2, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 19
    iget-object v1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v2, Lcom/nettv/livestore/activities/CategoryActivity$1;

    invoke-direct {v2, v0}, Lcom/nettv/livestore/activities/CategoryActivity$1;-><init>([Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    goto :goto_b9

    .line 20
    :cond_aa
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v3, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 22
    :goto_b9
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->et_search:Landroid/widget/EditText;

    new-instance v1, Lcom/nettv/livestore/activities/CategoryActivity$2;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/activities/CategoryActivity$2;-><init>(Lcom/nettv/livestore/activities/CategoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroidx/activity/result/ActivityResult;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_81

    .line 2
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_81

    const-string v0, "is_changed"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_82

    goto :goto_59

    :sswitch_23
    const-string v0, "add_group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_59

    :cond_2c
    const/4 v1, 0x4

    goto :goto_59

    :sswitch_2e
    const-string v0, "movie"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto :goto_59

    :cond_37
    const/4 v1, 0x3

    goto :goto_59

    :sswitch_39
    const-string v0, "live"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    goto :goto_59

    :cond_42
    const/4 v1, 0x2

    goto :goto_59

    :sswitch_44
    const-string v0, "home"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    goto :goto_59

    :cond_4d
    const/4 v1, 0x1

    goto :goto_59

    :sswitch_4f
    const-string v0, "series"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    goto :goto_59

    :cond_58
    const/4 v1, 0x0

    :goto_59
    packed-switch v1, :pswitch_data_98

    goto :goto_81

    .line 4
    :pswitch_5d
    sget-object p1, Lcom/nettv/livestore/apps/HomeType;->movies:Lcom/nettv/livestore/apps/HomeType;

    sput-object p1, Lcom/nettv/livestore/apps/LTVApp;->homeType:Lcom/nettv/livestore/apps/HomeType;

    .line 5
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CategoryActivity;->setTextColor()V

    .line 6
    invoke-direct {p0, v2}, Lcom/nettv/livestore/activities/CategoryActivity;->setCategoryAdapter(I)V

    goto :goto_81

    .line 7
    :pswitch_68
    sget-object p1, Lcom/nettv/livestore/apps/HomeType;->live:Lcom/nettv/livestore/apps/HomeType;

    sput-object p1, Lcom/nettv/livestore/apps/LTVApp;->homeType:Lcom/nettv/livestore/apps/HomeType;

    .line 8
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CategoryActivity;->setTextColor()V

    .line 9
    invoke-direct {p0, v2}, Lcom/nettv/livestore/activities/CategoryActivity;->setCategoryAdapter(I)V

    goto :goto_81

    .line 10
    :pswitch_73
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_81

    .line 11
    :pswitch_77
    sget-object p1, Lcom/nettv/livestore/apps/HomeType;->series:Lcom/nettv/livestore/apps/HomeType;

    sput-object p1, Lcom/nettv/livestore/apps/LTVApp;->homeType:Lcom/nettv/livestore/apps/HomeType;

    .line 12
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CategoryActivity;->setTextColor()V

    .line 13
    invoke-direct {p0, v2}, Lcom/nettv/livestore/activities/CategoryActivity;->setCategoryAdapter(I)V

    :cond_81
    :goto_81
    return-void

    :sswitch_data_82
    .sparse-switch
        -0x35fe0189 -> :sswitch_4f
        0x30f4df -> :sswitch_44
        0x32b0ec -> :sswitch_39
        0x6343f30 -> :sswitch_2e
        0x13d01561 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_77
        :pswitch_73
        :pswitch_68
        :pswitch_5d
        :pswitch_68
    .end packed-switch
.end method

.method private synthetic lambda$setCategoryAdapter$0(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2a

    .line 2
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/nettv/livestore/activities/CategoryActivity;->checkAdultCategory(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_18

    .line 3
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CategoryActivity;->showLockDlgFragment(Lcom/nettv/livestore/models/CategoryModel;)V

    goto :goto_30

    .line 4
    :cond_18
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/nettv/livestore/activities/MovieSecondActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "category_pos"

    .line 5
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 6
    iget-object p2, p0, Lcom/nettv/livestore/activities/CategoryActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_30

    .line 7
    :cond_2a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->pre_category_pos:I

    :goto_30
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$setCategoryAdapter$1(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2a

    .line 2
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/nettv/livestore/activities/CategoryActivity;->checkAdultCategory(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_18

    .line 3
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CategoryActivity;->showLockDlgFragment(Lcom/nettv/livestore/models/CategoryModel;)V

    goto :goto_30

    .line 4
    :cond_18
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/nettv/livestore/activities/SeriesSecondActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "category_pos"

    .line 5
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 6
    iget-object p2, p0, Lcom/nettv/livestore/activities/CategoryActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_30

    .line 7
    :cond_2a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->pre_category_pos:I

    :goto_30
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$setCategoryAdapter$2(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 6

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_93

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_1a

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/nettv/livestore/activities/AddGroupActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto/16 :goto_99

    .line 4
    :cond_1a
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/nettv/livestore/activities/CategoryActivity;->checkAdultCategory(Ljava/lang/String;)Z

    move-result p3

    const-string v0, "lock_id"

    const/4 v1, 0x0

    if-nez p3, :cond_67

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_36

    goto :goto_67

    .line 5
    :cond_36
    iget-object p1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceCategoryPos(I)V

    .line 6
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p1

    const-string p2, "is_full"

    if-eqz p1, :cond_57

    .line 7
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/nettv/livestore/activities/LiveChannelActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    iget-object p2, p0, Lcom/nettv/livestore/activities/CategoryActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_99

    .line 10
    :cond_57
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    iget-object p2, p0, Lcom/nettv/livestore/activities/CategoryActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_99

    .line 13
    :cond_67
    :goto_67
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8f

    .line 14
    iget-object p2, p0, Lcom/nettv/livestore/activities/CategoryActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveLockChannels()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_81

    .line 15
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CategoryActivity;->showLockDlgFragment(Lcom/nettv/livestore/models/CategoryModel;)V

    goto :goto_99

    .line 16
    :cond_81
    iget-object p1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getStr_no_lock_channels()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_99

    .line 17
    :cond_8f
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CategoryActivity;->showLockDlgFragment(Lcom/nettv/livestore/models/CategoryModel;)V

    goto :goto_99

    .line 18
    :cond_93
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->pre_category_pos:I

    :goto_99
    const/4 p1, 0x0

    return-object p1
.end method

.method private searchCategoryModel(Ljava/lang/String;)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    iget p1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->category_position:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CategoryActivity;->setCategoryAdapter(I)V

    goto/16 :goto_9a

    .line 3
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    .line 5
    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 7
    :cond_3a
    sget-object p1, Lcom/nettv/livestore/activities/CategoryActivity$7;->$SwitchMap$com$vilhao$player$apps$HomeType:[I

    sget-object v0, Lcom/nettv/livestore/apps/LTVApp;->homeType:Lcom/nettv/livestore/apps/HomeType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_80

    const/4 v0, 0x2

    if-eq p1, v0, :cond_65

    .line 8
    new-instance p1, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v3

    const/4 v4, 0x1

    iget v5, p0, Lcom/nettv/livestore/activities/CategoryActivity;->category_position:I

    new-instance v6, Lcom/nettv/livestore/activities/CategoryActivity$5;

    invoke-direct {v6, p0}, Lcom/nettv/livestore/activities/CategoryActivity$5;-><init>(Lcom/nettv/livestore/activities/CategoryActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZZILkotlin/jvm/functions/Function3;)V

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_9a

    .line 10
    :cond_65
    new-instance p1, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v5

    const/4 v6, 0x0

    new-instance v7, Lcom/nettv/livestore/activities/CategoryActivity$4;

    invoke-direct {v7, p0}, Lcom/nettv/livestore/activities/CategoryActivity$4;-><init>(Lcom/nettv/livestore/activities/CategoryActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZZZLkotlin/jvm/functions/Function3;)V

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_9a

    .line 12
    :cond_80
    new-instance p1, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v5

    const/4 v6, 0x1

    new-instance v7, Lcom/nettv/livestore/activities/CategoryActivity$3;

    invoke-direct {v7, p0}, Lcom/nettv/livestore/activities/CategoryActivity$3;-><init>(Lcom/nettv/livestore/activities/CategoryActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZZZLkotlin/jvm/functions/Function3;)V

    .line 13
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_9a
    return-void
.end method

.method private setCategoryAdapter(I)V
    .registers 12

    .line 1
    sget-object v0, Lcom/nettv/livestore/activities/CategoryActivity$7;->$SwitchMap$com$vilhao$player$apps$HomeType:[I

    sget-object v1, Lcom/nettv/livestore/apps/LTVApp;->homeType:Lcom/nettv/livestore/apps/HomeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_64

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3c

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceInvisibleLiveCategories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/nettv/livestore/apps/Constants;->getLiveGroupModels(Ljava/util/List;Landroid/content/Context;)V

    .line 3
    sget-object v5, Lcom/nettv/livestore/apps/LTVApp;->live_categories_filter:Ljava/util/List;

    iput-object v5, p0, Lcom/nettv/livestore/activities/CategoryActivity;->categoryModels:Ljava/util/List;

    .line 4
    new-instance v0, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

    iget-object v1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v6

    const/4 v7, 0x1

    new-instance v9, Lcom/nettv/livestore/activities/CategoryActivity$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, v2}, Lcom/nettv/livestore/activities/CategoryActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/CategoryActivity;I)V

    move-object v3, v0

    move-object v4, p0

    move v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZZILkotlin/jvm/functions/Function3;)V

    .line 5
    iget-object v1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_8c

    .line 7
    :cond_3c
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceInvisibleSeriesCategories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/nettv/livestore/apps/Constants;->getSeriesGroupModels(Ljava/util/List;Landroid/content/Context;)V

    .line 8
    sget-object v4, Lcom/nettv/livestore/apps/LTVApp;->series_categories_filter:Ljava/util/List;

    iput-object v4, p0, Lcom/nettv/livestore/activities/CategoryActivity;->categoryModels:Ljava/util/List;

    .line 9
    new-instance v0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/nettv/livestore/activities/CategoryActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v7

    const/4 v8, 0x0

    new-instance v9, Lcom/nettv/livestore/activities/CategoryActivity$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, v1}, Lcom/nettv/livestore/activities/CategoryActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/CategoryActivity;I)V

    move-object v2, v0

    move-object v3, p0

    move v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZZZLkotlin/jvm/functions/Function3;)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_8c

    .line 11
    :cond_64
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceInvisibleVodCategories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/nettv/livestore/apps/Constants;->getVodGroupModels(Ljava/util/List;Landroid/content/Context;)V

    .line 12
    sget-object v3, Lcom/nettv/livestore/apps/LTVApp;->vod_categories_filter:Ljava/util/List;

    iput-object v3, p0, Lcom/nettv/livestore/activities/CategoryActivity;->categoryModels:Ljava/util/List;

    .line 13
    new-instance v0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v6

    const/4 v7, 0x1

    new-instance v8, Lcom/nettv/livestore/activities/CategoryActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v8, p0, v1}, Lcom/nettv/livestore/activities/CategoryActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/CategoryActivity;I)V

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZZZLkotlin/jvm/functions/Function3;)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_8c
    return-void
.end method

.method private setFocusTopView(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private setTextColor()V
    .registers 5

    .line 1
    sget-object v0, Lcom/nettv/livestore/activities/CategoryActivity$7;->$SwitchMap$com$vilhao$player$apps$HomeType:[I

    sget-object v1, Lcom/nettv/livestore/apps/LTVApp;->homeType:Lcom/nettv/livestore/apps/HomeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0602f8

    const v3, 0x7f0602f7

    if-eq v0, v1, :cond_6a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_42

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    goto :goto_91

    .line 2
    :cond_1a
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_91

    .line 5
    :cond_42
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_91

    .line 8
    :cond_6a
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_91
    return-void
.end method

.method private showLockDlgFragment(Lcom/nettv/livestore/models/CategoryModel;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_lock"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_15

    const/4 p1, 0x0

    .line 4
    invoke-static {v1, v3, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_15
    iget-object v1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceParentPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->newInstance(Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/CategoryActivity$6;

    invoke-direct {v3, p0, p1}, Lcom/nettv/livestore/activities/CategoryActivity$6;-><init>(Lcom/nettv/livestore/activities/CategoryActivity;Lcom/nettv/livestore/models/CategoryModel;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->setOnPinEventListener(Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_77

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_74

    const/16 v1, 0x13

    const/4 v2, 0x1

    if-eq v0, v1, :cond_49

    const/16 v1, 0x14

    if-eq v0, v1, :cond_17

    goto :goto_77

    .line 3
    :cond_17
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_77

    :cond_3f
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CategoryActivity;->setFocusTopView(Z)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 6
    :cond_49
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_5f

    iget v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->pre_category_pos:I

    if-ge v0, v1, :cond_5f

    .line 7
    invoke-direct {p0, v2}, Lcom/nettv/livestore/activities/CategoryActivity;->setFocusTopView(Z)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 9
    :cond_5f
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_77

    iget v0, p0, Lcom/nettv/livestore/activities/CategoryActivity;->pre_category_pos:I

    if-ne v0, v1, :cond_77

    .line 10
    invoke-direct {p0, v2}, Lcom/nettv/livestore/activities/CategoryActivity;->setFocusTopView(Z)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 12
    :cond_74
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    :cond_77
    :goto_77
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const-string v1, ""

    sparse-switch p1, :sswitch_data_40

    goto :goto_3e

    .line 2
    :sswitch_b
    sget-object p1, Lcom/nettv/livestore/apps/HomeType;->series:Lcom/nettv/livestore/apps/HomeType;

    sput-object p1, Lcom/nettv/livestore/apps/LTVApp;->homeType:Lcom/nettv/livestore/apps/HomeType;

    .line 3
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CategoryActivity;->setTextColor()V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/CategoryActivity;->setCategoryAdapter(I)V

    goto :goto_3e

    .line 6
    :sswitch_1b
    sget-object p1, Lcom/nettv/livestore/apps/HomeType;->movies:Lcom/nettv/livestore/apps/HomeType;

    sput-object p1, Lcom/nettv/livestore/apps/LTVApp;->homeType:Lcom/nettv/livestore/apps/HomeType;

    .line 7
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CategoryActivity;->setTextColor()V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/CategoryActivity;->setCategoryAdapter(I)V

    goto :goto_3e

    .line 10
    :sswitch_2b
    sget-object p1, Lcom/nettv/livestore/apps/HomeType;->live:Lcom/nettv/livestore/apps/HomeType;

    sput-object p1, Lcom/nettv/livestore/apps/LTVApp;->homeType:Lcom/nettv/livestore/apps/HomeType;

    .line 11
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CategoryActivity;->setTextColor()V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/CategoryActivity;->setCategoryAdapter(I)V

    goto :goto_3e

    .line 14
    :sswitch_3b
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_3e
    return-void

    nop

    :sswitch_data_40
    .sparse-switch
        0x7f0b03d9 -> :sswitch_3b
        0x7f0b03dc -> :sswitch_2b
        0x7f0b03e2 -> :sswitch_1b
        0x7f0b03f7 -> :sswitch_b
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e001f

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    new-instance p1, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p1, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 5
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CategoryActivity;->initView()V

    .line 7
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CategoryActivity;->setFocusTopView(Z)V

    .line 9
    :cond_26
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CategoryActivity;->setTextColor()V

    .line 10
    iget p1, p0, Lcom/nettv/livestore/activities/CategoryActivity;->category_position:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CategoryActivity;->setCategoryAdapter(I)V

    return-void
.end method
