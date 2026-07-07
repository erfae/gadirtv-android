.class Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView$1;
.super Ljava/lang/Object;
.source "CharacterCardView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;


# direct methods
.method constructor <init>(Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;)V
    .locals 0

    .line 35
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView$1;->this$0:Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 38
    iget-object p1, p0, Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView$1;->this$0:Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;

    sget v0, Landroidx/leanback/supportleanbackshowcase/R$id;->main_image:I

    invoke-virtual {p1, v0}, Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 39
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView$1;->this$0:Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;

    sget v1, Landroidx/leanback/supportleanbackshowcase/R$id;->container:I

    invoke-virtual {v0, v1}, Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 41
    sget p2, Landroidx/leanback/supportleanbackshowcase/R$drawable;->character_focused:I

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 42
    sget p2, Landroidx/leanback/supportleanbackshowcase/R$drawable;->character_focused:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 44
    :cond_0
    sget p2, Landroidx/leanback/supportleanbackshowcase/R$drawable;->character_not_focused_padding:I

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    sget p2, Landroidx/leanback/supportleanbackshowcase/R$drawable;->character_not_focused:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
