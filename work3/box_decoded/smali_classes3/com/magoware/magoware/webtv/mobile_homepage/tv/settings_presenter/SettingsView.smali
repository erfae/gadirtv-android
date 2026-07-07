.class public Lcom/magoware/magoware/webtv/mobile_homepage/tv/settings_presenter/SettingsView;
.super Lcom/magoware/magoware/webtv/vod/bigscreen/ui/base/BindableCardView;
.source "SettingsView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/magoware/magoware/webtv/vod/bigscreen/ui/base/BindableCardView<",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field setting:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b05ac
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/base/BindableCardView;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/settings_presenter/SettingsView;->context:Landroid/content/Context;

    .line 27
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method private getColoredText(Ljava/lang/String;I)Landroid/text/SpannableString;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "colorID"
        }
    .end annotation

    .line 44
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/settings_presenter/SettingsView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x0

    const/16 v2, 0x12

    .line 45
    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/settings_presenter/SettingsView;->context:Landroid/content/Context;

    const v2, 0x7f140255

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/settings_presenter/SettingsView;->setting:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f060087

    invoke-direct {p0, p1, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/settings_presenter/SettingsView;->getColoredText(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/settings_presenter/SettingsView;->context:Landroid/content/Context;

    const v2, 0x7f14024d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/settings_presenter/SettingsView;->setting:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f06014a

    invoke-direct {p0, p1, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/settings_presenter/SettingsView;->getColoredText(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/settings_presenter/SettingsView;->setting:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0601fc

    invoke-direct {p0, p1, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/settings_presenter/SettingsView;->getColoredText(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "data"
        }
    .end annotation

    .line 17
    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/settings_presenter/SettingsView;->bind(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    const v0, 0x7f0e0055

    return v0
.end method
