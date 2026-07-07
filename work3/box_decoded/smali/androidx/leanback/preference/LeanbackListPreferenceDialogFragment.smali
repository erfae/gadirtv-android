.class public Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;
.super Landroidx/leanback/preference/LeanbackPreferenceDialogFragment;
.source "LeanbackListPreferenceDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment$ViewHolder;,
        Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;,
        Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;
    }
.end annotation


# static fields
.field private static final SAVE_STATE_ENTRIES:Ljava/lang/String; = "LeanbackListPreferenceDialogFragment.entries"

.field private static final SAVE_STATE_ENTRY_VALUES:Ljava/lang/String; = "LeanbackListPreferenceDialogFragment.entryValues"

.field private static final SAVE_STATE_INITIAL_SELECTION:Ljava/lang/String; = "LeanbackListPreferenceDialogFragment.initialSelection"

.field private static final SAVE_STATE_INITIAL_SELECTIONS:Ljava/lang/String; = "LeanbackListPreferenceDialogFragment.initialSelections"

.field private static final SAVE_STATE_IS_MULTI:Ljava/lang/String; = "LeanbackListPreferenceDialogFragment.isMulti"

.field private static final SAVE_STATE_MESSAGE:Ljava/lang/String; = "LeanbackListPreferenceDialogFragment.message"

.field private static final SAVE_STATE_TITLE:Ljava/lang/String; = "LeanbackListPreferenceDialogFragment.title"


# instance fields
.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mInitialSelection:Ljava/lang/String;

.field mInitialSelections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMulti:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/leanback/preference/LeanbackPreferenceDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstanceMulti(Ljava/lang/String;)Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;
    .locals 2

    .line 74
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "key"

    .line 75
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;

    invoke-direct {p0}, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;-><init>()V

    .line 79
    invoke-virtual {p0, v0}, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstanceSingle(Ljava/lang/String;)Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;
    .locals 2

    .line 63
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "key"

    .line 64
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;

    invoke-direct {p0}, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;-><init>()V

    .line 68
    invoke-virtual {p0, v0}, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Landroidx/leanback/preference/LeanbackPreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 89
    invoke-virtual {p0}, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    .line 91
    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    .line 93
    instance-of v1, p1, Landroidx/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 94
    iput-boolean v0, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mMulti:Z

    .line 95
    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 96
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 97
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mInitialSelection:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_0
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mMulti:Z

    .line 100
    check-cast p1, Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 101
    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 102
    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mInitialSelections:Ljava/util/Set;

    goto :goto_0

    .line 104
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Preference must be a ListPreference or MultiSelectListPreference"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string v1, "LeanbackListPreferenceDialogFragment.title"

    .line 108
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    const-string v1, "LeanbackListPreferenceDialogFragment.message"

    .line 109
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    const-string v1, "LeanbackListPreferenceDialogFragment.isMulti"

    .line 110
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mMulti:Z

    const-string v1, "LeanbackListPreferenceDialogFragment.entries"

    .line 111
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    const-string v1, "LeanbackListPreferenceDialogFragment.entryValues"

    .line 112
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 113
    iget-boolean v1, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mMulti:Z

    if-eqz v1, :cond_4

    const-string v1, "LeanbackListPreferenceDialogFragment.initialSelections"

    .line 114
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 116
    new-instance v1, Landroidx/collection/ArraySet;

    if-eqz p1, :cond_3

    array-length v0, p1

    :cond_3
    invoke-direct {v1, v0}, Landroidx/collection/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mInitialSelections:Ljava/util/Set;

    if-eqz p1, :cond_5

    .line 119
    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v0, "LeanbackListPreferenceDialogFragment.initialSelection"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mInitialSelection:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreateAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 4

    .line 174
    iget-boolean v0, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mMulti:Z

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;

    iget-object v1, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    iget-object v2, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object v3, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mInitialSelections:Ljava/util/Set;

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;-><init>(Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/util/Set;)V

    return-object v0

    .line 177
    :cond_0
    new-instance v0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;

    iget-object v1, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    iget-object v2, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object v3, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mInitialSelection:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;-><init>(Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 146
    sget p3, Landroidx/leanback/preference/R$layout;->leanback_list_preference_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x102000a

    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/VerticalGridView;

    const/4 p3, 0x3

    .line 151
    invoke-virtual {p2, p3}, Landroidx/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 152
    invoke-virtual {p2, v0}, Landroidx/leanback/widget/VerticalGridView;->setFocusScrollStrategy(I)V

    .line 153
    invoke-virtual {p0}, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->onCreateAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/leanback/widget/VerticalGridView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 154
    invoke-virtual {p2}, Landroidx/leanback/widget/VerticalGridView;->requestFocus()Z

    .line 156
    iget-object p2, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    .line 157
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 158
    sget p3, Landroidx/leanback/preference/R$id;->decor_title:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 159
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_0
    iget-object p2, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    .line 163
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    const p3, 0x102000b

    .line 164
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 165
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 129
    invoke-super {p0, p1}, Landroidx/leanback/preference/LeanbackPreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 130
    iget-object v0, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    const-string v1, "LeanbackListPreferenceDialogFragment.title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    const-string v1, "LeanbackListPreferenceDialogFragment.message"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 132
    iget-boolean v0, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mMulti:Z

    const-string v1, "LeanbackListPreferenceDialogFragment.isMulti"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    iget-object v0, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    const-string v1, "LeanbackListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    const-string v1, "LeanbackListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 135
    iget-boolean v0, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mMulti:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mInitialSelections:Ljava/util/Set;

    .line 137
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v1, "LeanbackListPreferenceDialogFragment.initialSelections"

    .line 136
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Landroidx/leanback/preference/LeanbackListPreferenceDialogFragment;->mInitialSelection:Ljava/lang/String;

    const-string v1, "LeanbackListPreferenceDialogFragment.initialSelection"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
