.class public Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LanguageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field account_language:Landroid/widget/TextView;

.field account_language_checked:Landroid/widget/ImageView;

.field account_language_constraint:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter$ViewHolder;->this$0:Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter;

    .line 77
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b0047

    .line 78
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter$ViewHolder;->account_language_constraint:Landroid/widget/LinearLayout;

    const p1, 0x7f0b0045

    .line 79
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter$ViewHolder;->account_language:Landroid/widget/TextView;

    const p1, 0x7f0b0046

    .line 80
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/LanguageAdapter$ViewHolder;->account_language_checked:Landroid/widget/ImageView;

    return-void
.end method
