.class Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter$1;
.super Ljava/lang/Object;
.source "SettingsIconPresenter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter;->onCreateView()Landroidx/leanback/widget/ImageCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter;

.field final synthetic val$imageCardView:Landroidx/leanback/widget/ImageCardView;


# direct methods
.method constructor <init>(Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter;Landroidx/leanback/widget/ImageCardView;)V
    .locals 0

    .line 35
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter$1;->this$0:Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter;

    iput-object p2, p0, Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter$1;->val$imageCardView:Landroidx/leanback/widget/ImageCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 39
    iget-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter$1;->this$0:Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter;

    iget-object p2, p0, Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter$1;->val$imageCardView:Landroidx/leanback/widget/ImageCardView;

    sget v0, Landroidx/leanback/supportleanbackshowcase/R$color;->settings_card_background_focussed:I

    invoke-static {p1, p2, v0}, Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter;->access$000(Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter;Landroidx/leanback/widget/ImageCardView;I)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter$1;->this$0:Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter;

    iget-object p2, p0, Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter$1;->val$imageCardView:Landroidx/leanback/widget/ImageCardView;

    sget v0, Landroidx/leanback/supportleanbackshowcase/R$color;->settings_card_background:I

    invoke-static {p1, p2, v0}, Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter;->access$000(Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter;Landroidx/leanback/widget/ImageCardView;I)V

    :goto_0
    return-void
.end method
