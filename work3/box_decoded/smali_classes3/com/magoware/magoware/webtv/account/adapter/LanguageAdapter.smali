.class public Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LanguageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private current_language:Ljava/lang/String;

.field private final languages:[Ljava/lang/String;

.field private final listener:Lcom/magoware/magoware/webtv/account/adapter/OnLanguageChangeListener;

.field private final mContext:Landroid/content/Context;

.field private final shouldUpdateAutomatically:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lcom/magoware/magoware/webtv/account/adapter/OnLanguageChangeListener;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "languages",
            "listener",
            "shouldUpdateAutomatically"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->languages:[Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->listener:Lcom/magoware/magoware/webtv/account/adapter/OnLanguageChangeListener;

    .line 31
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->current_language:Ljava/lang/String;

    .line 32
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->shouldUpdateAutomatically:Ljava/lang/Boolean;

    return-void
.end method

.method private chooseLanguage(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "language"
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "english"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "en"

    .line 86
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->current_language:Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "albanian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "sq"

    .line 88
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->current_language:Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spanish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "es"

    .line 90
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->current_language:Ljava/lang/String;

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "italian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "it"

    .line 92
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->current_language:Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "portuguese"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "pt"

    .line 94
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->current_language:Ljava/lang/String;

    .line 96
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->shouldUpdateAutomatically:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 97
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->current_language:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->setLocale(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    .line 99
    :cond_5
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->listener:Lcom/magoware/magoware/webtv/account/adapter/OnLanguageChangeListener;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/account/adapter/OnLanguageChangeListener;->onLanguageChanged()V

    :cond_6
    return-void
.end method

.method private isSelected(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "language"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->shouldUpdateAutomatically:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "sq"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v2, "pt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "it"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "es"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    return v3

    .line 108
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "albanian"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 114
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "portuguese"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 112
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "italian"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 110
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "spanish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 106
    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "english"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0xca9 -> :sswitch_4
        0xcae -> :sswitch_3
        0xd2b -> :sswitch_2
        0xe04 -> :sswitch_1
        0xe5e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCurrentLanguage()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->current_language:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->languages:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$LanguageAdapter(ILandroid/view/View;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->languages:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->chooseLanguage(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->notifyDataSetChanged()V

    .line 61
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->shouldUpdateAutomatically:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f140204

    const/4 v0, 0x0

    .line 62
    invoke-static {p2, p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "viewHolder",
            "i"
        }
    .end annotation

    .line 19
    check-cast p1, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "i"
        }
    .end annotation

    .line 50
    iget-object v0, p1, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter$ViewHolder;->account_language:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->languages:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->languages:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->isSelected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p1, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter$ViewHolder;->account_language_checked:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p1, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter$ViewHolder;->account_language_checked:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    :goto_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter$ViewHolder;->account_language_constraint:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/magoware/magoware/webtv/account/adapter/-$$Lambda$LanguageAdapter$zSZdToBjQWkTgbx7z0_vphk0rCo;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/account/adapter/-$$Lambda$LanguageAdapter$zSZdToBjQWkTgbx7z0_vphk0rCo;-><init>(Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "viewGroup",
            "i"
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewGroup",
            "i"
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e001d

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    new-instance p2, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter$ViewHolder;-><init>(Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;Landroid/view/View;)V

    return-object p2
.end method
