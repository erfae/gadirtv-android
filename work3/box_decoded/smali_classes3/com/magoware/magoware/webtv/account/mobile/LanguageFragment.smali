.class public Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;
.super Landroidx/fragment/app/Fragment;
.source "LanguageFragment.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/account/adapter/OnLanguageChangeListener;


# instance fields
.field account_language_recycler:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0048
    .end annotation
.end field

.field account_save_language:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0060
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private languageAdapter:Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;

.field private listener:Lcom/magoware/magoware/webtv/account/adapter/OnLanguageChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;
    .locals 1

    .line 41
    new-instance v0, Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$onCreateView$0$LanguageFragment(Landroid/view/View;)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;->languageAdapter:Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->setLocale(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    .line 64
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 72
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 73
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;->context:Landroid/content/Context;

    return-void
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

    .line 46
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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

    const p3, 0x7f0e00c2

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 53
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 55
    iget-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;->account_language_recycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;->context:Landroid/content/Context;

    invoke-direct {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 56
    iget-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;->account_language_recycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/DividerItemDecoration;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {p3, v1, v2}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 58
    new-instance p2, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;

    iget-object p3, p0, Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;->context:Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p3, v1, p0, v0}, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/magoware/magoware/webtv/account/adapter/OnLanguageChangeListener;Z)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;->languageAdapter:Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;

    .line 60
    iget-object p3, p0, Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;->account_language_recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 62
    iget-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;->account_save_language:Landroid/widget/Button;

    new-instance p3, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$LanguageFragment$Arl0AqMu7tw0CSHH43-vvfcvVQs;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$LanguageFragment$Arl0AqMu7tw0CSHH43-vvfcvVQs;-><init>(Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onLanguageChanged()V
    .locals 0

    return-void
.end method
