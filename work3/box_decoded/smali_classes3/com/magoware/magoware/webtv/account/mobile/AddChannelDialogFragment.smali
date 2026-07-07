.class public Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AddChannelDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment$AddChannelDialogListener;
    }
.end annotation


# instance fields
.field private cat:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field private catString:[Ljava/lang/String;

.field private category:Landroid/widget/Spinner;

.field private category_adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private description:Landroid/widget/EditText;

.field private name:Landroid/widget/EditText;

.field private stream:Landroid/widget/EditText;

.field private submitBtn:Landroid/widget/Button;

.field private thisActivity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;
    .locals 2

    .line 46
    new-instance v0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;-><init>()V

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$onViewCreated$0$AddChannelDialogFragment(Landroid/view/View;)V
    .locals 2

    .line 118
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->name:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->stream:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->sendBackResult()V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f140371

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
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

    .line 55
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iput-object p3, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    const p3, 0x7f0e0047

    .line 56
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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

    .line 61
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    invoke-static {}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllCategoriesObjects()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->cat:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const v0, 0x7f14005a

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 68
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060006

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const p2, 0x7f0b00ae

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->name:Landroid/widget/EditText;

    const p2, 0x7f0b00ac

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->description:Landroid/widget/EditText;

    const p2, 0x7f0b00ad

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->stream:Landroid/widget/EditText;

    const p2, 0x7f0b00aa

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->submitBtn:Landroid/widget/Button;

    const p2, 0x7f0b00ab

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->category:Landroid/widget/Spinner;

    .line 77
    invoke-static {}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllCategoriesObjects()Ljava/util/ArrayList;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->catString:[Ljava/lang/String;

    const/4 p2, 0x0

    .line 79
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->catString:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->name:Ljava/lang/String;

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment$1;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    const v0, 0x1090008

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->catString:[Ljava/lang/String;

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment$1;-><init>(Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->category_adapter:Landroid/widget/ArrayAdapter;

    const p2, 0x1090009

    .line 113
    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 114
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->category:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->category_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 117
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->submitBtn:Landroid/widget/Button;

    new-instance p2, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$AddChannelDialogFragment$gFN_TwYPL4yIbyCpjP523VfqaDc;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$AddChannelDialogFragment$gFN_TwYPL4yIbyCpjP523VfqaDc;-><init>(Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public sendBackResult()V
    .locals 6

    .line 126
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment$AddChannelDialogListener;

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 128
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->description:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "description"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->stream:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "stream"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "icon_url"

    const-string v3, ""

    .line 131
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->category:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->cat:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment;->category:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget v4, v4, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const-string v3, "genre_id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-interface {v0, v1}, Lcom/magoware/magoware/webtv/account/mobile/AddChannelDialogFragment$AddChannelDialogListener;->onFinishAddChannel(Ljava/util/HashMap;)V

    return-void
.end method
